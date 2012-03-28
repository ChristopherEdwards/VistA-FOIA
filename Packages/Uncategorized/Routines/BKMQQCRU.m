BKMQQCRU ;VNGT/HS/ALA-QOC Utility Program ; 22 Mar 2010  9:28 AM
 ;;2.1;HIV MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
ACTWRK ; Active from HMS Register Search
 N ENDDT,GLOBX,REGDFN,VSTDT,HIVDT,AIDDT
 N EXEC,IENS,BKMPATN,OK,DXCAT,STAT
 N TREF,TAX,TRIEN,DXOK,TIEN,IEN,VISIT,VSDTM
 ;
 S ENDDT=$$FMADD^XLFDT(EDATE,-183)
 S GLOBX=$NA(^TMP("BKMQQCRX",UID))
 K @GLOBX
 ;
 ; Denominator:
 ;     Patients with Proposed or Accepted tag status
 ;     with an HMS register status of active or blank (not in register)
 ;S TREF=$NA(^TMP("BQITAX",UID)) K @TREF
 S TREF="BQITAX"
 S TAX="BGP HIV/AIDS DXS"
 D BLD^BQITUTL(TAX,TREF)
 ;
 S REGDFN=0
 F  S REGDFN=$O(@GLOB@("HIVCHK",REGDFN)) Q:REGDFN=""  D
 . ;
 . S IENS=$$HMSIENS^BKMQUTL(REGDFN)
 . ;
 . ; Selected active HMS Register patients
 . I $G(BKMRPOP)="R" S OK=1 D  Q:'OK
 .. I IENS="" S OK=0 Q
 .. S STAT=$$GET1^DIQ(90451.01,IENS,.5,"I") I STAT'="A",STAT'="T" S OK=0 Q
 .. S DXCAT=$$GET1^DIQ(90451.01,IENS,2.3,"I")
 .. ; Diagnosis category of "A", "H" or blank (At Risk is excluded)
 .. I DXCAT="A"!(DXCAT="H")!(DXCAT="") Q
 .. ;I "AH"[DXCAT Q
 .. S OK=0 Q
 . ;
 . ; Selected active HIV/AIDS tag option.
 . ; Check if current status matches selected status.
 . I $G(BKMRPOP)="D",'$$ACT^BKMQUTL(REGDFN,HMSIEN,BKMTAG) Q
 . ;
 . ; Exclude if initial diagnosis was within 6 months of end date
 . ; find latest date of fields 5 and 5.5
 . S VSTDT=""
 . S HIVDT=$$GET1^DIQ(90451.01,IENS,5.5,"I")
 . I HIVDT'="",HIVDT<VSTDT!(VSTDT="") S VSTDT=HIVDT
 . S AIDDT=$$GET1^DIQ(90451.01,IENS,5,"I")
 . I AIDDT'="",AIDDT<VSTDT!(VSTDT="") S VSTDT=AIDDT
 . ;
 . ; If initial HIV or AIDS dx date check fails look for HIV/AIDS POV or Active Problem List
 . I VSTDT>ENDDT!(VSTDT="") S DXOK=0 D  I 'DXOK S BKMPATN=$$GET1^DIQ(2,REGDFN,".01","E"),NDA(BKMPATN,REGDFN)="",NDA=$G(NDA)+1 Q
 .. ;
 .. ; At least 1 HIV/AIDS POV or active problem list 6 months or more prior to report end date
 .. ;
 .. S TRIEN=0,DXOK=0
 .. F  S TRIEN=$O(@TREF@(TRIEN)) Q:'TRIEN  I $$PRB(REGDFN,ENDDT) S DXOK=1 Q
 .. Q:DXOK
 .. ;
 .. N TIEN,VDATA,PDATA
 .. S IEN=""
 .. F  S IEN=$O(^AUPNVPOV("AC",REGDFN,IEN),-1) Q:IEN=""  D  Q:DXOK
 ... S PDATA=$G(^AUPNVPOV(IEN,0)) I PDATA="" Q
 ... ;S TIEN=$$GET1^DIQ(9000010.07,IEN,.01,"I") I TIEN="" Q
 ... S TIEN=$P(PDATA,U,1) I TIEN="" Q
 ... I '$D(@TREF@(TIEN)) Q
 ... S VISIT=$P(PDATA,U,3) I VISIT="" Q
 ... S VDATA=$G(^AUPNVSIT(VISIT,0)) I VDATA="" Q
 ... ;S VISIT=$$GET1^DIQ(9000010.07,IEN,.03,"I") I VISIT="" Q
 ... I $P(VDATA,U,11)=1 Q
 ... ;I $$GET1^DIQ(9000010,VISIT,.11,"I")=1 Q
 ... S VSDTM=$P(VDATA,U,1)\1 I VSDTM=0 Q
 ... ;S VSDTM=$$GET1^DIQ(9000010,VISIT,.01,"I")\1 I VSDTM=0 Q
 ... I VSDTM<ENDDT S DXOK=1 Q
 . S @GLOBX@("HIVCHK",REGDFN)=""
 K @GLOB@("HIVCHK")
 M @GLOB@("HIVCHK")=@GLOBX@("HIVCHK")
 K @GLOBX@("HIVCHK"),@TREF
 Q
 ;
PRB(DFN,DATE) ;EP - Check Problem File for instance of a patient
 NEW PROB,PVIEN,VSDTM,OK,PBDATA
 S PROB=0,OK=0
 S PVIEN=""
 F  S PVIEN=$O(^AUPNPROB("AC",DFN,PVIEN),-1) Q:'PVIEN  D  Q:OK
 . S PBDATA=$G(^AUPNPROB(PVIEN,0)) I PBDATA="" Q
 . S TIEN=$P(PBDATA,U,1) I TIEN="" Q
 . ;S TIEN=$$GET1^DIQ(9000011,PVIEN,.01,"I") I TIEN="" Q
 . I '$D(@TREF@(TIEN)) Q
 . ;  Check class - if Family ignore
 . I $P(PBDATA,U,4)="F" Q
 . I $P(PBDATA,U,12)'="A" Q
 . ;I $$GET1^DIQ(9000011,PVIEN,.04,"I")="F" Q
 . ;I $$GET1^DIQ(9000011,PVIEN,.12,"I")'="A" Q
 . S VSDTM=$$PROB^BQIUL1(PVIEN)\1 I VSDTM=0 Q
 . I VSDTM<DATE S OK=1 Q
 Q OK
 ;
ASTAT(BKMDFN,RPTDT,STAT,REG) ;EP -- ARV Status and Regimen
 ; Input
 ;   BKMDFN - Patient IEN
 ;   RPTDT  - Report Date
 ;   STAT   - ARV Status
 ;   REG    - ARV Regimen
 ; Description
 ;   Returns a result if the patient has the ARV status in the Report Period
 NEW QFL,STDT,IEN,RESULT,BKMIEN,BKMREG,REVPER
 S REVPER=$$FMADD^XLFDT(RPTDT,-365),STAT=$G(STAT,""),REG=$G(REG,"")
 S STDT=RPTDT+.005
 S BKMIEN=$$BKMIEN^BKMIXX3(BKMDFN) I BKMIEN="" Q 0
 S BKMREG=$$BKMREG^BKMIXX3(BKMIEN)
 S RESULT=0,QFL=0
 F  S STDT=$O(^BKM(90451,BKMIEN,1,BKMREG,45,"B",STDT),-1) Q:STDT=""!(STDT<REVPER)  D  Q:QFL
 . S IEN=""
 . F  S IEN=$O(^BKM(90451,BKMIEN,1,BKMREG,45,"B",STDT,IEN),-1) Q:IEN=""  D  Q:QFL
 .. I $G(STAT)'="",$P(^BKM(90451,BKMIEN,1,BKMREG,45,IEN,0),U,2)'=STAT Q
 .. I $G(REG)'="",$P(^BKM(90451,BKMIEN,1,BKMREG,45,IEN,0),U,3)'=REG Q
 .. S RESULT=1_U_STDT_U_STAT_U_REG,QFL=1
 Q RESULT
 ;
LAB(BKMDFN,SDATE,ALL) ;
 K ALL
 ;S ENDATE=$$FMADD^XLFDT(SDATE,-56)
 S ENDATE=SDATE
 S BEGDATE=$$FMADD^XLFDT(SDATE,56)
 S HREV=$$FMTH^XLFDT(BEGDATE,1),HEND=$$FMTH^XLFDT(ENDATE,1)
 S TREF=$NA(^TMP("BQITAX",UID)) K @TREF
 S CD4="BKMCD4" K @CD4
 F TAX="BKM CD4 ABS TESTS TAX","BKMV CD4 ABS LOINC CODES"  D BLD^BQITUTL(TAX,CD4)
 M @TREF=@CD4
 ;
 S VIRAL="BKMVIR" K @VIRAL
 F TAX="BGP HIV VIRAL LOAD TAX","BGP VIRAL LOAD LOINC CODES" D BLD^BQITUTL(TAX,VIRAL)
 M @TREF=@VIRAL
 ;
 S IEN=""
 F  S IEN=$O(^AUPNVLAB("AC",BKMDFN,IEN),-1) Q:IEN=""  D
 . S PDATA=$G(^AUPNVLAB(IEN,0)) I PDATA="" Q
 . S TIEN=$P(PDATA,U,1) I TIEN="" Q
 . I '$D(@TREF@(TIEN)) Q
 . S VISIT=$P(PDATA,U,3) I VISIT="" Q
 . S VDATA=$G(^AUPNVSIT(VISIT,0)) I VDATA="" Q
 . I $P(VDATA,U,11)=1 Q
 . S VSDTM=$P(VDATA,U,1)\1 I VSDTM=0 Q
 . ; Get collection date/time
 . S COLDTM=$P($G(^AUPNVLAB(IEN,12)),U,1)\1
 . I COLDTM'=0 S VSDTM=COLDTM
 . S RESULT=$P(PDATA,U,4)
 . S HSDTM=$$FMTH^XLFDT(VSDTM,1)
 . I HSDTM>HREV!(HSDTM<HEND) Q
 . I $D(@CD4@(TIEN)) S ALL("ZLAB","CD4",VSDTM,IEN)=RESULT
 . I $D(@VIRAL@(TIEN)) S ALL("ZLAB","VIRAL",VSDTM,IEN)=RESULT
 Q
 ;
LB(ALL) ;
 NEW COLDTM
 I $G(UID)="" S UID=$J
 S REVPER=$$FMADD^XLFDT(RPTDT,-365)
 S P1B=$$FMADD^XLFDT(RPTDT,-120),P1E=RPTDT
 S P2B=$$FMADD^XLFDT(RPTDT,-121),P2E=$$FMADD^XLFDT(RPTDT,-240)
 S P3B=$$FMADD^XLFDT(RPTDT,-241),P3E=REVPER
 S TREF=$NA(^TMP("BQITAX",UID)) K @TREF
 S CD4="BKMCD4" K @CD4
 F TAX="BKM CD4 ABS TESTS TAX","BKMV CD4 ABS LOINC CODES"  D BLD^BQITUTL(TAX,CD4)
 S TIEN=""
 F  S TIEN=$O(@CD4@(TIEN)) Q:TIEN=""  D
 . S IEN=""
 . F  S IEN=$O(^AUPNVLAB("B",TIEN,IEN)) Q:IEN=""  D
 .. S DFN=$P($G(^AUPNVLAB(IEN,0)),U,2) I DFN="" Q
 .. S VISIT=$P($G(^AUPNVLAB(IEN,0)),U,3) I VISIT="" Q
 .. S VSDTM=$P($G(^AUPNVSIT(VISIT,0)),U,1)\1 I +VSDTM=0 Q
 .. S COLDTM=$P($G(^AUPNVLAB(IEN,12)),U,1)\1
 .. I COLDTM'=0 S VSDTM=COLDTM
 .. S RESULT=$P(^AUPNVLAB(IEN,0),U,4) I RESULT="" Q
 .. I RESULT?.AP Q
 .. I VSDTM<REVPER!(VSDTM>RPTDT) Q
 .. ;S ALL("ZLAB","CD4",DFN,VSDTM,IEN)=RESULT
 .. I VSDTM'<P1B,VSDTM'>P1E S ALL("CD4",DFN,VSDTM,IEN)=RESULT_U_"P1"
 .. I VSDTM'>P2B,VSDTM'<P2E S ALL("CD4",DFN,VSDTM,IEN)=RESULT_U_"P2"
 .. I VSDTM'>P3B,VSDTM'<P3E S ALL("CD4",DFN,VSDTM,IEN)=RESULT_U_"P3"
 K @CD4
 ;
 S VIRAL="BKMVIR" K @VIRAL
 F TAX="BGP HIV VIRAL LOAD TAX","BGP VIRAL LOAD LOINC CODES" D BLD^BQITUTL(TAX,VIRAL)
 S TIEN=""
 F  S TIEN=$O(@VIRAL@(TIEN)) Q:TIEN=""  D
 . S IEN=""
 . F  S IEN=$O(^AUPNVLAB("B",TIEN,IEN)) Q:IEN=""  D
 .. S DFN=$P($G(^AUPNVLAB(IEN,0)),U,2) I DFN="" Q
 .. S VISIT=$P($G(^AUPNVLAB(IEN,0)),U,3) I VISIT="" Q
 .. S VSDTM=$P($G(^AUPNVSIT(VISIT,0)),U,1)\1 I +VSDTM=0 Q
 .. S COLDTM=$P($G(^AUPNVLAB(IEN,12)),U,1)\1
 .. I COLDTM'=0 S VSDTM=COLDTM
 .. S RESULT=$P(^AUPNVLAB(IEN,0),U,4) I RESULT="" Q
 .. I RESULT?.AP Q
 .. I VSDTM<REVPER!(VSDTM>RPTDT) Q
 .. ;S ALL("ZLAB","VIRAL",DFN,VSDTM,IEN)=RESULT
 .. I VSDTM'<P1B,VSDTM'>P1E S ALL("VIRAL",DFN,VSDTM,IEN)=RESULT_U_"P1"
 .. I VSDTM'>P2B,VSDTM'<P2E S ALL("VIRAL",DFN,VSDTM,IEN)=RESULT_U_"P2"
 .. I VSDTM'>P3B,VSDTM'<P3E S ALL("VIRAL",DFN,VSDTM,IEN)=RESULT_U_"P3"
 K @VIRAL
 Q
 ;
DTR(RPTDT) ;EP - Get all date ranges from a report end date
 S REVPER=$$FMADD^XLFDT(RPTDT,-365)
 ;S P1B=$$FMADD^XLFDT(RPTDT,-120),P1E=RPTDT
 S P1B=RPTDT,P1E=$$FMADD^XLFDT(RPTDT,-120)
 S HP1B=$$FMTH^XLFDT(P1B,1),HP1E=$$FMTH^XLFDT(P1E,1)
 S P2B=$$FMADD^XLFDT(RPTDT,-121),P2E=$$FMADD^XLFDT(RPTDT,-240)
 S HP2B=$$FMTH^XLFDT(P2B,1),HP2E=$$FMTH^XLFDT(P2E,1)
 S P3B=$$FMADD^XLFDT(RPTDT,-241),P3E=REVPER
 S HP3B=$$FMTH^XLFDT(P3B,1),HP3E=$$FMTH^XLFDT(P3E,1)
 ;S P61B=$$FMADD^XLFDT(RPTDT,-181),P61E=RPTDT
 S P61B=RPTDT,P61E=$$FMADD^XLFDT(RPTDT,-181)
 S HP61B=$$FMTH^XLFDT(P61B,1),HP61E=$$FMTH^XLFDT(P61E,1)
 S P62B=$$FMADD^XLFDT(RPTDT,-182),P62E=REVPER
 S HP62B=$$FMTH^XLFDT(P62B,1),HP62E=$$FMTH^XLFDT(P62E,1)
 Q
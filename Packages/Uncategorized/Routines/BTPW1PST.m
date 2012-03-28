BTPW1PST ;VNGT/HS/ALA-Post Installation for CMET ; 24 Apr 2008  7:46 PM
 ;;1.0;CARE MANAGEMENT EVENT TRACKING;;Feb 07, 2011
 ;
EN ; Set up Site Parameters
 NEW BHM,BHOME
 I $G(U)="" D DT^DICRW
 S BHM=$O(^BQI(90508,0))
 I BHM'="" S BHOME=$P($G(^BQI(90508,BHM,0)),U,1)
 I $G(BHOME)="" S BHOME=$P($G(^XTV(8989.3,1,"XUS")),U,17)
 S BTPWDA=1,$P(^BTPW(90628,BTPWDA,0),U,1)=BHOME,^BTPW(90628,"B",BHOME,1)=""
 ;S BTPWUPD(90628,BTPWDA_",",.01)=BHOME
 ; Clear out and set up default fields
 NEW FLD,PC
 F FLD=.06,.07,1.01:.01:1.09 S BTPWUPD(90628,BTPWDA_",",FLD)="@"
 D FILE^DIE("","BTPWUPD","ERROR")
 K BTPWUPD
 F PC=1:1:3 S $P(^BTPW(90628,BTPWDA,1),U,PC)=7
 NEW DA,IENS
 S DA(1)=BTPWDA,DA=0
 F  S DA=$O(^BTPW(90628,BTPWDA,2,DA)) Q:'DA  D
 . S IENS=$$IENS^DILF(.DA)
 . I $$GET1^DIQ(90628.02,IENS,.01,"E")="PAP SMEAR" D
 .. S $P(^BTPW(90628,DA(1),2,DA,0),U,2)="12M"
 .. S $P(^BTPW(90628,DA(1),2,DA,0),U,5)=1
 .. S ^BTPW(90628,DA(1),2,DA,1)=75
 . I $$GET1^DIQ(90628.02,IENS,.01,"E")="MAMMOGRAM SCREENING" D
 .. S $P(^BTPW(90628,DA(1),2,DA,0),U,2)="12M"
 .. S $P(^BTPW(90628,DA(1),2,DA,0),U,5)=1
 .. S ^BTPW(90628,DA(1),2,DA,1)=108
 . F FLD=.03,.04 S BTPWUPD(90628.02,IENS,FLD)="@"
 . D FILE^DIE("","BTPWUPD","ERROR")
 . K BTPWUPD
 ;
TMPL ; Set list for templates with |V | data objects
 NEW XDATA
 S XDATA=$NA(^XTMP("BQITEMPL"))
 K @XDATA
 S @XDATA@(0)=$$FMADD^XLFDT(DT,7)_U_DT_U_"Templates containing |V | data objects"
 NEW TMPN,BLN
 S TMPN=0
 F  S TMPN=$O(^TIU(8927,TMPN)) Q:'TMPN  D
 . S BLN=0
 . F  S BLN=$O(^TIU(8927,TMPN,2,BLN)) Q:'BLN  D
 .. I ^TIU(8927,TMPN,2,BLN,0)["|V " S @XDATA@(TMPN)=""
 ;
 NEW DZ,BKEY,USER
 S DZ="" F  S DZ=$O(^XTMP("BTPW1PRE",DZ)) Q:DZ=""  D
 . S BKEY="BTPWZCMGR",USER=DZ D ADD^BQISYKEY I $G(DZ)="" S DZ=USER
 K ^XTMP("BTWP1PRE")
 ;
USR ; Remove user preferences for CMET
 NEW DZ,TN
 S DZ=0
 F  S DZ=$O(^BQICARE(DZ)) Q:'DZ  D
 . K ^BQICARE(DZ,9)
 . S TN=0
 . F  S TN=$O(^BQICARE(DZ,15,TN)) Q:'TN  D
 .. I $P(^BQICARE(DZ,15,TN,0),U,1)="Queued Events Default" D UP("Events Default")
 .. I $P(^BQICARE(DZ,15,TN,0),U,1)="Planned Events Default" D UP("Followup Events Default")
 . S PNL=0
 . F  S PNL=$O(^BQICARE(DZ,1,PNL)) Q:'PNL  D
 .. S TL=0
 .. F  S TL=$O(^BQICARE(DZ,1,PNL,4,TL)) Q:'TL  D
 ... I $P(^BQICARE(DZ,1,PNL,4,TL,0),U,1)="Queued Events Default" D UP1(DZ,PNL,TL,"Events Default")
 ... I $P(^BQICARE(DZ,1,PNL,4,TL,0),U,1)="Planned Events Default" D UP1(DZ,PNL,TL,"Followup Events Default")
 .. S CS=0
 .. F  S CS=$O(^BQICARE(DZ,1,PNL,23,CS)) Q:'CS  D
 ... I $P(^BQICARE(DZ,1,PNL,23,CS,0),U,1)="Queued Events" D UP2(DZ,PNL,CS,"Events")
 ... I $P(^BQICARE(DZ,1,PNL,23,CS,0),U,1)="Planned Events" D UP2(DZ,PNL,CS,"Followup Events")
 I $D(BTPWUPD) D FILE^DIE("","BTPWUPD","ERROR")
 ;
 ; Create CMET Taxonomies
 D ^BTPWUX
 D ^BTPWVX
 D ^BTPWWX
 D ^BTPWXX
 D ^BTPWYX
 ;
LTAX ;  Add Lab Taxonomies to ^ATXLAB
 NEW X,DIC,DLAYGO,DA,DR,DIE,Y,LTAX,D0,DINUM,BQTXUP
 S DIC="^ATXLAB(",DIC(0)="L",DLAYGO=9002228
 ;
 D LDLAB(.LTAX)
 F BJ=1:1 Q:'$D(LTAX(BJ))  S X=LTAX(BJ) D
 . I $D(^ATXLAB("B",X)) Q  ; Skip pre-existing Lab taxonomies
 . D ^DIC S DA=+Y
 . I DA<1 Q
 . S BQTXUP(9002228,DA_",",.02)=$P(X," ",2,999)
 . S BQTXUP(9002228,DA_",",.05)=DUZ
 . S BQTXUP(9002228,DA_",",.06)=DT
 . S BQTXUP(9002228,DA_",",.09)=60
 . D FILE^DIE("I","BQTXUP")
 . S BQTXUP(9002228,DA_",",.08)="B"
 . D FILE^DIE("E","BQTXUP")
 ;
 ; Update pointers IN CMET
 NEW PRCN,TXN,TTYP,VAL,BTPWUPD
 S PRCN=0
 F  S PRCN=$O(^BTPW(90621,PRCN)) Q:'PRCN  D
 . S TXN=0
 . F  S TXN=$O(^BTPW(90621,PRCN,1,TXN)) Q:'TXN  D
 .. S TTYP=$P(^BTPW(90621,PRCN,1,TXN,0),U,3),TAX=$P(^(0),U,1)
 .. S TTYP=$S(TTYP=3:"L",1:"N")
 .. S VAL=$$STXPT(TAX,TTYP)
 .. NEW DA,IENS
 .. S DA(1)=PRCN,DA=TXN,IENS=$$IENS^DILF(.DA)
 .. S BTPWUPD(90621.01,IENS,.02)=VAL
 D FILE^DIE("","BTPWUPD","ERROR")
 ;
 ; Add BTPW entries to 90506.1
 NEW DA,DIK,NAME
 S DIK="^BQI(90506.1,"
 F NAME="BTPWFDUE","BTPWNDUE","BTPWPDT","BTPWPRC","BTPWRDUE","BTPWSTGE" S DA=$O(^BQI(90506.1,"B",NAME,"")) I DA'="" D ^DIK
 ;
 NEW BI,BJ,BK,BN,BQIUPD,ERROR,IEN,ND,NDATA,TEXT,VAL
 F BI=1:1 S TEXT=$P($T(CMET+BI),";;",2) Q:TEXT=""  D
 . F BJ=1:1:$L(TEXT,"~") D
 .. S NDATA=$P(TEXT,"~",BJ)
 .. S ND=$P(NDATA,"|",1),VAL=$P(NDATA,"|",2)
 .. I ND=0 D
 ... NEW DIC,X,Y
 ... S DIC(0)="LQZ",DIC="^BQI(90506.1,",X=$P(VAL,U,1)
 ... D ^DIC
 ... S IEN=+Y
 ... I IEN=-1 K DO,DD D FILE^DICN S IEN=+Y
 .. I ND=1 S BQIUPD(90506.1,IEN_",",1)=VAL Q
 .. F BK=1:1:$L(VAL,"^") D
 ... S BN=$O(^DD(90506.1,"GL",ND,BK,"")) I BN="" Q
 ... I $P(VAL,"^",BK)'="" S BQIUPD(90506.1,IEN_",",BN)=$P(VAL,"^",BK) Q
 ... I $P(VAL,"^",BK)="" S BQIUPD(90506.1,IEN_",",BN)="@"
 . D FILE^DIE("","BQIUPD","ERROR")
 ;
 ; Set tooltips
 D TPS^BTPW1PSU
 ;
 ; Set up post-install job to run
 NEW X,Y,%DT
 S %DT="AEFR",%DT("A")="Enter Time to start CMET Queued Events Search Job: "
 S %DT("B")=$$FMTE^XLFDT(DT_".20")
 D ^%DT
 I X="NOW" S ZTDTH=$$FMADD^XLFDT(Y,,,3)
 E  S ZTDTH=Y
 S ZTDESC="CMET INITIALIZATION",ZTRTN="EN^BTPWPFND()",ZTIO=""
 D ^%ZTLOAD
 K ZTDESC,ZTRTN,ZTIO,ZTDTH,ZTSK
 ;
 Q
 ;
UP(TXT) ;
 NEW DA,IENS
 S DA(1)=DZ,DA=TN,IENS=$$IENS^DILF(.DA)
 S BTPWUPD(90505.015,IENS,.01)=TXT
 Q
 ;
UP1(DZ,PNL,TL,TXT) ;
 NEW DA,IENS
 S DA(2)=DZ,DA(1)=PNL,DA=TL,IENS=$$IENS^DILF(.DA)
 S BTPWUPD(90505.14,IENS,.01)=TXT
 Q
 ;
UP2(DZ,PNL,CS,TXT) ;
 NEW DA,IENS
 S DA(2)=DZ,DA(1)=PNL,DA=CS,IENS=$$IENS^DILF(.DA)
 S BTPWUPD(90505.123,IENS,.01)=TXT
 Q
 ;
STXPT(TXNM,TYP) ;  Set taxonomy pointer
 ;
 ;Input
 ;  TXNM - Taxonomy name
 ;  TYP  - Taxonomy Type (L = LAB, N = Non Lab)
 NEW IEN,SIEN,DA,IENS,BQUPD,VALUE,GLB
 S VALUE=""
 I TYP="L" D
 . S IEN=$O(^ATXLAB("B",TXNM,"")),GLB="ATXLAB("
 . I IEN="" S TYP="N"
 I TYP="N" S IEN=$O(^ATXAX("B",TXNM,"")),GLB="ATXAX("
 I IEN="" S VALUE="@"
 I IEN'="" S VALUE=IEN_";"_GLB
 Q VALUE
 ;
LDLAB(ARRAY) ;EP;Load site-populated Lab tests
 NEW I,TEXT
 F I=1:1 S TEXT=$P($T(LAB+I),";;",2) Q:TEXT=""  S ARRAY(I)=TEXT
 Q
 ;
LAB ;EP;LAB TESTS (SITE-POPULATED)
 ;;BGP CHLAMYDIA TESTS TAX
 ;;BGP GPRA FOB TESTS
 ;;BGP PAP SMEAR TAX
 ;;BKM GONORRHEA TEST TAX
 ;;BTPW HPV DNA SCREEN TAX
 ;;BTPW PREGNANCY TEST TAX
 ;;
CMET ; Add new CMET Items
 ;;0|BTPWFDUE^^Followup Due^^^^^D00015BTPWFDUE~1|NEW Y S Y=$$GET1^DIQ(90620,BTIEN_",",1.06,"I"),VAL=$$FMTE^BQIUL1(Y)~3|18^^^D^5~5|
 ;;0|BTPWNCAT^^Category^^^^^T00040BTPWNCAT~1|S VAL=$$GET1^DIQ(90620,TIEN_",",.01,"I") S:VAL]"" VAL=$$CAT^BTPWPDSP(VAL)~3|21^^^D^^1^^^1~5|
 ;;0|BTPWNDUE^^Notification Due^^^^^D00015BTPWNDUE~1|NEW Y S Y=$$GET1^DIQ(90620,BTIEN_",",1.07,"I"),VAL=$$FMTE^BQIUL1(Y)~3|18^^^D^6~5|
 ;;0|BTPWNEDT^^Follow-up Event Date^^^^^D00015BTPWNEDT~1|NEW Y S Y=$$GET1^DIQ(90620,TIEN_",",.13,"I"),VAL=$$FMTE^BQIUL1(Y)~3|21^^^D^^2^^A^3~5|
 ;;0|BTPWNENM^^Follow-up Event Name^^^^^T00060BTPWNENM~1|S VAL=$$GET1^DIQ(90620,TIEN_",",.01,"E")~3|21^^^D^^^^^2~5|
 ;;0|BTPWNPEV^^Preceding Event^^^^^D00030BTPWNPEV~1|S VAL=$$GET1^DIQ(90620,TIEN_",",.11,"I") I VAL]"" S VAL=$$GET1^DIQ(90620,VAL_",",.03,"I"),VAL=$$FMTE^BQIUL1(VAL)~3|21^^^D^^^^^4~5|
 ;;0|BTPWPDT^^Event Date^^^^^D00015BTPWPDT~1|NEW Y S Y=$$GET1^DIQ($S(VIEW="T":90620,1:90629),BTIEN_",",.03,"I"),VAL=$$FMTE^BQIUL1(Y)~3|18^^^D^2~5|
 ;;0|BTPWPRC^^Event^^^^^T00060BTPWPRC~1|S VAL=$$GET1^DIQ($S(VIEW="T":90620,1:90629),BTIEN_",",.01,"E")~3|18^^^D^1~5|
 ;;0|BTPWQCAT^^Category^^^^^T00040BTPWQCAT~1|S VAL=$$GET1^DIQ(90629,QIEN_",",.01,"I") S:VAL]"" VAL=$$CAT^BTPWPDSP(VAL)~3|19^^^D^^1^^^1~5|
 ;;0|BTPWQCOM^^Event Community^^^^^T00030BTPWQCOM^^1^3100101~1|S VAL=$$GET1^DIQ(90629,QIEN_",",.16,"E") S:VAL="" VAL=$$GET1^DIQ(9000001,DFN_",",1117,"E")~3|19^^^O^7~5|
 ;;0|BTPWQEDT^^Event Date^^^^^D00015BTPWQEDT~1|NEW Y S Y=$$GET1^DIQ(90629,QIEN_",",.03,"I"),VAL=$$FMTE^BQIUL1(Y)~3|19^^^D^9^2^^D^~5|
 ;;0|BTPWQENM^^Event Name^^^^^T00060BTPWQENM~1|S VAL=$$GET1^DIQ(90629,QIEN_",",.01,"E")~3|19^^^D^8~5|
 ;;0|BTPWQLDT^^Last Modified Date/Time^^^^^D00030BTPWQLDT^^^^^^^125~1|S VAL=$$FMTE^BQIUL1($$GET1^DIQ(90629,QIEN_",",.11,"I"))~3|19^^^D^13~5|
 ;;0|BTPWQLMB^^Last Modified By^^^^^T00030BTPWQLMB~1|S VAL=$$GET1^DIQ(90629,QIEN_",",.12,"E")~3|19^^^D^14~5|
 ;;0|BTPWQRES^^Result^^^^^T01024BTPWQRES~1|S VAL=$$QLNK^BTPWPTRG(QIEN,.06)~3|19^^^D^10~5|
 ;;0|BTPWQSCM^^Status Comments^^^^^T04096BTPWQSCM~1|S VAL=$$SCOMM^BTPWPDSP(QIEN)~3|19^^^D^12~5|
 ;;0|BTPWQSTS^^Status^^^^^T00020BTPWQSTS~1|S VAL=$$GET1^DIQ(90629,QIEN_",",.08,"E")~3|19^^^D^11~5|
 ;;0|BTPWRDUE^^Finding Due^^^^^D00015BTPWRDUE~1|NEW Y S Y=$$GET1^DIQ(90620,BTIEN_",",1.05,"I"),VAL=$$FMTE^BQIUL1(Y)~3|18^^^D^4~5|
 ;;0|BTPWSTGE^^Event State^^^^^T00010BTPWSTGE^^^^^^^^^^D~1|S VAL=$S(VIEW="T":$$GET1^DIQ(90620,BTIEN_",",1.01,"E"),1:"")~3|18^^^D^3~5|
 ;;0|BTPWTCAT^^Category^^^^^T00040BTPWTCAT~1|S VAL=$$GET1^DIQ(90620,TIEN_",",.01,"I") S:VAL]"" VAL=$$CAT^BTPWPDSP(VAL)~3|20^^^D^^1^^^1~5|
 ;;0|BTPWTCLR^^Closed Reason^^^^^T00030BTPWTCLR~1|S VAL=$$GET1^DIQ(90620,TIEN_",",1.04,"E")~3|20^^^O^250~5|
 ;;0|BTPWTCOM^^Event Community^^^^^T00030BTPWTCOM^^1^3100101~1|S VAL=$$GET1^DIQ(90620,TIEN_",",.16,"E") S:VAL="" VAL=$$GET1^DIQ(9000001,DFN_",",1117,"E")~3|20^^^O^~5|
 ;;0|BTPWTECM^^Event Comment^^^^^T04096BTPWTECM~1|S VAL=$$EVTCOM^BTPWPDSP(TIEN)~3|20^^^O^145~5|
 ;;0|BTPWTEDT^^Event Date^^^^^D00015BTPWTEDT~1|NEW Y S Y=$$GET1^DIQ(90620,TIEN_",",.03,"I"),VAL=$$FMTE^BQIUL1(Y)~3|20^^^D^110^1^^D^~5|
 ;;0|BTPWTENM^^1 - Event^^^^^T00060BTPWTENM~1|S VAL=$$GET1^DIQ(90620,TIEN_",",.01,"E")~3|20^^^D^100~5|
 ;;0|BTPWTEVS^^Event Summary^^^^^T04096BTPWTEVS~1|S VAL=$$EVTS^BTPWPLND(TIEN)~3|20^^^O^190~5|
 ;;0|BTPWTFDA^^Findings Summary^^^^^T02048BTPWTFDA~1|S VAL=$$FNDS^BTPWPLND(TIEN)~3|20^^^O^200~5|
 ;;0|BTPWTFNC^^Finding Comment^^^^^T04096BTPWTFNC~1|S VAL=$$FNDCMT^BTPWPDSP(TIEN)~3|20^^^O^155~5|
 ;;0|BTPWTFDD^^Finding Due By Date^^^^^D00015BTPWTFDD~1|S VAL=$$FMTE^BQIUL1($$GET1^DIQ(90620,TIEN_",",1.05,"I"))~3|20^^^O^280~5|
 ;;0|BTPWTFND^^2 - Finding(s)^^^^^T02048BTPWTFND~1|S VAL=$$FND^BTPWPEVT(TIEN)~3|20^^^D^140~5|
 ;;0|BTPWTFUA^^Follow-up Summary^^^^^T02048BTPWTFUA~1|S VAL=$$FUPS^BTPWPLND(TIEN)~3|20^^^O^210~5|
 ;;0|BTPWTFUC^^Follow-up Comment^^^^^T04096BTPWTFUC~1|S VAL=$$FUPCMT^BTPWPDSP(TIEN)~3|20^^^O^165~5|
 ;;0|BTPWTFUD^^Follow-up Decision Due By Date^^^^^D00015BTPWTFUD~1|S VAL=$$FMTE^BQIUL1($$GET1^DIQ(90620,TIEN_",",1.06,"I"))~3|20^^^O^290~5|
 ;;0|BTPWTFUP^^3 - Follow-up(s)^^^^^T02048BTPWTFUP~1|S VAL=$$FUP^BTPWPEVT(TIEN)~3|20^^^D^160~5|
 ;;0|BTPWTINT^^Interpretation^^^^^T00050BTPWTINT~1|S VAL=$$INTER^BTPWPEVT(TIEN)~3|20^^^D^150~5|
 ;;0|BTPWTLDT^^Last Modified Date/Time^^^^^D00030BTPWTLDT^^^^^^^125~1|S VAL=$$FMTE^BQIUL1($$GET1^DIQ(90620,TIEN_",",1.09,"I"))~3|20^^^O^230~5|
 ;;0|BTPWTLMB^^Last Modified By^^^^^T00030BTPWTLMB~1|S VAL=$$GET1^DIQ(90620,TIEN_",",1.1,"E")~3|20^^^O^240~5|
 ;;0|BTPWTNOA^^Patient Notification Summary^^^^^T02048BTPWTNOA~1|S VAL=$$NOTS^BTPWPLND(TIEN)~3|20^^^O^220~5|
 ;;0|BTPWTNOC^^Pt. Notification Comment^^^^^T04096BTPWTNOC~1|S VAL=$$NOTCMT^BTPWPDSP(TIEN)~3|20^^^O^175~5|
 ;;0|BTPWTNOD^^Notification Due By Date^^^^^D00015BTPWTNOD~1|S VAL=$$FMTE^BQIUL1($$GET1^DIQ(90620,TIEN_",",1.07,"I"))~3|20^^^O^300~5|
 ;;0|BTPWTNOT^^4 - Patient Notification(s)^^^^^T02048BTPWTNOT~1|S VAL=$$NOT^BTPWPEVT(TIEN)~3|20^^^D^170~5|
 ;;0|BTPWTPEV^^Preceding Event^^^^^D00030BTPWTPEV~1|S VAL=$$GET1^DIQ(90620,TIEN_",",.11,"I") I VAL]"" S VAL=$$GET1^DIQ(90620,VAL_",",.03,"I"),VAL=$$FMTE^BQIUL1(VAL)~3|20^^^D^120~5|
 ;;0|BTPWTRES^^Results^^^^^T01024BTPWTRES~1|S VAL=$$LNK^BTPWPTRG(TIEN,.06)~3|20^^^D^130~5|
 ;;0|BTPWTSTA^^State^^^^^T00015BTPWTSTA~1|S VAL=$$GET1^DIQ(90620,TIEN_",",1.01,"E")~3|20^^^D^180~5|
 ;;0|BTPWTSTC^^State Comment^^^^^T01024BTPWTSTC^^^~1|S VAL=$$STACOM^BTPWPEVT(TIEN)~3|20^^^O^135~5|
 ;;0|BTPWTSTS^^Status^^^^^T00010Status^^1^3100101~1|S VAL=$$GET1^DIQ(90620,TIEN_",",.08,"E")~3|20^^^O^~5|
 ;;0|BTPWTTBY^^Event Tracked By^^^^^T00030BTPWTTBY~1|S VAL=$$GET1^DIQ(90620,TIEN_",",1.03,"E")~3|20^^^O^260~5|
 ;;0|BTPWTTDT^^Event Tracked Date/Time^^^^^D00030BTPWTTDT~1|S VAL=$$FMTE^BQIUL1($$GET1^DIQ(90620,TIEN_",",1.02,"I"))~3|20^^^O^270~5|
 ;;
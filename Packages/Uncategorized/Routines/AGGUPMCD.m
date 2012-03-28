AGGUPMCD ;VNGT/HS/ALA-Update Medicaid ; 20 May 2010  5:20 PM
 ;;1.0;PATIENT REGISTRATION GUI;**1**;Nov 15, 2010
 ;
 ;
UPD(DATA,DFN,PROC,DEF,RIEN,MIEN,PARMS) ; EP - AGG UPDATE MEDICAID
 ; Input
 ;   DFN   - Patient IEN
 ;   RIEN  - Record IEN
 ;   MIEN  - Multiple IEN
 ;   PROC  - 'A' to add, 'E' to edit, 'D' to delete
 ;   DEF   - Definition
 ;   PARMS - Parameters
 NEW UID,II,AGIEN,ERROR,AGGDATA
 NEW IENS,DA,FILE,FIELD,EXEC,NAME,PDATA,BQ
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("AGGUPMCD",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^AGGPTUPD D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 S @DATA@(II)="I00010RESULT^T01024ERROR^I00010RIEN^I00010MIEN"_$C(30)
 ;
 S AGIEN=$O(^AGG(9009068.3,"B",DEF,""))
 I AGIEN="" D  Q
 . S II=II+1,@DATA@(II)="-1^"_"RPC Call Failed: "_DEF_" Definition does not exist."_$C(30)
 . S II=II+1,@DATA@(II)=$C(31)
 S FILE=$P(^AGG(9009068.3,AGIEN,0),U,2)
 ;
 ;if deleting a Medicaid
 I $G(PROC)="D" D  G DONE
 . I +$G(MIEN)=0 S DA=RIEN,IENS=$$IENS^DILF(.DA)
 . I +$G(MIEN)'=0 S DA(1)=RIEN,DA=MIEN,IENS=$$IENS^DILF(.DA)
 . K IN3PB
 . S IN3PB=$$USED^AGUTILS(DFN,$O(^AUTNINS("B","MEDICAID","")),7,MIEN,RIEN)
 . I $G(PARMS)["OVERRIDE=Y" S IN3PB=""
 . I IN3PB'="" D  Q
 .. S ERROR("DIERR",1,"TEXT",1)="WARNING: This member has outstanding claims and/or bills!!"_$C(10)
 .. S ERROR("DIERR",1,"TEXT",1)=ERROR("DIERR",1,"TEXT",1)_"Deleting an eligibility date may cause data integrity problems"_$C(10)
 .. S ERROR("DIERR",1,"TEXT",1)=ERROR("DIERR",1,"TEXT",1)_"in the Third Party Billing package!!"
 . S AGGUPD(FILE,IENS,.01)="@"
 . D FILE^DIE("","AGGUPD","ERROR")
 . I $D(ERROR) Q
 . I $O(^AUPNMCD(RIEN,11,0))'="" Q
 . ; If no more eligibility dates, delete record
 . NEW DIK,DA
 . S DIK="^AUPNMCD(",DA=RIEN D ^DIK
 ;if adding a new Medicaid
 D PARS
 I $G(PROC)="A" D
 . I $G(RIEN)="" D
 .. S DLAYGO=FILE,DIC(0)="L",DIC="^AUPNMCD(",X=DFN
 .. K DO,DD D FILE^DICN S RIEN=+Y
 . I +$G(MIEN)=0,$G(RIEN)'="" D
 .. I '$D(^AUPNMCD(RIEN,11,0)) S ^AUPNMCD(RIEN,11,0)="^9000004.11D^0^0"
 .. I $G(AGGMDESD)="" Q
 .. S DA(1)=RIEN,DLAYGO=FILE,DIC(0)="L",DIC="^AUPNMCD("_DA(1)_",11,"
 .. S (X,DINUM)=AGGMDESD
 .. K DO,DD D FILE^DICN S MIEN=+Y
 ;if editing a Medicaid
 I +$G(MIEN)=0 S DA=RIEN,IENS=$$IENS^DILF(.DA)
 I +$G(MIEN)'=0 S DA(1)=RIEN,DA=MIEN,IENS=$$IENS^DILF(.DA)
 ;
 I FILE=9000004,$G(AGGMDINS)="" S AGGDATA(9000004,RIEN_",",.02)=$P($$MCD(),$C(29),1)
 F BQ=1:1:$L(PARMS,$C(28)) D  Q:$G(BMXSEC)'=""
 . S PDATA=$P(PARMS,$C(28),BQ) Q:PDATA=""
 . S NAME=$P(PDATA,"=",1)
 . S PFIEN=$O(^AGG(9009068.3,AGIEN,10,"AC",NAME,""))
 . I PFIEN="" S BMXSEC=NAME_" not a valid parameter for this update" Q
 . S FIELD=$P($G(^AGG(9009068.3,AGIEN,10,PFIEN,3)),U,1)
 . S EXEC=$G(^AGG(9009068.3,AGIEN,10,PFIEN,7))
 . I EXEC'="" X EXEC Q
 . I FIELD="" Q
 . S AGGDATA(FILE,IENS,FIELD)=@NAME
 ;
 I $D(AGGDATAI) D FILE^DIE("","AGGDATAI","ERROR")
 I $D(AGGDATA) D FILE^DIE("","AGGDATA","ERROR")
 ;
DONE ;
 S RESULT=1_U_U_RIEN_U_MIEN
 I $D(ERROR) S RESULT="-1"_U_$G(ERROR("DIERR",1,"TEXT",1))_U_U
 S II=II+1,@DATA@(II)=RESULT_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 ;
 I $P(RESULT,U,1)=1 D
 . S AGGDATAI(9000001,DFN_",",.03)=DT,AGGDATAI(9000001,DFN_",",.12)=DUZ
 . D FILE^DIE("","AGGDATAI","ERROR")
 . D EDIT^AGGEXPRT(DFN)
 ;
 S NAME=""
 F  S NAME=$O(^AGG(9009068.3,AGIEN,10,"AC",NAME)) Q:NAME=""  K @NAME
 K ERROR,AGGMDINS
 Q
 ;
MCD() ;EP
 NEW IEN
 S IEN=$O(^AUTNINS("B","MEDICAID",""))
 Q IEN_$C(29)_"MEDICAID"
 ;
MCNM(DFN) ;EP - NAME
 Q $P(^DPT(DFN,0),U,1)
 ;
MCDB(DFN) ;EP - DOB
 NEW DOB
 S DOB=$P(^DPT(DFN,0),U,3)
 Q $$FMTE^AGGUL1(DOB)
 ;
TRIG(DATA,DFN,PROC) ;EP - AGG MEDICAID TRIGGER
 ; Input
 ;   DFN - Patient record
 ;   PROC - Process; 'A' is add
 ;
 NEW UID,II
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("AGGMCDTR",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^AGGPTUPD D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 D HDR^AGGWTRIG
 S @DATA@(II)=HDR_$C(30)
 I $G(PROC)'="A" S II=II+1,@DATA@(II)=$C(31) Q
 S ABLE="Y",HELP=""
 S SOURCE="AGGMDINS",TYPE="T",VALUE=$$MCD() D UP^AGGWTRIG
 S SOURCE="AGGMDNME",TYPE="X",VALUE=$$MCNM(DFN) D UP^AGGWTRIG
 S SOURCE="AGGMDDOB",TYPE="D",VALUE=$$MCDB(DFN) D UP^AGGWTRIG
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
PARS ;
 F BQ=1:1:$L(PARMS,$C(28)) D  Q:$G(BMXSEC)'=""
 . S PDATA=$P(PARMS,$C(28),BQ) Q:PDATA=""
 . S NAME=$P(PDATA,"=",1),VALUE=$P(PDATA,"=",2,99)
 . ;I VALUE="" S VALUE="@"
 . ;I VALUE="" Q
 . S PFIEN=$O(^AGG(9009068.3,AGIEN,10,"AC",NAME,""))
 . I PFIEN="" S BMXSEC=NAME_" not a valid parameter for this update" Q
 . S PTYP=$P($G(^AGG(9009068.3,AGIEN,10,PFIEN,1)),U,1)
 . I PTYP="D" S VALUE=$$DATE^AGGUL1(VALUE)
 . I PTYP="C" D
 .. I VALUE="" Q
 .. S CHIEN=$O(^AGG(9009068.3,AGIEN,10,PFIEN,5,"B",VALUE,"")) I CHIEN="" Q
 .. S VALUE=$P(^AGG(9009068.3,AGIEN,10,PFIEN,5,CHIEN,0),U,2)
 . I PTYP="W" D  Q
 .. F AGI=1:1  S AGJ=$P(VALUE,$C(10),AGI) Q:AGJ=""  D
 ... S AGWP(AGI,0)=$$CTRL^AGGUL1(AGJ)
 . S @NAME=VALUE
 Q
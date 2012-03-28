BQIUTB2 ;PRXM/HC/ALA-Get Reminders List and Help ; 15 Feb 2007  5:35 PM
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
 Q
 ;
EN(DATA,FAKE) ;EP -- BQI GET REMINDERS LIST
 NEW UID,II,BQILOC,LII,BI
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIUTB2",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIUTB1 D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 D EN^BQIMSLST(.BQILOC,"D")
 S LII=$O(@BQILOC@(""),-1)
 F II=0:1:LII-1 S @DATA@(II)=@BQILOC@(II)
 D EN^BQIMSLST(.BQILOC,"R")
 S LII=$O(@BQILOC@(""),-1)
 F BI=1:1:LII-1 S II=II+1,@DATA@(II)=@BQILOC@(BI)
DONE ;
 S II=II+1,@DATA@(II)=$C(31)
 K @BQILOC
 Q
 ;
VFL(DATA,FTYP) ;EP - Get list of Vfiles
 S II=0
 S @DATA@(II)="I00010IEN^T00030^T00100SORT_ORDER^T00100SORT_DIR^T00001FILTER"_$C(30)
 NEW IEN,IACT,SORT,SN,SIEN,COLMN,SDIR,DIR
 S IEN=0
 F  S IEN=$O(^BQI(90506.3,"D",FTYP,IEN)) Q:'IEN  D
 . ; If vfile entry is flagged 'Do not display or extract', quit
 . I +$$GET1^DIQ(90506.3,IEN_",",.05,"I") Q
 . S II=II+1
 . S IACT=$$GET1^DIQ(90506.3,IEN_",",.03,"I")
 . S NAME=$$GET1^DIQ(90506.3,IEN_",",.01,"E")
 . ; If a sub-definition, do not pull
 . I $$GET1^DIQ(90506.3,IEN_",",.07,"I")=1 Q
 . S FILTER=$S($D(^BQI(90506.3,IEN,7)):"Y",1:"N")
 . ;
 . ; Get Sort Order
 . S SORT="",SN="",SDIR=""
 . F  S SN=$O(^BQI(90506.3,IEN,10,"D",SN)) Q:SN=""  D
 .. S SIEN=""
 .. F  S SIEN=$O(^BQI(90506.3,IEN,10,"D",SN,SIEN)) Q:SIEN=""  D
 ... ; If the field is inactive, quit
 ... I $P(^BQI(90506.3,IEN,10,SIEN,0),U,11)=1 Q
 ... S COLMN=$P(^BQI(90506.3,IEN,10,SIEN,0),U,2)
 ... S DIR=$P(^BQI(90506.3,IEN,10,SIEN,0),U,13)
 ... ; Strip off the size and only keep the name
 ... S COLMN=$E(COLMN,7,$L(COLMN))
 ... S SORT=SORT_COLMN_$C(29)
 ... S SDIR=SDIR_DIR_$C(29)
 . S SORT=$$TKO^BQIUL1(SORT,$C(29))
 . S SDIR=$$TKO^BQIUL1(SDIR,$C(29))
 . S @DATA@(II)=IEN_U_$S(IACT=1:"*",1:"")_NAME_U_SORT_U_SDIR_U_FILTER_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
APST(DATA) ;EP - Get appointment statuses
 NEW SDATA,II,BI
 S II=0
 S @DATA@(II)="T00003IEN^T00045"_$C(30)
 S SDATA=$P($G(^DD(2.98,3,0)),U,3) I SDATA="" Q
 S II=II+1,@DATA@(II)="AC^ACTIVE"_$C(30)
 F BI=1:1:$L(SDATA,";")-1 D
 . S II=II+1,@DATA@(II)=$P($P(SDATA,";",BI),":",1)_"^"_$P($P(SDATA,";",BI),":",2)_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
EPLIST(DATA) ;EP - Get EHR personal lists
 NEW TDATA,II,BI
 K TDATA
 D PLSTLST^BEHOPTP2(.TDATA)
 S II=0,BI=0
 S @DATA@(II)="T00003IEN^T00060"_$C(30)
 F  S BI=$O(TDATA(BI)) Q:BI=""  D
 . S II=II+1,@DATA@(II)=TDATA(BI)_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
FLTR(DATA) ;EP - Get list of filters
 S II=0
 S @DATA@(II)="I00010VDEF_IEN^T00030VDEF_TYPE^T00030FILTER_NAME^T00030FILTER_CATEGORY^T00030FILTER_CLINICAL_GROUP"_$C(30)
 NEW IEN,VALUE,FN,FLN
 S IEN=0
 F  S IEN=$O(^BQI(90506.3,IEN)) Q:'IEN  D
 . ; If vfile entry is flagged 'Do not display or extract', quit
 . I +$$GET1^DIQ(90506.3,IEN_",",.05,"I") Q
 . S II=II+1
 . S VALUE=IEN_U_$P(^BQI(90506.3,IEN,0),U,1)
 . S FN=0
 . F  S FN=$O(^BQI(90506.3,IEN,7,FN)) Q:'FN  D
 .. NEW DA,IENS
 .. S DA(1)=IEN,DA=FN,IENS=$$IENS^DILF(.DA)
 .. S NAME=$$GET1^DIQ(90506.38,IENS,.01,"E")
 .. S FLN=$$GET1^DIQ(90506.38,IENS,.01,"I")
 .. S CLN=0,CAT="",CGRP=""
 .. I $O(^BQI(90506.5,FLN,6,CLN))="" S II=II+1,@DATA@(II)=VALUE_U_NAME_U_CAT_U_CGRP_$C(30) Q
 .. F  S CLN=$O(^BQI(90506.5,FLN,6,CLN)) Q:'CLN  D
 ... S CGRP=$P(^BQI(90506.5,FLN,6,CLN,0),U,2)
 ... S II=II+1,@DATA@(II)=VALUE_U_NAME_U_CAT_U_CGRP_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 Q
AGGRRPT ;VNGT/HS/ALA-Reports List ; 21 Apr 2010  8:00 AM
 ;;1.0;PATIENT REGISTRATION GUI;;Nov 15, 2010
 ;
 ;
EN(DATA,FAKE) ;EP -- AGG REPORT LIST
 ; 
 NEW UID,II,RPTNM,IEN,DESC,DN,DIS,DEF,RPC,RGIEN,TYP,NOP,TAX,TXCK
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("AGGRRPT",UID))
 K @DATA
 ;
 S II=0
 ;
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^AGGRRPT D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S @DATA@(II)="T00030REPORT_NAME^T00040RPC^T00040DEFINITION^T00001DISPLAY_TYPE^T00030REPORT_TYPE^T00001NO_PARAMETER^T00030TAX_CHECK"_$C(30)
 ;
 S RPTNM=""
 F  S RPTNM=$O(^AGG(9009068.6,"B",RPTNM)) Q:RPTNM=""  D
 . S IEN=""
 . F  S IEN=$O(^AGG(9009068.6,"B",RPTNM,IEN)) Q:IEN=""  D
 .. I $P(^AGG(9009068.6,IEN,0),U,4)=1 Q
 .. S RPC=$P(^AGG(9009068.6,IEN,0),U,2)
 .. S DEF=$$GET1^DIQ(9009068.6,IEN_",",.03,"E")
 .. S DIS=$$GET1^DIQ(9009068.6,IEN_",",.05,"I")
 .. S TYP=$$GET1^DIQ(9009068.6,IEN_",",.06,"E")
 .. S NOP=$$GET1^DIQ(9009068.6,IEN_",",.07,"I")
 .. S TAX=$$GET1^DIQ(9009068.6,IEN_",",.08,"E")
 .. S II=II+1,@DATA@(II)=RPTNM_"^"_RPC_"^"_DEF_"^"_DIS_"^"_TYP_"^"_NOP_"^"_TAX_$C(30)
 ;
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
ERR ;Error trap
 D ^%ZTER
 NEW Y,ERRDTM
 S Y=$$NOW^XLFDT() X ^DD("DD") S ERRDTM=Y
 S BMXSEC="Recording that an error occurred at "_ERRDTM
 I $D(II),$D(DATA) S II=II+1,@DATA@(II)=$C(31)
 Q
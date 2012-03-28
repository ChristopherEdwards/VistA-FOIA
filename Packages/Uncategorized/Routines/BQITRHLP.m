BQITRHLP ;VNGT/HS/ALA-Treatment Prompts Tooltips ; 23 Sep 2008  4:38 PM
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
EN(DATA,FAKE) ;EP - BQI GET TX PROMPT HELP 
 NEW UID,II,TRIEN,CAT,TIT,SORT,RMK,REMARK,CT,NXT
 ;
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQITRHLP",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQITRHLP D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S @DATA@(II)="T00030CATEGORY^T00030PROMPT^T01024REPORT_TEXT"_$C(30)
 S TRIEN=0,CAT="CVD-RELATED"
 F  S TRIEN=$O(^BQI(90508.5,TRIEN)) Q:'TRIEN  D
 . I $P(^BQI(90508.5,TRIEN,0),U,4)=1 Q
 . S TIT=$$GET1^DIQ(90508.5,TRIEN_",",.01,"E")
 . ; If the treatment prompt has been added to APCHSURV, quit, it will print
 . ; below
 . I $O(^APCHSURV("B",TIT,""))'="" Q
 . S RMK=0,REMARK=""
 . F  S RMK=$O(^BQI(90508.5,TRIEN,4,RMK)) Q:'RMK  D
 .. S REMARK=REMARK_^BQI(90508.5,TRIEN,4,RMK,0)_$C(10)
 . S REMARK=$$TKO^BQIUL1(REMARK,$C(10))
 . S SORT(CAT,TRIEN)=CAT_U_TIT_U_REMARK_$C(30)
 S TRIEN=0
 F  S TRIEN=$O(^APCHSURV(TRIEN)) Q:'TRIEN  D
 . I $P(^APCHSURV(TRIEN,0),U,7)'="T" Q
 . I $P(^APCHSURV(TRIEN,0),U,3)'=1 Q
 . S CAT=$$GET1^DIQ(9001018,TRIEN_",",.05,"E")
 . S TIT=$$GET1^DIQ(9001018,TRIEN_",",.01,"E")
 . S RMK=0,REMARK=""
 . F  S RMK=$O(^APCHSURV(TRIEN,13,RMK)) Q:'RMK  D
 .. S REMARK=REMARK_^APCHSURV(TRIEN,13,RMK,0)_$C(10)
 . S REMARK=$$TKO^BQIUL1(REMARK,$C(10))
 . S SORT(CAT,TIT)=CAT_U_TIT_U_REMARK_$C(30)
 ;
 S CT=""
 F  S CT=$O(SORT(CT)) Q:CT=""  D
 . S NXT=""
 . F  S NXT=$O(SORT(CT,NXT)) Q:NXT=""  D
 .. S II=II+1,@DATA@(II)=SORT(CT,NXT)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
ERR ;
 D ^%ZTER
 NEW Y,ERRDTM
 S Y=$$NOW^XLFDT() X ^DD("DD") S ERRDTM=Y
 S BMXSEC="Recording that an error occurred at "_ERRDTM
 I $D(II),$D(DATA) S II=II+1,@DATA@(II)=$C(31)
 Q
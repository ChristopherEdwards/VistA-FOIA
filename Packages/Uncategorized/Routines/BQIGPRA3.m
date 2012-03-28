BQIGPRA3 ;PRXM/HC/ALA - GPRA Summary Indicators ; 10 Feb 2006  5:11 PM
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
 Q
 ;
EN(DATA,YEAR) ; EP -- BQI GET GPRA MEASURE LIST
 ; Description
 ;   Get GPRA indicator list for the specified year
 ; Input
 ;   YEAR - The GPRA Year
 ;
 NEW UID,II,BQI1,BQI2,X
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIGPRA3",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIGPRA3 D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S YEAR=$G(YEAR,"")
 I YEAR="" D
 . I $G(BQIH)="" S BQIH=$$SPM^BQIGPUTL()
 . S YEAR=$$GET1^DIQ(90508,BQIH_",",2,"E")
 ;
 ; Get the demographics list
 D EN^BQIMSLST(.BQILOC,"D")
 S LII=$O(@BQILOC@(""),-1)
 F II=0:1:LII-1 S @DATA@(II)=@BQILOC@(II)
 ;
 ; Get the National Measures List
 D EN^BQIMSLST(.BQILOC,"G")
 S LII=$O(@BQILOC@(""),-1)
 F BI=1:1:LII-1 S II=II+1,@DATA@(II)=@BQILOC@(BI)
 ;
DONE ;
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
 ;
MEAS(DATA,DFN,BQIMEAS) ; EP -- BQI GET GPRA ADHERENCE
 ; Input
 ;   DFN     - Patient IEN
 ;   BQIMEAS - GPRA measure code value
 ;
 NEW UID,II
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIGPMEAS",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIGPRA3 D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S HDR="T00015MEAS_CODE^T00100ADHER_VALUE"
 S @DATA@(II)=HDR_$C(30)
 ;
 S IEN=""
 S IEN=$O(^BQIPAT(DFN,30,"B",BQIMEAS,IEN)) G DONE:IEN=""
 S VALUE=$P(^BQIPAT(DFN,30,IEN,0),U,2)
 S VALUE=$P(VALUE,"|||",2)
 S II=II+1,@DATA@(II)=BQIMEAS_U_VALUE_$C(30)
 G DONE
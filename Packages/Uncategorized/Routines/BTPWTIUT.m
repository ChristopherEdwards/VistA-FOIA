BTPWTIUT ;VNGT/HS/ALA-TIU Utilities ; 10 Dec 2009  9:41 AM
 ;;1.0;CARE MANAGEMENT EVENT TRACKING;;Feb 07, 2011
 ;
 ;
BL(DATA,TMPIEN) ; EP - BTPW GET TIU TEMPL BOILER
 NEW UID,II,TIUY,TEXT,NTEXT
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BTPWTIBLR",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BTPWTIUT D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S @DATA@(II)="T01024REPORT_TEXT"_$C(30)
 D GETBOIL^TIUSRVT(.TIUY,TMPIEN)
 S N=""
 F  S N=$O(@TIUY@(N)) Q:N=""  D
 . S TEXT=@TIUY@(N),NTEXT=$G(@TIUY@(N+1))
 . I NTEXT["}",NTEXT'["{" S TEXT=TEXT_NTEXT,N=N+1
 . S II=II+1,@DATA@(II)=TEXT_$C(10)
 ;
 K @TIUY
 ;
 ; Check for subtemplate items boilerplate
 NEW TITM,SBTIEN,N,TEXT,NTEXT
 S TITM=0
 F  S TITM=$O(^TIU(8927,TMPIEN,10,TITM)) Q:'TITM  D
 . S SBTIEN=$P(^TIU(8927,TMPIEN,10,TITM,0),"^",2)
 . D GETBOIL^TIUSRVT(.TIUY,SBTIEN)
 . S N=""
 . F  S N=$O(@TIUY@(N)) Q:N=""  D
 .. S TEXT=@TIUY@(N),NTEXT=$G(@TIUY@(N+1))
 .. I NTEXT["}",NTEXT'["{" S TEXT=TEXT_NTEXT,N=N+1
 .. S II=II+1,@DATA@(II)=TEXT_$C(10)
 .. K @TIUY
 ;
 S @DATA@(II)=@DATA@(II)_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 K @TIUY
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
IT(DATA,TMPIEN) ; EP - BTPW GET TIU TEMPL ITEMS
 NEW UID,II,TIUY
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BTPWTIITM",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BTPWTIUT D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S @DATA@(II)="T00030OBJECT^I00010OBJ_IEN^I00010LINE"_$C(30)
 D GETBOIL^TIUSRVT(.TIUY,TMPIEN)
 ;S N=""
 ;F  S N=$O(@TIUY@(N)) Q:N=""  S II=II+1,@DATA@(II)=@TIUY@(N)_$C(10)
 D GTIT(.TIUY)
 K @TIUY
 ; Check for sub template items
 NEW TITM,SBTIEN
 S TITM=0
 F  S TITM=$O(^TIU(8927,TMPIEN,10,TITM)) Q:'TITM  D
 . S SBTIEN=$P(^TIU(8927,TMPIEN,10,TITM,0),"^",2)
 . D GETBOIL^TIUSRVT(.TIUY,SBTIEN)
 . ;S N=""
 . ;F  S N=$O(@TIUY@(N)) Q:N=""  S II=II+1,@DATA@(II)=@TIUY@(N)_$C(10)
 . D GTIT(.TIUY)
 . K @TIUY
 S II=II+1,@DATA@(II)=$C(31)
 K @TIUY
 Q
 ;
OBJ(DATA,OBIEN) ;EP - BTPW GET TIU OBJECT DEF
 NEW UID,II,TIUY,TY,DTY,ITEMS,BJ,TXT,HDR,LENG,DEFTXT,DEFINDX,REQ,SEPL,MAX,INDENT
 NEW PAD,MINV,MAXV,INCR,URL
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BTPWTIOBJ",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BTPWTIUT D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S HDR="I00010OBJ_IEN^T00030TYPE^T00030DATE_TYPE^T00006LENGTH^T00075DEFAULT_TEXT^T00005DEFINDX^T00003REQ^"
 S HDR=HDR_"T00003SEP_LINE^T00003MAX_LEN^T00002INDENT^T00002PAD^T00004MIN_VAL^T00004MAX_VAL^T00003INCREMENT^"
 S HDR=HDR_"T00240URL^T01024ITEMS"
 S @DATA@(II)=HDR_$C(30)
 D LOADIEN^TIUSRVF(.TIUY,OBIEN)
 S BJ=1
 ; Get definition values
 S TY=$P(TIUY(BJ),U,2),LENG=$P(TIUY(BJ),U,4),DEFTXT=$P(TIUY(BJ),U,5),DEFINDX=$P(TIUY(BJ),U,7)
 S REQ=$$STC^BQIUL2(8927.1,.08,$P(TIUY(BJ),U,8)),SEPL=$$STC^BQIUL2(8927.1,.09,$P(TIUY(BJ),U,9))
 S MAX=$P(TIUY(BJ),U,10),INDENT=$P(TIUY(BJ),U,11),PAD=$P(TIUY(BJ),U,12),MINV=$P(TIUY(BJ),U,13)
 S MAXV=$P(TIUY(BJ),U,14),INCR=$P(TIUY(BJ),U,15),URL=$G(^TIU(8927.1,OBIEN,3))
 I TY="D" S DTY=$P(TIUY(BJ),U,16),DTY=$$STC^BQIUL2(8927.1,.16,TY)
 S TY=$$STC^BQIUL2(8927.1,.02,TY)
 ; Get items
 S ITEMS=""
 F  S BJ=$O(TIUY(BJ)) Q:BJ=""  D
 . I $P(TIUY(BJ),U,1)="I" S TXT=$P(TIUY(BJ),U,2),ITEMS=ITEMS_TXT_$C(29)
 S ITEMS=$$TKO^BQIUL1(ITEMS,$C(29))
 S II=II+1,@DATA@(II)=OBIEN_U_TY_U_$G(DTY)_U_LENG_U_DEFTXT_U_DEFINDX_U_REQ_U_SEPL_U_MAX_U_INDENT_U_PAD_U_MINV_U_MAXV_U_INCR_U_URL_U_ITEMS_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
GTIT(TIUY) ; Get items from boilerplate
 NEW BI,BJ,IEN,VAL
 K TIUX
 S BI=0,BJ=0
 F  S BI=$O(@TIUY@(BI)) Q:BI=""  D
 . NEW VALUE
 . S VALUE=@TIUY@(BI)
 . I VALUE["{FLD:" D
 .. NEW X,XLEN,VAR
 .. S X=VALUE,XLEN=$L(X)
 .. S X=$$DOLMLINE^TIUSRVF1(X)
 .. ; If the length of the updated line is NOT less than the original
 .. ; line length, then it should have translated okay
 .. I $L(X)'<XLEN S VALUE=X Q
 .. S X=VALUE
 .. NEW I,J
 .. F  S I=$F(X,"{FLD:") Q:'I  D
 ... S J=$F(X,"}",I)
 ... I J>0 S NAME=$E(X,I,J-2)
 ... I J=0,X["{" S X=X_@TIUY@(BI+1) Q
 ... I J=0,X'["{" S NAME="",J=I Q
 ... S IEN=$O(^TIU(8927.1,"B",NAME,""))
 ... S VAL="{FLD:"_NAME_"}"
 ... S BJ=BJ+1,@DATA@(BJ)=VAL_U_IEN_U_BI_$C(30),II=BJ
 ... S X=$P(X,VAL,2)
 Q
 ;
DEL(DATA,TIUDA) ;EP -- BTPW DELETE TIU DOCUMENT
 NEW UID,II,ERROR
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BTPWTIDEL",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BTPWTIUT D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 S II=0,@DATA@(II)="I00010RESULT^T00080MESSAGE"_$C(30)
 D DELETE^TIUSRVP(.ERROR,TIUDA,"")
 I 'ERROR S II=II+1,@DATA@(II)="1^"_$C(30) G DONE
 S II=II+1,@DATA@(II)="-1^"_$P(ERROR,"^",2)_$C(30)
 ;
DONE ;
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
SIGN(DATA,TIUDA,SIGN) ;EP -- BTPW SIGN TIU DOCUMENT
 NEW UID,II,RESULT,SIG,SUPRESS,ERROR,TIUX
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BTPWTISIG",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BTPWTIUT D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 S II=0,@DATA@(II)="I00010RESULT^T00080MESSAGE"_$C(30)
 S SIGN=$$DECRYP^XUSRB1(SIGN)
 D SIGCHK^BMXRPC3(.RESULT,SIGN)
 I RESULT=0 S RESULT=-1,MSG="Signature not validated" S II=II+1,@DATA@(II)=RESULT_U_MSG_$C(30) G DONE
 I $E(SIGN,1)'=" " S SIGN=" "_SIGN_" "
 D VALIDSIG^ORWU(.SIG,SIGN)
 S SUPRESS=0 I SIG S SUPRESS=1
 I $D(^TIU(8925,TIUDA,"TEMP")),'$D(^TIU(8925,TIUDA,"TEXT")) D
 . D GETTIU^TIULD(.TIU,TIUDA)
 . D MERGTEXT^TIUEDI1(TIUDA,.TIU)
 . K ^TIU(8925,TIUDA,"TEMP")
 K TIU
 D SIGN^TIUSRVP(.ERROR,TIUDA,SIGN)
 I 'ERROR S II=II+1,@DATA@(II)="1^"_$C(30) G DONE
 S II=II+1,@DATA@(II)="-1^"_$P(ERROR,"^",2)_$C(30)
 G DONE
 ;
SIG(DATA,SIGN) ;EP -- BTPW TIU SIG VALIDATE
 NEW UID,II,RESULT,ERROR
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BTPWSIGVAL",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BTPWTIUT D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 S II=0,@DATA@(II)="I00010RESULT^T00080MESSAGE"_$C(30)
 S SIGN=$$DECRYP^XUSRB1(SIGN)
 D SIGCHK^BMXRPC3(.RESULT,SIGN)
 I RESULT=0 S RESULT=-1,MSG="Signature not validated" S II=II+1,@DATA@(II)=RESULT_U_MSG_$C(30) G DONE
 S II=II+1,@DATA@(II)="1^"_$C(30)
 G DONE
VENPCCKD ; IHS/OIT/GIS - GUI TRANSACTION MANAGER - DEVEL/AUTISM SCREENING COMMENTS ; 
 ;;2.6;PCC+;**1,3**;MAR 23, 2011
 ;
 ;
 ;
FLUSH(VIEN) ; EP - FLUSH RESULTS FROM TX TABLE TO V WELL CHILD AND CLEAN UP
 S OUT=""
 I '$D(^AUPNVSIT(+$G(VIEN),0)) Q
 N TYPE,KEY,DIK,DIC,X,Y,Z,%,TXIEN,DFN
 S DFN=$P($G(^AUPNVSIT(VIEN,0)),U,5) I '$D(^DPT(+DFN,0)) Q
 S KEY=VIEN_"_2",DIK="^VEN(7.16,",DA=0
 F  S DA=$O(^VEN(7.16,"AC",KEY,DA)) Q:'DA  D ^DIK ; CLEAN OUT DEVEL BENCHMARKS FROM TX FILE
 S KEY=VIEN_"_9",TXIEN=0
 F  S TXIEN=$O(^VEN(7.16,"AC",KEY,TXIEN)) Q:'TXIEN  D DF(TXIEN,DFN,VIEN) ; PROCESS EVERY TX
 S DIK="^VEN(7.16,",DA=0
 F  S DA=$O(^VEN(7.16,"AC",KEY,DA)) Q:'DA  D ^DIK ; CLEAN OUT DEVEL COMMENTS FROM TX FILE
 D ^XBFMK
 Q
 ;
DF(TXIEN,DFN,VIEN) ; EP - CREATE THE V WELL CHILD ENTRIES
 N STG,X,Y,Z,%,DIC,DIE,DR,DA,GBL,COM,RES,CAT,FLD,SS,PCE,VWCIEN
 S STG=$G(^VEN(7.16,+$G(TXIEN),0)) I '$L(STG) Q
 S VWCIEN=$$VWC^VENPCCQC(DFN,VIEN) I '$D(^AUPNVWC(+VWCIEN,0)) Q
 S GBL=$NA(^AUPNVWC(VWCIEN))
 S CAT=$P(STG,U,2) I '$L(CAT) Q
 S FLD=$S(CAT["FINE":3.01,CAT["GROSS":3.02,CAT["LANGU":3.03,CAT["SOCIAL":3.04,CAT["AUTISM":9.01,1:"") I 'FLD Q
 S SS=FLD\1,PCE=+$P(FLD,".",2)
 I $D(@GBL@(SS)) S $P(@GBL@(SS),U,PCE)="" ; CLEAN OUT PREVIOUS RESULTS FOR THIS CATEGORY
 S RES=$P(STG,U,7),COM=$P($G(^VEN(7.16,TXIEN,1)),U,2) I RES="",COM="" Q
 S X="",RES=$S(RES="N":"NORMAL",RES="B":"BORDERLINE",RES="A":"ABNORMAL",1:"")
 I $L(RES),$L(COM) S X=RES_": "_COM
 I X="",$L(RES) S X=RES
 I X="" S X=COM
 S X=$E(X,1,60)
 I X="NORMAL: OK" S X="NORMAL"
 S $P(@GBL@(SS),U,PCE)=X
 S OUT="OK"
 Q
 ; 
POP(IN) ; EP - POPULATE THE TX TABLE WITH DEVEL ASSESSMENT INFO
 ; 2 SETS OF ITEMS NEED TO BE POPULATED: BENCHMARKS AND RESULTS.  THESE WILL BE COMBINED INTO ONE GUI TABLE
 N LINE,ARR,VIEN,DFN,TYPE,KEY,DA,DIK,CAT,CNT,FLD,STOP,DIC,X,Y,Z,%
 D VAR^VENPCCKT I '$D(LINE) Q
DEV S (LINE,CNT)=0
DEV1 I LINE="" G DEV2
 S STOP=0
 F  S LINE=$O(LINE(LINE)) Q:'LINE  D  I STOP Q  ; GET STARTING LINE FOR EXAM SUBCATEGORY
 . S CAT=""
 . I LINE(LINE)["FINE MOTOR (%" S STOP=1,CAT="FINE MOTOR",FLD=3.01 Q
 . I LINE(LINE)["GROSS MOTOR (%" S STOP=1,CAT="GROSS MOTOR",FLD=3.02 Q
 . I LINE(LINE)["LANGUAGE (%" S STOP=1,CAT="LANGUAGE",FLD=3.03 Q
 . I LINE(LINE)["SOCIAL (%" S STOP=1,CAT="SOCIAL",FLD=3.04 Q
 . I LINE(LINE)="AUTISM SCREEN" S STOP=1,CAT="AUTISM SCREEN",FLD=9.01 Q
 . Q
DEV2 I 'LINE!(CAT="") D  Q  ; QUIT IF NO MORE DEVEL ITEMS EXIST
 . I CNT S OUT="BMX ADO SS^VEN WCM TX^^AC~"_KEY_"~"_KEY_"~9999"
 . D ^XBFMK
 . Q
 S CAT="WCDA DEVEL "_CAT
 I TYPE=2 D BENCH(.LINE,.CNT,CAT,KEY) G DEV1 ; ADD BENCHMARKS TO TX FILE
 K ARR
 D LAST(DFN,FLD,.ARR) ; BUILD LAST COMMENTS ARRAY
 D TODAY(DFN,FLD,.ARR) ; GET TODAYS RESULTS
 I $D(ARR) D COM(.ARR,.CNT,CAT,FLD,KEY) ; ADD DEVEL COMMENTS TO TX FILE
 G DEV1 ; PROCESS ANOTHER DEV CATEGORY
 ; 
COM(ARR,CNT,CAT,FLD,KEY) ; EP - UPDATE THE TX FILE WITH DEVEL COMMENTS
 N DIC,DA,CIEN,X,Y,%,GBLLAST,LCOM,COM,RES,LAST,VWCIEN,GBL
COM1 S CIEN=$O(^VEN(7.11,"B",CAT,0)) I 'CIEN Q
 S (LAST,LCOM)=""
 S X=$G(ARR("LAST")) I '$L(X) G COM2
 S Y=$P(X,U,2)
 I Y S LAST=$$FMTE^XLFDT(Y,"1D")
 I $L(LAST) S LCOM=$P(X,U)
COM2 S (COM,RES)=""
 S X=$G(ARR("TODAY"))
 S RES=$P(X,U),COM=$P(X,U,2)
CDIC S DIC="^VEN(7.16,",DIC(0)="L",DLAYGO=19707.16
 S X=""""_CIEN_""""
 D ^DIC I Y=-1 Q
 S DA=+Y,GBL=$NA(^VEN(7.16))
 S @GBL@(DA,0)=CIEN_U_CAT_"^^^^"_LAST_U_RES_U_VIEN_U_TYPE_U_KEY_U_U_DT_U ; TX RECORD
 S @GBL@(DA,1)=LCOM_U_COM
 S @GBL@("AC",KEY,DA)="",@GBL@("AD",DT,DA)="" ; INDEXES
 S CNT=CNT+1
 D ^XBFMK
 Q
 ; 
BENCH(LINE,CNT,CAT,KEY)  ; EP - ADD AN ENTRY TO THE OUTPUT ARRAY.  GET BENCHMARKS, LAST RESULTS, AND TODAYS RESULTS
 N DIC,DA,CIEN,STOP,STG,ITEM,X,Y,%,GBL
 S CIEN=$O(^VEN(7.11,"B",CAT,0)) I 'CIEN Q
 S STOP=0
 S DIC="^VEN(7.16,",DIC(0)="L",DLAYGO=19707.16
LINE F  S LINE=$O(LINE(LINE)) Q:'LINE  D  I STOP Q  ; PROCESS EACH LINE IN THE CATEGORY
IVARS . S STG=LINE(LINE)
 . I $E(STG,1,3)'="__ " S STOP=1 Q
 . S %=$E(STG,4,99),ITEM=$P(%,"|") I '$L(ITEM) Q
 . I ITEM?1.3N1". ".E S ITEM=$P(ITEM," ",2,999)
DIC . S X=""""_CIEN_""""
 . D ^DIC I Y=-1 Q
 . S DA=+Y,GBL=$NA(^VEN(7.16))
 . S @GBL@(DA,0)=CIEN_U_CAT_U_U_ITEM_"^^^^^2^"_KEY_U_U_DT_U ; TX RECORD
 . S @GBL@("AC",KEY,DA)="",@GBL@("AD",DT,DA)="" ; INDEXES
 . S CNT=CNT+1
 . Q
 D ^XBFMK
 Q
 ; 
TX ; EP - POPULATE THE TX FILE
 N DIC,X,Y,Z,%
 S DIC="^VEN(7.16,",DLAYGO=19707.16,DIC(0)="L"
 D ^XBFMK
 Q
 ; 
TODAY(DFN,FLD,ARR)  ; EP - GET TODAY'S RESULT
 N VWCIEN,SS,PCE,COM,RES,%,X,Y,Z
 S VWCIEN=$O(^AUPNVWC("AA",DFN,(9999999-DT),0)) I 'VWCIEN Q
 S SS=$P(FLD,".") I 'SS Q
 S PCE=+$P(FLD,".",2) I 'PCE Q
 S COM=$P($G(^AUPNVWC(VWCIEN,SS)),U,PCE) I '$L(COM) Q
 S RES=""
 F X="NORMAL: ","BORDERLINE: ","ABNORMAL: " D  I $L(RES) Q
 . S Y=$L(X)
 . I $E(COM,1,Y)'=X Q
 . S RES=$P(COM,": ")
 . S COM=$P(COM,": ",2,99)
 . Q
 I COM="OK",RES="" S RES="N"
 S RES=$E(RES)
 S ARR("TODAY")=RES_U_COM
 Q
 ; 
LAST(DFN,FLD,ARR) ; EP - GET THE LAST RESULT
 N IDT,STOP,IDTMAX,%,SS,PCE,VWCIEN
 S IDT=9999999-DT,VWCIEN=0,STOP=0
 S %=DT-20000,IDTMAX=9999999-%
 S SS=$P(FLD,".") I 'SS Q
 S PCE=+$P(FLD,".",2) I 'PCE Q
 F  S IDT=$O(^AUPNVWC("AA",DFN,IDT)) Q:'IDT  D  I STOP Q
 . I IDT>IDTMAX S STOP=1 Q
 . S VWCIEN=0 F  S VWCIEN=$O(^AUPNVWC("AA",DFN,IDT,VWCIEN)) Q:'VWCIEN  D  I STOP Q
 .. S X=$P($G(^AUPNVWC(VWCIEN,SS)),U,PCE)
 .. I '$L(X) Q
 .. S ARR("LAST")=X_U_(9999999-IDT)_U_VWCIEN
 .. S STOP=1
 .. Q
 . Q
 Q
 ; 
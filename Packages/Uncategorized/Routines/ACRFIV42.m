ACRFIV42 ;IHS/OIRM/DSD/AEF,MRS - ARMS TO 1166 PAYMENT INTERFACE [ 05/09/2005  8:51 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;**16,17**;JUL 31, 2001
 ;ACR*2.1*16.06 IM15505  ;NEW ROUTINE
 ;
 ; UTILITY EDIT PAYMENT DATA AFTER INVOICE AUDIT COMPLETED
 ;          CONTINUED FROM ACRFIV41
 ;      CALLED TO DO DISCOUNT AND DISCOUNT LOST PROCESSING ONLY
 ;
LOST(ACRTERMS) ;EP;INDICATE THE PERCENT OF DISCOUNT LOST
 ;TEMPORARY OUT OF ORDER MESSAGE
 W !!!,"The Discount Lost option is not available at this time"
 D PAUSE^ACRFWARN
 Q
 S DIR(0)="NOA^0:99"
 S DIR("A")="Percent of the Discount Lost: "
 W !
 D DIR^ACRFDIC
 Q:$D(ACROUT)
 I +Y D
 . S $P(ACRTERMS,U,3)=+Y
 . S ACRT=-2     ;Flag/Capture rate
 I $G(ACRTERMS)="" D
 .S DIR(0)="NOA^0:100000:2"
 .S DIR("A")="Actual Dollar amount LOST...: "
 .W !
 .D DIR^ACRFDIC
 .I +Y D
 . . S $P(ACRTERMS,U,2)=+Y
 . . S ACRT=-2            ;Flag/Capture amount
 I $G(ACRTERMS)="" D  Q
 .W !!,"NO Lost Discount will be recorded."
 .K ACRTERMS
 .Q
 S $P(ACRTERMS,U,14)=ACRT
 D PAY^ACRFIV43(.ACRIVPAY,.ACRIVT,.ACRTERMS,.ACRT)
 D CORRECT^ACRFIV43(.ACRDT,.ACRPCNT,.ACRIVDC,.ACRTERMS,.ACRIVTF)
 I '$D(ACRDT) D KILL G LOST
 S $P(ACRTERMS,U,8)=19817               ;Discount Lost transaction code
 Q
 ;
DISCOUNT(ACRTERMS,ACRDT,ACROUT,ACRQUIT,ACRIVPAY) ;EP;DISCOUNT TERMS
DISC K ACRDT,ACRQUIT,ACRTERMS,ACRTYPE,ACRT
 N J,X,Y,Z
 D DTSEL
 Q:$D(ACRQUIT)
 I $G(ACRTERMS)="" D
 .W !!,"No DISCOUNT TERMS selected for this PAYMENT"
 .D KILL
 I ACRT]"",ACRT'=-1 D DCAN(.ACRTERMS,ACRT,.ACRIVDIS)
 D PAY^ACRFIV43(.ACRIVPAY,.ACRIVT,.ACRTERMS,.ACRT)
 D CORRECT^ACRFIV43(.ACRDT,.ACRPCNT,.ACRIVDC,.ACRIVTF)
 I '$D(ACRDT) D  G DISC
 .D KILL
 .K ACRQUIT
 K ACRQUIT
 Q
 ;
DTSEL ;EP;SELECT TERMS APPLICABLE TO THIS PAYMENT
 S ACRTYPE="APPLY"
 S DIR(0)="SO^1:Discount Percent;2:Actual Dollar Discount"
 S DIR(0)=DIR(0)_";3:No Discounts;4:Discount Adjustments Complete"
 S DIR("A")="Discount Method"
 D DIR^ACRFDIC
 I '$G(Y) S ACRQUIT="" Q
 I Y=1 D  S Y=1                    ;UPDATE/SELECT VENDOR DISCOUNT TERMS
 .D DT^ACRFDT
 .;I $D(ACRQUIT)!$G(ACRDTDA)']"" D  Q     ;ACR*2.1*17.09 IM17312
 .I $D(ACRQUIT)!($G(ACRDTDA)']"") D  Q     ;ACR*2.1*17.09 IM17312
 ..W !!,"No DISCOUNT TERMS selected for this PAYMENT"
 ..D KILL
 .S $P(ACRTERMS,U)=$P(ACRDTDA,U)        ;Discount Days
 .S $P(ACRTERMS,U,3)=$P(ACRDTDA,U,2)     ;Discount % Rate
 .S ACRT=1                              ;Discount w/percentage
 ;
 I Y=2 D DAMT
 Q:$G(ACRTERMS)=""
 S $P(ACRTERMS,U,8)="05025"             ;Discount transaction code
 S $P(ACRTERMS,U,12)=ACRIVTF            ;Invoice total
 S $P(ACRTERMS,U,14)=ACRT               ;Type int/dsc (0 or 1)
 ;
 I Y=3 D
 .D KILL
 .S ACRQUIT=""
 Q
DAMT ;SELECT DISCOUNT DOLLAR AMOUNT
 S DIR(0)="NOA^0:99999:2"
 S DIR("A")="Discount Dollar Amount: "
 W !
 D DIR^ACRFDIC
 I $D(ACRQUIT)!$G(ACRDTDA)']"" D  Q
 .W !!,"No DISCOUNT TERMS selected for this PAYMENT" K ACRTERMS
 ;S $P(ACRTERMS,U,1,2)="D"_U_Y
 S $P(ACRTERMS,U,2)=Y
 S ACRT=0                               ;Discount w/dollar amount given
 Q
DCAN(ACRTERMS,ACRT,ACRIVDIS) ;DETERMINE WHICH OCC/SET SEPARATE DISCOUNT AMOUNTS PER OCC
 N ACR,ACRA,ACRC,ACRO,ACRJ,ACRDCNT,ACRPC
 S (ACRC,ACRJ,ACRPCTOT)=0
 S ACRDCNT=$$OBJCNT^ACRFIV43(.ACRIVPAY)
 Q:'ACRDCNT
 F  S ACRC=$O(ACRIVPAY(ACRC)) Q:'ACRC  D
 .S ACRO=0
 .F  S ACRO=$O(ACRIVPAY(ACRC,ACRO)) Q:'ACRO  D
 ..S ACR=ACRIVPAY(ACRC,ACRO)                 ;ORIGINAL ITEM AMOUNT
 ..S ACRA=$P(ACRTERMS,U,2)                   ;DISCOUNT DOLLAR AMOUNT
 ..S ACRATE=$P(ACRTERMS,U,3)                 ;DISCOUNT RATE
 ..S ACRTOT=$P(ACRTERMS,U,12)                ;FULL INVOICE AMOUNT
 ..S ACRPC=$$PERCNT(ACR,ACRA,ACRATE,ACRTOT)
 ..S ACRPCTOT=ACRPCTOT+ACRPC
 ..D C1(ACR,.ACRIVDIS,ACRC,ACRO,ACRT,ACRPC,ACRPCTOT)
 S:$P(ACRTERMS,U,2)="" $P(ACRTERMS,U,2)=ACRPCTOT
 Q
 ;
C1(ACRORG,ACRIVDIS,ACRCANDA,ACROBJDA,ACRT,ACRPC,ACRP)    ;LOCAL ENTRY
 ; Sets ACRIVDIS(ACRCANDA,ACROBJDA array using ACRT
 ; ACRT >0 = Discount w/percentage
 ; ACRT =0 = Discount w/amount given
 ; ACRT -1 = Interest penalty amount
 ; ACRT -2 = Discount Lost
 ; If an interest penalty, uses fixed OCC=4319 = INTEREST-ALL OTHER
 ;
 ;S ACROBJDA=$S(ACRT>0:1,ACRT=0:1,1:$O(^AUTTOBJC("C",4319,0)))
 I ACRT=1!(ACRT=0) D                              ;DISCOUNT TAKEN FLAG
 .S ACRIVDIS(ACRCANDA,ACROBJDA)=ACRORG-ACRPC      ;-DISCOUNT AMOUNT
 .S ACRIVDIS(ACRCANDA,ACROBJDA,"D")=ACRPC
 .S ACRIVDIS(ACRCANDA,"D")=ACRP               ;TOTAL DISCOUNT ON INVOICE
 ; Changes below by Linda to test Interest display on individual items
 ;I ACRT<0 D                                   ;INTEREST PENALTY
 I ACRT=-2 D             ;LSL  (Discount Lost)
 .S ACRIVDIS(ACRCANDA,ACROBJDA)=ACRP          ;PENALTY AMOUNT
 .S ACRIVDIS(ACRCANDA,ACROBJDA,"P")=ACRP
 .S ACRIVDIS(ACRCANDA,"P")=ACRP
 I ACRT=-1 D             ;LSL (Interest)
 .S ACRIVDIS(ACRCANDA,ACROBJDA)=ACRPC          ;PENALTY AMOUNT
 .S ACRIVDIS(ACRCANDA,ACROBJDA,"P")=ACRPC
 .S ACRIVDIS(ACRCANDA,"P")=ACRPC
 Q
PERCNT(ACRAMT,ACRA,ACRATE,ACRTOT)    ;EXTRINSIC FUNCTION TO CALCULATE PERCENTAGE
 ;  ENTERS WITH ACRAMT: ORIGINAL AMOUNT DUE FOR ITEM
 ;              ACRA  : DOLLAR AMOUNT TO BE DISCOUNTED, IF THERE or
 ;              ACRATE: PERCENTAGE TO BE DISCOUNTED, IF THERE
 ;              ACRTOT: TOTAL AMOUNT OF INVOICE
 ;  RETURNS AMOUNT OF DISCOUNT
 ;              
 N ACR
 I ACRA]"" D
 .S ACRATE=ACRA/ACRTOT                     ;CREATE PERCENTAGE
 S:ACRATE'["." ACRATE=ACRATE/100
 S ACR=ACRATE*ACRAMT
 S ACR=$J(ACR,"P",2)
 I ACR<0 S ACR=0
 Q ACR
KILL ; KILL VARIABLES IF NOT CORRECT
 K ACRTERMS
 K ACRIVDIS
 K ACRQUIT
 S ACRT=""
 Q
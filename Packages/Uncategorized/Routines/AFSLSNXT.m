AFSLSNXT ;IHS/OIRM/DSD/HJT - BATCH# GEN;   [ 09/27/2005  4:27 PM ]
 ;;3.0t1;1166 APPROVALS FOR PAYMENT;**19**;AUG 31, 2005
 ;Modified for Y2k Compliance
 ;Opens and generates batch number
 K AFSLSFND,AFSLSNOD,AFSLSZRO
 S AFSLSCDT="NOW",(AFSLCOFF,AFSLSNXT,AFSLSTAT,AFSLUSR,AFSLERR,AFSL2OPN,AFSLTSCD)="",AFSLEBDT="MMDDYY",Y="-1",AFSLOPN="O",AFSLZROS="0000000000"
PFX ;
 S AFSLSIT=$P(^AUTTSITE(1,0),U,1),AFSLARNM=$P(^AUTTLOC(AFSLSIT,0),U,4),AFSLAREA=$P(^AUTTAREA(AFSLARNM,0),U,2),AFSLPFX=AFSLAREA
FYR ;
 ;Begin Y2k Modifications
 D ^XBCLS,CRTSETUP^AFSLCRTS W !!!,"    FISCAL YR FOR WHICH TO OPEN A BATCH/SCHEDULE (i.e.,  ""1991""): " S AFSLCHRS=4 D READCHRS^AFSLSRDR S AFSLFYR=AFSLVOUT   ;Y2000
 I AFSLFYR=""!(AFSLFYR="^") S AFSLERR="" G FINI
 I AFSLFYR'?4N S AFSLERR="INVALID ENTRY" G FINI   ;Y2000
 ;End Y2k Modifications
 D ^AFSLYRLU
 I Y<1 S AFSLERR="FISCAL YEAR NOT INITIALIZED IN FILE YET." G FINI
 D DSPF,^AFSLCTLU,EXPBDT ;I AFSL2OPN="1" S AFSLERR="" G FINI
 D SCHD G FINI
DSPF ;
 D ^XBCLS
 S DY=2,DX=23 X XY W @AFSLRVON,"1166 APPROVALS FOR PAYMENT SYSTEM"
 S DY=4,DX=31 X XY W "OPEN A BATCH/SCHEDULE",@AFSLRVOF
 S DY=8,DX=2 X XY W "BATCH/SCHEDULE NO.: ",@AFSLRVON,AFSLSNXT,@AFSLRVOF
 S DX=30 X XY W "DATE/TIME:",@AFSLRVON,AFSLSCDT,@AFSLRVOF
 S DX=60 X XY W "DUE DATE:  ",@AFSLRVON,AFSLEBDT,@AFSLRVOF
 S DY=9,DX=2 X XY W "TREASURY#: ",@AFSLRVON,AFSLTSCD,@AFSLRVOF
 S DY=18,DX=31 X XY W @AFSLRVON,AFSLSTAT,@AFSLRVOF
 ;S DY=20,DX=15 X XY W "CERTIFYING OFFICER:   ",@AFSLRVON,AFSLCOFF,@AFSLRVOF
 S DY=21,DX=15 X XY W "ACCOUNTING TECHNICIAN:",@AFSLRVON,AFSLUSR,@AFSLRVOF
 S DY=22,DX=15 X XY W @AFSLRVON,AFSLERR,@AFSLRVOF S AFSLERR=""
 Q
EXPBDT ;
 S DY=8,DX=71 X XY S AFSLCHRS=6 D READCHRS^AFSLSRDR S AFSLEBDT=AFSLVOUT
 I AFSLEBDT=""!(AFSLEBDT["^") S AFSLERR="" Q
 I AFSLEBDT'?6N W *7 S AFSLERR="***MUST ENTER 6 DIGITS**",DY=23,DX=15 X XY W @AFSLRVON,AFSLERR,@AFSLRVOF S AFSLERR="" G EXPBDT
 I $E(AFSLEBDT,1,2)<1!($E(AFSLEBDT,1,2)>12) W *7 S AFSLERR="ENTERED MONTH IS INVALID",DY=23,DX=15 X XY W @AFSLRVON,AFSLERR,@AFSLRVOF S AFSLERR="" G EXPBDT
 I $E(AFSLEBDT,3,4)<1!($E(AFSLEBDT,3,4)>31) W *7 S AFSLERR="*ENTERED DAY IS INVALID*",DY=23,DX=15 X XY W @AFSLRVON,AFSLERR,@AFSLRVOF S AFSLERR="" G EXPBDT
 S %H=$H D YX^%DTC S AFSLSCDT=$E(X,4,7)_$E(X,2,3)
 I AFSLEBDT<AFSLSCDT W *7 S AFSLERR="DUE DATE CANNOT BE < TODAY",DY=23,DX=15 X XY W @AFSLRVON,AFSLERR,@AFSLRVOF S AFSLERR="" H 3 X XY W "                           " G EXPBDT
 ;
 S ZZ=1,AFSLDFND(ZZ)="",AFSLNXSC=0,X=AFSLEBDT D ^%DT S AFSLSDDT=Y D CHKDT
 Q
SCHD ;
 I AFSLEBDT=""!(AFSLEBDT["^") Q
 S DY=10,DX=10 X XY W @AFSLRVON,"TREASURY SCHEDULE FOR WHICH THIS BATCH IS PLANNED FOR EXPORT:",@AFSLRVOF S AFSLCHRS=6 D READCHRS^AFSLSRDR S AFSLTSCD=AFSLVOUT
 I '$D(^AFSLAFP(AFSLYNOD,1,0)) S $P(^AFSLAFP(AFSLYNOD,1,0),U,1)="^9002325.01^0^0"
 I $P(^AFSLAFP(AFSLYNOD,1,0),U,4)="0" S DIC="^AFSLAFP("_AFSLYNOD_",1,",DA(1)=AFSLYNOD,DIC(0)="L",DLAYGO="9002325.01",X=AFSLPFX_"0001",AFSLSNXT=X D ^DIC,SETF
EXTYP ;
 S DY=15,DX=10 X XY W "                                                            "
 S DY=20,DX=15 X XY W "                         "
 S DY=21,DX=15 X XY W "                         "
 S DY=11,DX=1 X XY W " "
 K DIR S DIR(0)="S^T:TAPE (CHECK FORMAT GROUPED BY PAYEE;A:ACH (GROUPED BY PAYEE);B:ACH (ONE ENCLOSURE PER ENTERED PMT);C:CHECKS (GROUPED BY PAYEE)",DIR("A")="TREASURY FORMAT TYPE?",DIR("B")="A"
 D ^DIR
 S AFSLTPEX=X
 I $D(DTOUT)!($D(DUOUT))!($D(DIROUT)) S AFSLERR="" Q
 I AFSLTPEX="" S AFSLTPEX="A"
 I AFSLTPEX["^" S AFSLERR="" Q
 I AFSLTPEX="A" W !!,@AFSLRVON,"NOTE:  WHEN ENTERING INTO AN 'ACH-FORMAT-A' BATCH/SCHEDULE, YOU'LL ONLY",!,"       BE ALLOWED TO ENTER *1* ADDENDUM PER UNIQUE PAYEE IN BATCH.",@AFSLRVOF,"  <PRESS RETURN>" R AFSLRTNX:300 G FNDLST
 I AFSLTPEX="B" W !!,@AFSLRVON,"NOTE:  WHEN ENTERING PMTS INTO AN 'ACH-FORMAT-B' BATCH/SCHEDULE, YOU'LL BE      ",!,"       ASKED TO ENTER AN 80-COLUMN ADDENDUM FOR EACH PAYMENT ENTERED."
 I AFSLTPEX="B" W !!,"       PLEASE ENTER THE ADDENDUM FOR EACH UNIQUE PAYEE FOR THE SCHEDULE INTO THE",!,"       *** FIRST *** PAYMENT ENTERED FOR THE PAYEE.",@AFSLRVOF,"   <PRESS RETURN/ENTER>" R AFSLRTNX:300
FNDLST ;
 S AFSLSLST=0
FNDLST2 ;
 I '$O(^AFSLAFP(AFSLYNOD,1,"B",AFSLSLST)) G SCHD2
 S AFSLSLST=$O(^AFSLAFP(AFSLYNOD,1,"B",AFSLSLST))
 G FNDLST2
SCHD2 ;
 I AFSLSLST=0 S AFSLSLST=AFSLAREA_"0000"
 S AFSLSNXT=AFSLSLST+1
 S AFSLSNXT=AFSLTSCD
 S AFSLBNUM=$E(AFSLSNXT,3,6)
 I AFSLBNUM>9999 W !,"YOU MAY NOT EXCEED 9,999 BATCHES IN A FISCAL YEAR.  NOTIFY ADP MANAGER." G FINI
 I $L(AFSLSNXT)'=6 W !,"PROBLEM ENCOUNTERED COMPUTING NEXT AVAILABLE BATCH#.  NOTIFY ADP MANAGER" G FINI
 S DIC="^AFSLAFP("_AFSLYNOD_",1,",DA(1)=AFSLYNOD,DIC(0)="L",DLAYGO="9002325.01",X=AFSLSNXT D ^DIC
 I $D(AFSLRFLG) S AFSLY=Y
 D SETF
 Q
FINI ;
 I $D(AFSLRFLG) Q
 I '$D(AFSLERR) G ERRSKP
 I '$D(AFSLRVON) D CRTSETUP^AFSLCRTS
 S DY=22,DX=20 X XY W @AFSLRVON,AFSLERR,@AFSLRVOF,*7
 S DY=23,DX=54 X XY W @AFSLRVON,"<PRESS RETURN/ENTER>",@AFSLRVOF R AFSLRTNX:300
ERRSKP ;
 K AFSLCERO,AFSLCERT,AFSLCNOD,AFSLCNXT,AFSLCOFF,AFSLEBDT,AFSLERR,AFSLFYR,AFSLOPN,AFSLPFX,AFSLRTNX,AFSLSCHD,AFSLUSER,AFSLCHRS,AFSLVOUT
 K AFSLSCDT,AFSLSFND,AFSLSLST,AFSLSNOD,AFSLSNXT,AFSLSTAT,AFSLSZRO,AFSLZROS,AFSLUSR,AFSLYNOD,AFSLRVOF,AFSLRVON,AFSLYFND,AFSLYZRO
 K AFSL2OPN,AFSLOPT,AFSLAREA,AFSLARNM,AFSLDFND,AFSLNXSC,AFSLSDDT,AFSLSIT,AFSLXAST,AFSLSAD,AFSLE,AFSLSOPN
 K AFSLVDTE,AFSLVIOL,DIE,DIK,DIC,DLAYGO,DR,DX,DY,ZZ
 QUIT
SETF ;
 D ^AFSLCTLU
 S AFSLSCHD=AFSLSNXT D ^AFSLSCLU
 S %H=$H D YX^%DTC S AFSLSCDT=Y
 ;S AFSLUSR=$P(^VA(200,DUZ,0),U,1),AFSLCERT=$P(^AFSLCERT(AFSLCNOD,0),U,1),AFSLCOFF=$P(^VA(200,AFSLCERT,0),U,1)  ;ACR*2.1*19.02 IM16848
 S AFSLUSR=$$NAME2^ACRFUTL1(DUZ)        ;ACR*2.1*19.02 IM16848
 S AFSLCERT=$P(^AFSLCERT(AFSLCNOD,0),U)        ;ACR*2.1*19.02 IM16848
 S AFSLCOFF=$$NAME2^ACRFUTL1(AFSLCERT)  ;ACR*2.1*19.02 IM16848
 S AFSLCERO=AFSLCNOD
 I '$D(AFSLTPEX) S AFSLTPEX=""
 S DA=AFSLSNOD,DIE=DIC,DR="1///^S X=AFSLSCDT;2///^S X=AFSLCERO;3///^S X=AFSLEBDT;6///^S X=AFSLOPN;8///^S X=AFSLUSR;10///^S X=AFSLTSCD;22///^S X=AFSLTPEX"
 L +^AFSLAFP(AFSLYNOD,1,AFSLSNOD,0):0 I $T D ^DIE L -^AFSLAFP(AFSLYNOD,1,AFSLSNOD,0)
KEEPYN ;
 I $D(Y) S DIK=DIE D ^DIK S AFSLSTAT="**NOT OPENED**" Q
 S AFSLSTAT="****OPENED****"
 D DSPF
 Q
CHKDT ;
 I '$O(^AFSLAFP("J",AFSLSDDT,AFSLYNOD,AFSLNXSC)) S AFSLDFND(ZZ)="",ZZ=1 G CHKOPN
 S AFSLDFND(ZZ)=$O(^AFSLAFP("J",AFSLSDDT,AFSLYNOD,AFSLNXSC))
 S AFSLNXSC=$O(^AFSLAFP("J",AFSLSDDT,AFSLYNOD,AFSLNXSC)),ZZ=ZZ+1 G CHKDT
CHKOPN ;
 Q:AFSLDFND(ZZ)=""
 S AFSLSOPN=AFSLDFND(ZZ)
 I $D(^AFSLAFP("K","O",AFSLYNOD,AFSLSOPN)) D CHKCO
 S ZZ=ZZ+1 G CHKOPN
 Q
CHKCO ;
 S AFSLSCHD=$P(^AFSLAFP(AFSLYNOD,1,AFSLSOPN,0),U,1)
 I $D(^AFSLAFP("C",AFSLCNOD,AFSLYNOD,AFSLSOPN)) S AFSL2OPN="1",DY=15,DX=10 X XY W @AFSLRVON,"WARNING: BATCH ",AFSLSCHD," IS ALREADY OPEN FOR DUE DATE ",AFSLEBDT,".",@AFSLRVOF,*7
 Q
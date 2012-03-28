AICDGRP1 ; IHS/OHPRD/GIS - SUPERGROUPER: GROUPER WITH SMART DX AND OP LOOKUP AND PRIORITIZED DISPLAY OF ALL DRG DIAGNOSES ; [ 12/31/2002  1:16 PM ]
 ;;3.51;IHS ICD/CPT lookup & grouper;**1,6**;MAY 30, 1991
PAT G PAT^AICDGRP
DXS K AICDDX S OR="",SD="",SD1=1
 F AICDI=1:1 W ! S AICDPRMT="Enter Diagnosis No. "_AICDI_": " D DLOOKUP Q:"^"[X  S:Y=-1 AICDI=AICDI-1 I Y'=-1 S AICDDX(AICDI)=Y,AICDDX(AICDI,0)=Y(0),AICDTOT=AICDI
 I '$D(AICDDX) G PAT
OP W ! F NOR=0:1 S AICDPRMT="Enter Operation/Procedure: " D PLOOKUP Q:"^"[X  I Y>0 S DA=+Y,OR=OR_$P(Y(0),U,2) F ORG=0:0 S ORG=$O(^ICD0(DA,"DR",ORG)) Q:ORG'>0  S %=$P(^ICD(ORG,0),U,5) I % S ORG(%,ORG)=""
 G:X["^" Q
SUB F NSD=1:1:AICDTOT S Y(0)=AICDDX(NSD,0),SD=SD_$P(Y(0),U,2) S:$P(Y(0),U,2)'["g" SD1=0
MAKEARR F AICDJ=1:1:AICDTOT D ARR
LIST ;
 S (X,W)="",S=3,$P(X,"-",81)="" W !!,X,!
 S AICDN="" F AICDI=1:1 S AICDN=$O(AICDE(AICDN)) Q:AICDN=""  D NARR I W=U G PAT
 S X="" S $P(X,"-",81)="" W !,X,!!
 G PAT
 ;
NARR I X=AICDE(AICDN) S AICDI=AICDI-1 Q
 S X=AICDE(AICDN) X LINE G:W=U NARRQ W "RANK: ",AICDI,$J(("DRG: "_$E($P(X,U),4,99)),15),$J(("IHS WEIGHT: "_$P(X,U,7)),22),$J(("ALOS: "_$P(X,U,8)),15)
 X LINE G:W=U NARRQ W "ICD9: "
 F AICDJ=1:1 Q:'$D(AICDE(AICDN,AICDJ))  S Y=AICDE(AICDN,AICDJ) W:AICDJ>1 "      " W "(",$P(Y,U),")  ",$P(Y,U,3) X LINE G:W=U NARRQ
 S AICDJ=0 W "DRG: (",$E($P(X,U),4,99),")  "
 F AICDL=1:1 S AICDJ=$O(^ICD($E($P(X,U),4,99),1,AICDJ)) Q:AICDJ'=+AICDJ  W:AICDL>1 "     " W ^(AICDJ,0) X LINE G:W=U NARRQ
NARRQ Q
 ;
ARR S Y=AICDDX(AICDJ),Y(0)=AICDDX(AICDJ,0),MDC=$P(Y(0),U,5) I MDC=469 Q
CD K RG
 S PD=$P(Y(0),U,2),RG=0 I MDC=12 S MDC=$S(SEX="F":13,1:12)
 F NDR=1:1 S RG=$O(^ICD9(+Y,"DR",RG)) Q:RG'>0  S RG(RG)=""
MORE I MDC=5,'NOR!(OR'["O") D MI,WRT:RG>0 Q
 I MDC=18,OR["O" S RG=415 D WRT Q
 I MDC=19,OR["O" S RG=424 D WRT Q
 I MDC=23,OR["O" S RG=461 D WRT Q
 I MDC=14 D ^DGDRG14,WRT Q
 I MDC=20,DAM S RG=433 D WRT Q
 I MDC=22 S:'$D(TAC) TAC=0 S RG=$S(TAC:456,PD["*"!(SD["*"):457,OR'["O":460,1:0) I RG D WRT Q
 I MDC=15,TRS!EXP S RG=385 D WRT Q
 I MDC=15,SD1 S RG=391 D WRT Q
 I 'NOR,NDR<3 S RG=$O(RG(0)) D:RG'>0 469 D WRT Q
 I 'NOR S RG=$O(RG(0)) X:$D(^ICD(RG,"MC")) ^ICD(RG,"MC") D WRT Q
 D ^DGDRG6:MDC=6,^DGDRG8:MDC=8,^DGDRG2:MDC=2,^DGDRG3:MDC=3 S RG=$O(ORG(MDC,0)) G:RG'>0 NOP X:$D(^ICD(RG,"MC")) ^ICD(RG,"MC") D WRT Q
NOP I OR["O",MDC'=20 D 468 Q
D S RG=$O(RG(0)) X:$D(^ICD(RG,"MC")) ^ICD(RG,"MC") D:RG'>0 469 D WRT Q
WRT D:'$D(RG) 469 Q:RG<0  S DRGCAL=^ICD(RG,0),AICDN=$P(DRGCAL,U,7) I AICDN'="" D SETDRG
 Q
SETDRG I '$D(AICDE(9-AICDN)) S AICDE(9-AICDN)=DRGCAL,AICDE(9-AICDN,1)=Y(0) Q
 I DRGCAL'=AICDE(9-AICDN) S AICDN=AICDN+.000001 G SETDRG
 F I=1:1 I '$D(AICDE(9-AICDN,I)) S AICDE(9-AICDN,I)=Y(0) Q
 Q
 ;
469 S RG=469 W *7,!!,"DRG= 469 PDX INVALID AS DISCHARGE DIAGNOSIS" Q
468 ;
 S OR="",NOR=0 K AICDVAR
 D CD
 Q
MI I PD["I"!(SD["I") S RG=$S($S($D(EXP):EXP,1:0):123,PD["V"!(SD["V"):121,1:122) Q
CATH I OR["H" S RG=$S(PD["X"!(SD["X"):124,1:125) Q
 S RG=$O(RG(0)) X:$D(^ICD(RG,"MC")) ^ICD(RG,"MC") D:RG'>0 469 Q
 Q
Q G Q^AICDGRP
DLOOKUP N (X,Y,AICDPRMT) K DIC S DIC="^ICD9(",DIC("A")=AICDPRMT,DIC(0)="AEMQZ" D ^DIC Q  ;*1*
PLOOKUP N (X,Y,AICDPRMT) K DIC S DIC="^ICD0(",DIC("A")=AICDPRMT,DIC(0)="AEMQZ" D ^DIC Q  ;*1*
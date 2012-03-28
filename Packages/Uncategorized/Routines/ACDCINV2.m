ACDCINV2 ;IHS/ADC/EDE/KML - DATA ADD FOR INTERVENTIONS;
 ;;4.1;CHEMICAL DEPENDENCY MIS;;MAY 11, 1998
 ;
START ;
 D MAIN
 D EOJ
 Q
 ;
MAIN ;
 D INIT
 Q:ACDQ
 F  D GETDATA Q:ACDQ  ;      get data until no more
 Q
 ;
INIT ;
 S ACDQ=1
 Q:'$D(IOF)
 Q:'$G(DUZ(2))
 Q:'$D(^ACDF5PI(DUZ(2),0))  ;   should never happen
 S ACDPGM=DUZ(2)
 Q:'$G(IO)
 S Y=$O(^%ZIS(1,"C",IO,0)) I Y S Y=$P($G(^%ZIS(1,Y,"SUBTYPE")),U) I Y S X=$G(^%ZIS(2,Y,5)),ACDRVON=$P(X,U,4),ACDRVOF=$P(X,U,5)
 I $G(ACDRVON)="" S ACDRVON="""""",ACDRVOF=""""""
 S ACDDUZZ=DUZ(2)
 K ^TMP("ACD",$J),^TMP($J)
 S ACDQ=0
 Q
 ;
GETDATA ; GET INTERVENTION DATA/GENERATE RECORDS
 D GETVDATE ;              get visit date
 Q:ACDQ
 F  D GETPATS Q:ACDQ  ;    get patients until no more
 W !
 S ACDQ=0
 Q
 ;
GETVDATE ; GET VISIT DATE
 S ACDQ=1
 S DIR(0)="9002173.5,.01",DIR("A")="VISIT DATE" K DA D ^DIR K DIR
 Q:$D(DIRUT)
 S (ACDDOV,ACDVDTI)=Y,ACDVDTE=Y(0)
 S ACDQ=0
 Q
 ;
GETPATS ; GET PATIENTS
 D GETPAT
 Q:ACDQ
 S DIC="^ACDINTV(",DIC(0)="L",DLAYGO=9002173.5,X=ACDVDTI
 S DIC("DR")="1////"_ACDDFN_";2////"_ACDTRBCD_";3////"_ACDSEX_";4////"_ACDAGE_";19////"_ACDPGM_";22////"_ACDSTACD_";23////"_ACDSTA_";24////"_ACDTRB_";25////"_ACDVET
 D FILE^ACDFMC
 I +Y<0 W !,"Creation of INTERVENTION entry failed.  Notify programmer.",!! S ACDQ=1 S:$D(^%ZOSF("$ZE")) X="CDMIS INTERVENTION",@^("$ZE") D @^%ZOSF("ERRTN") Q
 W !!,"---------- INTERVENTION INFO SECTION ----------"
 S ACDIVIEN=+Y
 S DIE="^ACDINTV(",DIE("NO^")="BACK",DA=ACDIVIEN,DR="[ACD INTERVENTIONS ADD]"
 D DIE^ACDFMC
 I $D(DTOUT)!($D(Y)) S DIK="^ACDINTV(",DA=ACDIVIEN D ^DIK W !,"** INCOMPLETE OR INCORRECT INTERVENTION ENTRY DELETED **"
 Q
 ;
GETPAT ; GET PATIENT DATA
 W !!
 D GETNAME
 Q:ACDQ
 W !!,"---------- PATIENT DEMOGRAPHIC SECTION ----------"
 D GETSEX
 Q:ACDQ
 D GETAGE
 Q:ACDQ
 D GETSTATE
 Q:ACDQ
 D GETTRIBE
 Q:ACDQ
 D GETVET
 Q:ACDQ
 Q
 ;
GETNAME ; GET PATIENT NAME
 S ACDQ=1
 S DIR(0)="FO^3:30",DIR("A")="Enter patient's name" K DA D ^DIR K DIR
 Q:$D(DIRUT)
 Q:Y=""
 S ACDDFN=Y
 S ACDQ=0
 Q
 ;
GETSEX ; GET PATIENT SEX
 S ACDQ=1
 S DIR(0)="SO^M:MALE;F:FEMALE",DIR("A")="Enter patient's sex" K DA D ^DIR K DIR
 Q:$D(DIRUT)
 Q:Y=""
 S ACDSEX=Y
 S ACDQ=0
 Q
 ;
GETAGE ; GET PATIENT AGE
 S ACDQ=1
 S DIR(0)="NO^1:120:0",DIR("A")="Enter patient's age" K DA D ^DIR K DIR
 Q:$D(DIRUT)
 Q:Y=""
 S ACDAGE=Y
 S ACDQ=0
 Q
 ;
GETSTATE ; GET PATIENT STATE OF RESIDENCE
 S ACDQ=1
 S DIR(0)="9002173.5,23",DIR("A")="Enter patient's state of residence" K DA D ^DIR K DIR
 Q:$D(DIRUT)
 Q:Y=""
 S ACDSTA=+Y
 S ACDSTACD=$$VALI^XBDIQ1(5,ACDSTA,2)
 S ACDQ=0
 Q
 ;
GETTRIBE ; GET PATIENT TRIBE OF MEMBERSHIP
 S ACDQ=1
 S DIR(0)="9002173.5,24",DIR("A")="Enter patient's tribe" K DA D ^DIR K DIR
 Q:$D(DIRUT)
 Q:Y=""
 S ACDTRB=+Y
 S ACDTRBCD=$$VALI^XBDIQ1(9999999.03,ACDTRB,.02)
 S ACDQ=0
 Q
 ;
GETVET ; GET PATIENT VETERAN STATUS
 S ACDQ=1
 S DIR(0)="9002173.5,25",DIR("A")="Is patient a veteran",DIR("B")="N" K DA D ^DIR K DIR
 Q:$D(DIRUT)
 Q:Y=""
 S ACDVET=Y
 S ACDQ=0
 Q
 ;
EOJ ;
 D ^ACDKILL
 Q
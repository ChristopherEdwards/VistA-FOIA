BMCMODS ;IHS/ITSC/FCJ - EDIT SECONDARY REFERRAL ;   
 ;;4.0;REFERRED CARE INFO SYSTEM;**3,6**;JAN 09, 2006
 ;
 ; This option allows the user to EDIT Secondary Referrals
 ;   BMCRIEN=Primary referral
 ;   BMCSRIEN=Secondary referral ien
 ;   BMCVCT=Vist count
 ;4.0 ADDED THE BMCMODE VARIABLE AND TYPE OF REF TO EDIT
 ;4.0*3 8.13.07 IHS.OIT.FCJ ADD BO/CHS COMMENTS
 ;4.0*3 12.10.2007 IHS.OIT.FCJ ADDED EP LABEL TO LINES EDIT AND MEDHX
 ;4.0*6 4.22.2010 IHS.OIT.FCJ MODIFIED TO ALLOW EDIT OF CLOSED REF
 ;
START ;
 D:'$D(BMCPARM) PARMCHK^BMC
 F  D MAIN Q:BMCQ  D HDR^BMC
 G EXIT
 Q
 ;
MAIN ;
 S BMCQ=0,BMCMODE="M"
 D GETREF ;             get referral record to modify
 Q:BMCQ
 D EDIT  Q:BMCQ  ;EDIT SEC REF
 D MEDHX
 D SBCOM     ;BMC*4.0*3 8.13.07 IHS.OIT.FCJ ADD BO/CHS COMMENTS
 Q
 ;
GETREF ;
 S BMCQ=1
 W !! S BMCREF=""
 ;S DIC="^BMCPROV(",DIC(0)="AEMQ",DIC("A")="Select Secondary Referral by Patient Name or date of referral: " D ^DIC K DA,DIC
 S DIC="^BMCREF(",DIC(0)="AEMQ",DIC("A")="Select Secondary Referral by Patient Name or by Referral Date or #: "
 ;BMC*4.0*6 4.22.2010 IHS.OIT.FCJ MODIFIED NXT LINE TO ALLOW EDIT OF CLOSED REF
 ;S DIC("S")="I $$FILTER^BMCFLTR(0,0,1)"     ;BMC*4.0*6
 S DIC("S")="I $$FILTER^BMCFLTR(3,0,1)"      ;BMC*4.0*6
 D DIC^BMCFMC
 Q:Y=-1
 S BMCSRIEN=+Y
 S BMCREC=^BMCREF(BMCSRIEN,0)
 S BMCRIEN=$P(^BMCREF(BMCSRIEN,1),U,2)
 S BMCQ=0
 Q
 ;
EDIT ;EP;DISPLAY AND EDIT SEC REF
 S BMCSUF=$P(^BMCREF(BMCSRIEN,1),U)
 S BMCVCT=$P(^BMCREF(BMCSRIEN,11),U,11)
 ; EDIT REFERRAL RECORD JUST ADDED
 ;S DDSFILE=90001.04,DA=BMCSRIEN,DR="[BMC SECONDARY REF ADD]",DDSPARM="C"
 S DDSFILE=90001,DA=BMCSRIEN,DDSPARM="C"
 S DR=$S($P(^BMCREF(BMCSRIEN,0),U,6)="":"[BMC SEC REF ADD CI]",1:"[BMC SEC REF ADD]")
 D DDS^BMCFMC
 ;I '$G(DDSCHANG) D DELETE S BMCQ=1 Q
 Q
MEDHX ;EP;DISPLAY MED HX COMMENTS IF ANY AND ADD NEW COMMENTS TO SEC REF
 S BMCV="COM",BMCTERM="Medical HX/Findings Comments",BMCATEMP="[BMC COMMENTS ADD]",BMCG="^BMCCOM(",BMCETEMP="[BMC COMMENTS EDIT]"
 S BMCCTYP="M"
 W @IOF,!,$$CTR^BMC("MEDICAL COMMENTS FROM PRIMARY REFERRAL",80)
 W !,$$CTR^BMC("REFERRAL: "_$P(BMCREC,U,2)_"   PATIENT: "_$$VAL^XBDIQ1(90001,BMCSRIEN,.03),80),!
 F I=1:1:80 W "-"
 S BMCNONE=0 D DISPCOM^BMCMOD1
 I BMCNONE=1 W !,"THERE ARE NOT ANY MEDICAL COMMENTS FROM PRIMARY REFERRAL TO DISPLAY...",!
 W ! F I=1:1:80 W "-"
 S DIR(0)="EO",DIR("A")="Hit return to continue..." K DA D ^DIR K DIR
MEDCOM ;DISPLAY AND ADD COMMENTS FOR MED HX
 S BMCV="COM",BMCTERM="Medical HX/Findings Comments",BMCATEMP="[BMC COMMENTS ADD]",BMCG="^BMCCOM(",BMCETEMP="[BMC COMMENTS EDIT]"
 S BMCCTYP="M"
 S BMCTMPS=BMCSRIEN,BMCTMP=BMCRIEN,BMCRIEN=BMCSRIEN
 D ASK^BMCMOD
 S BMCRIEN=BMCTMP,BMCSRIEN=BMCTMPS
 Q
SBCOM ;ADD BO/CHS COMMENTS ;BMC*4.0*3 8.13.07 IHS.OIT.FCJ ADD BO/CHS COMMENTS
 S BMCV="COM",BMCTERM="Business Office/CHS Comments",BMCATEMP="[BMC COMMENTS ADD]",BMCG="^BMCCOM(",BMCETEMP="[BMC COMMENTS EDIT]"
 S BMCCTYP="S"
 S BMCTMPS=BMCSRIEN,BMCTMP=BMCRIEN,BMCRIEN=BMCSRIEN
 D ASK^BMCMOD
 S BMCRIEN=BMCTMP,BMCSRIEN=BMCTMPS
 Q
 ;
EXIT ;EXIT PROGRAM
 D ^BMCKILL
 K DDSCHANG,DDSPARM,DILN,DISYS,DIWI,DIWTC,DIWX,DIC,DIE,DA,Y,Y1,W1
 K BMCMODE,BMCRSTAT,BMCSUF,BMCVCT,BMCREF,BMCSRIEN,BMCVST,BMCVSTP
 Q
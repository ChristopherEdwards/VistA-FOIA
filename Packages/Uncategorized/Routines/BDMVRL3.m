BDMVRL3 ; cmi/anch/maw - VIEW PT RECORD CON'T ;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;;AUG 11, 2006
 ;
 ;
CDISP ;EP;DISPLAY AND EDIT COMPLICATIONS
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 S BDMVALM="BDMV COMPLICATIONS"
 D VALM^BDMVRL(BDMVALM)
 Q
CADD ;EP;TO ADD COMPLICATION
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 W !?5,"ADD Complications for ",$P(BDMPAT0,U)
 D CLIST
 Q:'$G(BDMJ)
 S DIR(0)="LO^1:"_BDMJ
 S DIR("A")="Which COMPLICATION(S)"
 W !
 D DIR^BDMFDIC
 Q:+Y<1
 F BDMJ=1:1 S BDMX=$P(BDMY,",",BDMJ) Q:'BDMX  D CADD1:$D(BDM("COMPLICATIONS",BDMX))
 K BDM("COMPLICATIONS")
 Q
CADD1 ;
 S X=+BDM("COMPLICATIONS",BDMX)
 I $D(^ACM(42,"AC",BDMRPDA,DFN,X)) W !!,"Patient already has ",$P(^ACM(42.1,X,0),U)," as a complication.  Use Edit or Delete to modify this complication." D PAUSE Q
 S DIC="^ACM(42,"
 S DIC(0)="L"
 S DIC("DR")=".02////"_DFN_";.03////"_BDMRPDA_";.04////"_BDMRDA
 D FILE^BDMFDIC
 ;EDIT COMPLICATION WHEN ADDED
 Q:+Y<1
 S BDMCDA=+Y
 D CE1
 Q
CEDIT ;EP;TO EDIT COMPLICATION
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 D CSEL
 I $D(BDMQUIT) K BDMQUIT Q
 N BDMX,BDMZ
 F BDMJ=1:1 S BDMX=$P(BDMY,",",BDMJ) Q:BDMX=""  I $D(BDM("COMP",BDMX)) S BDMCDA=+$G(BDM("COMP",BDMX)) D CE1
 Q
CE1 S DA=BDMCDA
 S DIE="^ACM(42,"
 S DR="[BDM COMPLICATIONS]"
 D DDS^BDMFDIC
 Q
CDELETE ;EP;TO DELETE COMPLICATION FROM PATIENT'S COMPLICATION LIST
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 D CSEL
 I $D(BDMQUIT) K BDMQUIT Q
 N BDMX,BDMZ
 F BDMJ=1:1 S BDMX=$P(BDMY,",",BDMJ) Q:BDMX=""  I $D(BDM("COMP",BDMX)) S BDMCDA=+$G(BDM("COMP",BDMX)) D CD1
 Q
CD1 S DA=BDMCDA
 S DIK="^ACM(42,"
 D DIK^BDMFDIC
 ;LOOP THROUGH AND RESET AC FOR EACH OF THIS PATIENTS COMPLICATIONS
 NEW BDMX,DA,DIK
 S BDMX=0 F  S BDMX=$O(^ACM(42,"C",DFN,BDMX)) Q:'BDMX  D
 .S DA=BDMX,DIK="^ACM(42," D IX^DIK K DA,DIK
 Q
CLDELETE ;EP;TO DELETE COMPLICATION LIST ENTRY
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 K BDMQUIT
 D CSEL
 I $D(BDMQUIT) K BDMQUIT D BACK Q
 N BDMJ,BDMX
 F BDMJ=1:1 S BDMX=$P(BDMY,",",BDMJ) Q:BDMX=""  I $D(BDM("COMPLICATIONS",BDMX)) D CLD1
 D BACK
 Q
CLD1 S DA=+$G(BDM("COMPLICATIONS",BDMX))
 I $D(^ACM(42,"B",DA)) D  Q
 .W !!,$P(BDM("COMPLICATIONS",BDMX),U,2)," is being referenced and cannot be deleted."
 .H 2
 S DIK="^ACM(42.1,"
 D DIK^BDMFDIC
 Q
CINIT ;EP;INITIALIZE LIST OF PATIENTS COMPLICATIONS
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 K ^TMP("BDMVR",$J),BDMJ,BDM("TMP")
 N A,B,C,X,Y,Z
 S X=""
 S VALMCNT=0
 S X="    Complications"
 D Z(X)
 S X="    NO.  Complication                    ONSET DATE"
 D Z(X)
 S X="    ---  ------------------------------  ----------"
 D Z(X)
 S A=0,C=0
 F  S A=$O(^ACM(42,"C",DFN,A)) Q:'A  D
 .S Y=$G(^ACM(42,A,0))
 .Q:'Y
 .Q:$P(Y,U,4)'=BDMRDA
 .S C=C+1
 .S Y=$G(^ACM(42.1,+Y,0))
 .S BDM("TMP",Y,C)=A
 S BDMJ=0
 S A=""
 F  S A=$O(BDM("TMP",A)) Q:A=""  S C=0 F  S C=$O(BDM("TMP",A,C)) Q:C'=+C  D
 .S BDMJ=BDMJ+1
 .S Y=BDM("TMP",A,C)
 .S Y=$P($G(^ACM(42,Y,"DT")),U)
 .X ^DD("DD")
 .S X=""
 .S $E(X,5)=BDMJ
 .S $E(X,10)=A
 .S $E(X,42)=Y
 .D Z(X)
 .S ONSET=Y
 .S BDM("COMP",BDMJ)=BDM("TMP",A,C)
BACK S VALMBCK="R"
 Q
COMDISP ;EP;TO DISPLAY AND EDIT CASE COMMENTS
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 S BDMVALM="BDMV COMMENTS"
 D VALM^BDMVRL(BDMVALM)
 Q
COMEDIT ;EP;TO EDIT COMMENTS
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 D CLEAR^VALM1
 S DA=BDMRPDA
 S DIE="^ACM(41,"
 S DR=13
 D DIE^BDMFDIC
 Q
COMINIT ;EP;INITIALIZE LIST OF COMMENTS
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 K ^TMP("BDMVR",$J)
 N X,Y,Z
 S VALMCNT=0
 S X="Case Comments"
 D Z(X)
 S X="----------------------------------------"
 D Z(X)
 S A=0
 F  S A=$O(^ACM(41,BDMRPDA,1,A)) Q:'A  D
 .S Y=$G(^ACM(41,BDMRPDA,1,A,0))
 .Q:Y=""
 .S X=Y
 .D Z(X)
 D BACK
 Q
CSEL ;SELECT COMPLICATION
 S DIR(0)="LO^1:"_BDMJ
 S DIR("A")="Which Complication(s)"
 W !
 D DIR^BDMFDIC
 I Y<1 S BDMQUIT="" Q
 S BDMY=Y
 Q
DELETE ;EP;TO DELETE A PATIENT FROM CMS
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 K BDMQUIT
 N ACMEP,ACMPTDEL,ACMPP,ACMRGTP,ACMRGTP,ACMQUIT
 D CURRENT^ACMED
 S (ACMEP,ACMPTDEL,ACMPP,ACMRGTP)=""
 S ACMRG=BDMRDA
 S ACMRGNA=BDMREGNM
 D ^ACMLPAT
 D PAUSE^BDMFMENU
 Q
DA ;EP;TO DO THE DIABETES AUDIT
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 S X="APCLD99"
 X ^%ZOSF("TEST")
 I $T D  Q
 .S DIC("B")=BDMREGNM
 .D ^APCLD99
 S X="APCL DIABETES PROGRAM QA AUDIT"
 S DIC="^APCLRPT("
 S DIC(0)="FM"
 D DIC^BDMFDIC
 I Y=-1 D  Q
 .W !,*7,"DIABETES PROGRAM QA AUDIT REPORT NOT AVAILABLE"
 .H 2
 S APCL1=+Y
 S X="APCL CUMULATIVE DIABETES QA"
 S DIC="^APCLRPT("
 S DIC(0)="FM"
 D DIC^BDMFDIC
 S APCL2=$S(Y>0:+Y,1:0)
 S APCLDMRG=BDMRDA
 D GO^APCLDM
 Q
DMMEDS ;EP;TO SELECT DM MED TAXONOMY FOR DISPLAY OF DM MEDS
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 N S,T,TX,X,Y,Z,BDM,BDMJ,BDMMEDS
 S (T,TX)="DM AUDIT "
 F  S T=$O(^ATXAX("B",T)) Q:T=""!(T'[TX)  D
 .S X=0
 .F  S X=$O(^ATXAX("B",T,X)) Q:'X  D
 ..Q:+$P($G(^ATXAX(X,0)),U,15)'=50
 ..S BDM(X)=""
 S BDMTXDA=0
 F  S BDMTXDA=$O(BDM(BDMTXDA)) Q:'BDMTXDA  D
 .S X=0
 .F  S X=$O(^ATXAX(BDMTXDA,21,X)) Q:'X  D
 ..S Y=$P($G(^ATXAX(BDMTXDA,21,X,0)),U)
 ..Q:'Y
 ..S BDMMEDS(Y)=""
 Q:'$D(BDMMEDS)
 S DA=DFN
 D MP1^BDMVRL1
 Q
RR ;EP;TO START PRINT OF REGISTER REPORTS
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 K ACMPRV,ACMSRT,ACMGTP,ACMDM,ACMRG,ACMRGNA,ACMEP,ACMES,ACMPP,ACMPS,ACMPTNA,ACMPC,ACMRGDFN
 S ACMRG=BDMRDA
 S ACMRGNA=BDMREGNM
 S ACMCTRLP="REG;CMP;DX;FM;PROB;CR;CT"
 S ACMCTRLS="CMPL;DXL;AD"
 D CURRENT^ACMED
 D RP^BDMFMENU
 S ACMDM=""
 Q
COMPLIST ;CREATE COMPLICATIONS LIST ARRAY
 K BDM("COMPLIST"),BDM("COMPLICATIONS")
 S X=0
 F  S X=$O(^ACM(42.1,"RG",BDMRDA,X)) Q:'X  D
 .S Y=$G(^ACM(42.1,X,0))
 .Q:Y=""
 .S BDM("COMPLIST",$P(Y,U))=X
 S BDMJ=0
 S Y=""
 F  S Y=$O(BDM("COMPLIST",Y)) Q:Y=""  D
 .S BDMJ=BDMJ+1
 .S BDM("COMPLICATIONS",BDMJ)=BDM("COMPLIST",Y)_U_Y
 Q
CLIST ;LIST ALL COMPLICATIONS
 D CLEAR^VALM1
 N X,Y,Z
 K BDM("COMPLICATIONS"),BDMJ
 D COMPLIST
 I '$D(BDM("COMPLICATIONS")) D  Q
 .W !!,"NO COMPLICATIONS TO LIST."
 .D PAUSE^BDMFMENU
 W !!?5,"NO.",?10,"COMPLICATION"
 W !?5,"---",?10,"--------------------"
 S X=0
 F  S X=$O(BDM("COMPLICATIONS",X)) Q:'X  D
 .W !?5,X,?10,$P(BDM("COMPLICATIONS",X),U,2)
 Q
CLINIT ;EP;TO INITIALIZE COMPLICATIONS LIST
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 K ^TMP("BDMVR",$J)
 K BDM("COMPLIST")
 N J,X,Y,Z
 D COMPLIST
 S VALMCNT=0
 S X="    Complications"
 D Z(X)
 S X="    NO.  Complication"
 D Z(X)
 S X="    ---  ------------------------------"
 D Z(X)
 S A=""
 F  S A=$O(BDM("COMPLIST",A)) Q:A=""  D
 .S X=""
 .S $E(X,5)=(VALMCNT-2)
 .S $E(X,10)=A
 .D Z(X)
 .S BDM("COMP",VALMCNT-2)=+BDM("COMPLIST",A)
 S BDMJ=VALMCNT-3
 Q
CLADD ;EP;TO ADD NEW COMPLICATION
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 S DIC="^ACM(42.1,"
 S DIC(0)="AEMLQZ"
 S DIC("A")="Name of New Complication: "
 W !
 D DIC^BDMFDIC
 Q:'+Y
 S X=BDMRDA
 S (DA,DA(1))=+Y
 S DIC="^ACM(42.1,"_DA_",""RG"","
 S DIC(0)="L"
 S:'$D(^ACM(42.1,DA,"RG",0)) ^ACM(42.1,DA,"RG",0)="^9002242.11P"
 D FILE^BDMFDIC
 D BACK
 Q
CLEDIT ;EP;TO EDIT EXISTING COMPLICATIONS LIST ENTRY
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 K BDMQUIT
 D CSEL
 I $D(BDMQUIT) K BDMQUIT D BACK Q
 F BDMI=1:1 S X=$P(BDMY,",",BDMI) Q:X=""  I $G(BDM("COMPLICATIONS",X)) D CLE1
 D BACK
 Q
CLE1 W @IOF
 W !,"Edit COMPLICATION NAME:"
 S DA=+BDM("COMPLICATIONS",X)
 S DIE="^ACM(42.1,"
 S DR=".01;1101"
 W !
 D FULL^VALM1  ;LIST MANAGER
 D DIE^BDMFDIC
 Q
CL ;EP;FOR COMPLICATIONS LIST FUNCTIONS
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 S BDMVALM="BDMV COMPLICATIONS LIST"
 D VALM^BDMVRL(BDMVALM)
 Q
DL ;EP;FOR DIAGNOSIS LIST FUNCTIONS
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 S BDMVALM="BDMV DIAGNOSES LIST"
 D VALM^BDMVRL(BDMVALM)
 Q
USER ;EP;TO SETUP DMS USER
 D REG^BDMFUTIL
 Q:$D(BDMQUIT)
 F  D U1 Q:$D(BDMQUIT)!$D(BDMOUT)
 K BDMQUIT,BDMOUT
 Q
U1 S DIR(0)="SO^1:Add/Remove DMS Authorized User;2:List Current DMS Authorized Users"
 S DIR("A")="Which one"
 D DIR^BDMFDIC
 I Y<1 S BDMQUIT="" Q
 I Y=1 D UNEW Q
 I Y=2 D ULIST Q
 Q
UNEW ;ADD NEW DMS USER
 S DIC="^VA(200,"
 S DIC(0)="AEMQZ"
 S DIC("A")="Select NEW DMS User: "
 W !
 D DIC^BDMFDIC
 I +Y<1 S BDMQUIT="" Q
 S BDMUSER=+Y
 S BDMUNAM=$P($G(^VA(200,+Y,0)),U)
 I $D(^ACM(41.1,BDMRDA,"AU",+Y)) D AU Q
 S (DINUM,X)=+Y
 S (DA,DA(1))=BDMRDA
 S DIC="^ACM(41.1,"_DA_",""AU"","
 S DIC(0)="L"
 S:'$D(^ACM(41.1,DA,"AU",0)) ^ACM(41.1,DA,"AU",0)="^9002241.12P"
 D FILE^BDMFDIC
 S BDMX="BDMZMENU"
 S BDMZ=""
 D AU11
AU I $D(^ACM(41.1,BDMRDA,"AU",BDMUSER)) D
 .W !!,BDMUNAM," is now an Authorized User"
 .W !,"of the Diabetes Managment System."
 S DIR(0)="YO"
 S DIR("A",1)="Do you wish to REMOVE "_BDMUNAM_" as an Authorized User"
 S DIR("A")="of the Diabetes Management System"
 S DIR("B")="NO"
 W !
 D DIR^BDMFDIC
 I Y=1 D  Q
 .S DA=BDMUSER
 .S DA(1)=BDMRDA
 .S DIK="^ACM(41.1,"_DA(1)_",""AU"","
 .D DIK^BDMFDIC
 .Q
 .S BDMZ=1
 .D AU1
 S X=$O(^DIC(19.1,"B","BDMZ REGISTER MAINTENANCE",0))
 S BDMZ=$O(^VA(200,BDMUSER,51,"B",+X,0))
 S DIR(0)="YO"
 S:'BDMZ DIR("A")="Allow "_BDMUNAM
 S:BDMZ DIR("A")="Remove "_BDMUNAM_"'s"
 S DIR("A")=DIR("A")_" REGISTER MANAGER AUTHORITY"
 S DIR("B")="NO"
 W !
 D DIR^BDMFDIC
 Q:Y'=1
AU1 F BDMX="BDMZMENU","BDMZ REGISTER MAINTENANCE" D AU11
 Q
AU11 S X=$O(^DIC(19.1,"B",BDMX,0))
 S (DIC,DIK)="^VA(200,"_BDMUSER_",51,"
 S DIC(0)="L"
 S DA(1)=BDMUSER
 S:BDMZ DA=$O(^VA(200,BDMUSER,51,"B",+X,0))
 S $P(^VA(200,BDMUSER,51,0),U,2)="200.051P"
 D FILE^BDMFDIC:'BDMZ
 Q
ULIST ;LIST DMS USERS
 W:$D(IOF) @IOF
 W !?5,"Current DMS Authorized Users",?35,"Manager Authority"
 W !?5,"----------------------------",?35,"-----------------"
 N BDMX,BDMY,BDMZ
 S BDMZ=$O(^DIC(19.1,"B","BDMZ REGISTER MAINTENANCE",0))
 S BDMX=0
 F  S BDMX=$O(^ACM(41.1,BDMRDA,"AU",BDMX)) Q:'BDMX  D
 .S BDMY=$P($G(^VA(200,BDMX,0)),U)
 .I BDMZ,BDMY]"" S BDMX(BDMY)=$D(^VA(200,BDMX,51,"B",BDMZ))
 S BDMX=""
 F  S BDMX=$O(BDMX(BDMX)) Q:BDMX=""!$D(BDMQUIT)  D
 .W !?5,BDMX,?35
 .W:BDMX(BDMX) "YES"
 .I IOSL-4<$Y D PAUSE^BDMFMENU
 Q
Z(X) ;SET TMP NODE
 S VALMCNT=VALMCNT+1
 S ^TMP("BDMVR",$J,VALMCNT,0)=X
 Q
PAUSE ;
 K DIR
 S DIR(0)="E",DIR("A")="Press enter to continue" D ^DIR K DIR
 Q
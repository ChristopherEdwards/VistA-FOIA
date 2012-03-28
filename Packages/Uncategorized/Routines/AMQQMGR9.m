AMQQMGR9 ;IHS/CMI/THL - AMQQMGR CONTINUED ;
 ;;2.0;IHS PCC SUITE;**2**;MAY 14, 2009
 ;-----
EN ;EP;TO ADD LABS TO THE QMAN DICTIONARY OF TERM
 D EN1
EXIT K AMQQ,AMQQQUIT
 K ^TMP("AMQQ",$J)
 Q
EN1 S AMQQLDFN=0
 F  S AMQQLDFN=$O(^LAB(60,AMQQLDFN)) Q:'AMQQLDFN  D
 .D LCHK
 .S AMQQLSDA=0
 .F  S AMQQLSDA=$O(^LAB(60,AMQQLDFN,1,AMQQLSDA)) Q:'AMQQLSDA  D
 ..D LSCHK
 Q
LCHK ;CHECK TO SEE IF LAB ALREADY IN METADICTIONARY
 ;ADD IF NOT
 S AMQQLIEN=AMQQLDFN+1000
 Q:$D(^AMQQ(5,AMQQLIEN,0))
 S X=AMQQLDFN
 S DINUM=AMQQLIEN
 S DIC="^AMQQ(5,"
 S DIC(0)="L"
 S DIC("DR")=""
 D FILE^DICN
 K DIC,DA,DR,DINUM
 D LTYPE
 W !,"LAB TEST: ",AMQQLIEN
 Q
LSCHK ;CHECK TO SEE IF LAB TEST SITE/SPECIMEN ALREADY IN METADICTIONARY
 ;ADD IF NOT
 S AMQQLSEN=AMQQLDFN+1000+(AMQQLSDA/100)
 Q:$D(^AMQQ(5,AMQQLSEN,0))
 S X=AMQQLDFN
 S DINUM=AMQQLSEN
 S DIC="^AMQQ(5,"
 S DIC(0)="L"
 S DIC("DR")=""
 D FILE^DICN
 K DIC,DA,DR,DINUM
 D LTYPE
 W !,"SITE/SPECIMEN: ",AMQQLSEN
 Q
LTYPE I $O(^LAB(60,AMQQLDFN,200,0)) S AMQQLTYP="" Q
 S %=$P(^LAB(60,AMQQLDFN,0),U,12)
 I %="" G TF
 S %=U_%_"0)"
 I '$D(@%) G TF
 I $P(@%,U,3)[";Trace:" S AMQQLTYP=12 Q
 I ($P(@%,U,5,6)["Q9=")+($G(^(3))[" NUMBER ") S AMQQLTYP=9 Q
 I $P(@%,U,5,6)[" NUMBER " S AMQQLTYP=9 Q
 I $P(@%,U,3)[";Pos.:" S AMQQLTYP=11 Q
 I $G(AMQQLSTG)["TITRE"!($P(@%,U,5)["""""titre""""")!($G(^(3))["1:") S AMQQLTYP=15 Q
 I $P(@%,U,2)="S" S AMQQLTYP=6 Q
TF S AMQQLTYP=2
 Q
IMM ;EP;TO ADD NEW IMMUNIZATIONS TO QMAN DICTIONARIES OF LINKS AND TERMS
 N XX,X,Y,Z
 S J=849
 S XX=0
 F  S XX=$O(^AUTTIMM(XX)) Q:'XX  D:'$D(^AMQQ(1,"IMM",XX))
 .F DA=850:1 Q:DA>999!'$D(^AMQQ(1,DA,0))
 .Q:DA>999!'DA
 .S X=$G(^AUTTIMM(XX,0))
 .Q:X=""
 .S J=J+1
 .S NAME=$P(X,U)
 .S SNAME=$P(X,U,2)
 .S CODE=$P(X,U,3)
 .M ^AMQQ(1,DA)=^AMQQ(1,472)
 .M ^AMQQ(5,DA)=^AMQQ(5,472)
 .S $P(^AMQQ(5,DA,0),U)=NAME
 .S $P(^AMQQ(5,DA,0),U,5)=DA
 .S $P(^AMQQ(5,DA,0),U,12)="IMM;"_CODE
 .K ^AMQQ(5,DA,1)
 .S ^AMQQ(5,DA,1,0)="^9009075.01^2^2"
 .S ^AMQQ(5,DA,1,1,0)=NAME
 .S ^AMQQ(5,DA,1,2,0)=SNAME
 .S ^AMQQ(5,DA,1,"B",NAME,1)=""
 .S ^AMQQ(5,DA,1,"B",SNAME,2)=""
 .S $P(^AMQQ(1,DA,0),U,11)=XX
 .S $P(^AMQQ(1,DA,0),U,15)=XX
 .S $P(^AMQQ(1,DA,0),U)="PATIENT;"_NAME
 .S $P(^AMQQ(1,DA,1),";",2)=XX
 .S $P(^AMQQ(1,DA,2),";",2)=XX
 .S DIK="^AMQQ(1,"
 .D IX1^DIK
 .S DIK="^AMQQ(5,"
 .D IX1^DIK
 Q
MSR ;EP;TO ADD NEW MEASUREMENTS TO QMAN DICTIONARIES OF LINKS AND TERMS
 ;PATCH XXX
 K ^TMP($J,"AMQQ MSR")
 S XX=0
 F  S XX=$O(^AMQQ(1,"MSR",XX)) Q:'XX  I $P($G(^AUTTMSR(XX,0)),U)]"" S ^TMP($J,"AMQQ MSR",$P(^(0),U))=""
 N XX,X,Y,Z
 S XX=0
 F  S XX=$O(^AUTTMSR(XX)) Q:'XX  D:'$D(^AMQQ(1,"MSR",XX))
 .F DA=1:1 Q:DA>999!('$D(^AMQQ(1,DA,0))&'$D(^AMQQ(5,DA,0)))
 .Q:DA>999!'DA
 .S X=$G(^AUTTMSR(XX,0))
 .Q:X=""
 .S SNAME=$P(X,U)
 .S NAME=$P(X,U,2)
 .S CODE=$P(X,U,3)
 .Q:$D(^TMP($J,"AMQQ MSR",SNAME))
 .S ^TMP($J,"AMQQ MSR",SNAME)=""
 .W:'$D(ZTQUEUED) !,DA,?10,XX,?20,NAME,?50,SNAME,?60,CODE
 .M ^AMQQ(1,DA)=^AMQQ(1,751)
 .M ^AMQQ(5,DA)=^AMQQ(5,751)
 .S $P(^AMQQ(5,DA,0),U)=NAME
 .S $P(^AMQQ(5,DA,0),U,5)=DA
 .S $P(^AMQQ(5,DA,0),U,12)="MSR;"_CODE
 .K ^AMQQ(5,DA,1)
 .S ^AMQQ(5,DA,1,0)="^9009075.01^2^2"
 .S ^AMQQ(5,DA,1,1,0)=NAME
 .S ^AMQQ(5,DA,1,2,0)=SNAME
 .S ^AMQQ(5,DA,1,"B",NAME,1)=""
 .S ^AMQQ(5,DA,1,"B",SNAME,2)=""
 .S $P(^AMQQ(1,DA,0),U,9)=CODE
 .S $P(^AMQQ(1,DA,0),U,11)=XX
 .S $P(^AMQQ(1,DA,0),U,15)=XX
 .S $P(^AMQQ(1,DA,0),U)="PATIENT;"_NAME
 .S $P(^AMQQ(1,DA,1),";",2)=XX
 .S $P(^AMQQ(1,DA,2),";",2)=XX
 .S X=^AMQQ(1,DA,1)
 .S X=$P(X,"$D(^(AMQP(0),")_"$D(^(AMQP(0),"_XX_")) S AMQQX="_$P(X,")) S AMQQX=",2)
 .K ^AMQQ(1,DA,4,"B")
 .S $P(^AMQQ(1,DA,4,1,0),U)=SNAME
 .S $P(^AMQQ(1,DA,4,1,0),U,4)=$E(NAME,1,7)
 .S $P(^AMQQ(1,DA,4,2,0),U)="DATE OF "_SNAME
 .S $P(^AMQQ(1,DA,4,2,0),U,4)="DATE OF "_SNAME
 .S DIK="^AMQQ(1,"
 .D IX1^DIK
 .S DIK="^AMQQ(5,"
 .D IX1^DIK
 K ^TMP($J,"AMQQ MSR")
 Q
EXAM ;EP;TO ADD NEW EXAMS TO QMAN DICTIONARIES OF LINKS AND TERMS
 ;PATCH XXX
 K ^TMP($J,"AMQQ EXAM")
 S XX=0
 F  S XX=$O(^AMQQ(1,"EXAM",XX)) Q:'XX  I $P($G(^AUTTEXAM(XX,0)),U,2)]"" S ^TMP($J,"AMQQ EXAM",$P(^(0),U,2))=""
 N XX,X,Y,Z
 S XX=0
 F  S XX=$O(^AUTTEXAM(XX)) Q:'XX  D:'$D(^AMQQ(1,"XAM",XX))
 .F DA=1:1 Q:DA>999!('$D(^AMQQ(1,DA,0))&'$D(^AMQQ(5,DA,0)))
 .Q:DA>999!'DA
 .S X=$G(^AUTTEXAM(XX,0))
 .Q:X=""
 .S NAME=$P(X,U)
 .S CODE=$P(X,U,2)
 .Q:$D(^TMP($J,"AMQQ EXAM",CODE))
 .S ^TMP($J,"AMQQ EXAM",CODE)=""
 .M ^AMQQ(1,DA)=^AMQQ(1,751)
 .M ^AMQQ(5,DA)=^AMQQ(5,751)
 .S $P(^AMQQ(5,DA,0),U)=NAME
 .S $P(^AMQQ(5,DA,0),U,5)=DA
 .S $P(^AMQQ(5,DA,0),U,12)="EXAM;"_CODE
 .K ^AMQQ(5,DA,1)
 .S ^AMQQ(5,DA,1,0)="^9009075.01^2^2"
 .S ^AMQQ(5,DA,1,1,0)=NAME
 .S ^AMQQ(5,DA,1,"B",NAME,1)=""
 .S $P(^AMQQ(1,DA,0),U,9)=CODE
 .S $P(^AMQQ(1,DA,0),U,11)=XX
 .S $P(^AMQQ(1,DA,0),U,15)=XX
 .S $P(^AMQQ(1,DA,0),U)="PATIENT;"_NAME
 .S $P(^AMQQ(1,DA,1),";",2)=XX
 .S $P(^AMQQ(1,DA,2),";",2)=XX
 .K ^AMQQ(1,DA,4,"B")
 .S $P(^AMQQ(1,DA,4,1,0),U)=SNAME
 .S $P(^AMQQ(1,DA,4,1,0),U,4)=$E(NAME,1,7)
 .S $P(^AMQQ(1,DA,4,2,0),U)="DATE OF "_SNAME
 .S $P(^AMQQ(1,DA,4,2,0),U,4)="DATE OF "_SNAME
 .S DIK="^AMQQ(1,"
 .D IX1^DIK
 .S DIK="^AMQQ(5,"
 .D IX1^DIK
 K ^TMP($J,"AMQQ EXAM")
 Q
IEN ;EP;TO RESET EXAM AND MEASUREMENT IEN'S ; PATCH XXX
 F DA=1:1 Q:DA>999  S X=$G(^AMQQ(1,DA,1)) D:X["AUPNVMSR"!(X["AUPNVXAM")
 .S XX=$P(X,";",2)
 .S X=$P(X,"$D(^(AMQP(0),")_"$D(^(AMQP(0),"_XX_")) S AMQQX="_$P(X,")) S AMQQX=",2)
 .S ^AMQQ(1,DA,1)=X
 Q
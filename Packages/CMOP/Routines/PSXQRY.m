PSXQRY ;BIR/WPB,BAB-Sends/Receives the Query ;[ 10/23/97  6:59 AM ]
 ;;2.0;CMOP;**9**;11 Apr 97
EN D NOW^%DTC S XZ=$P(^PSX(553.1,0),"^",3),INT=$P(^PSX(553,1,0),"^",9) S:$G(INT)'>0 INT=1
 I $G(XZ) S LQRYTM=$P(^PSX(553.1,XZ,0),"^",2) I %'>$$FMADD^XLFDT(LQRYTM,0,$G(INT),0,0) G ^PSXJOB
 S (PSXCNT,PSXTRYN,RXCNT)=0,QLR=$P($G(^PSX(553,1,0)),"^",8)
 S (DA,X)=$P(^PSX(553.1,0),U,3)+1,DIC="^PSX(553.1,",DIC(0)="LZ",DIC("DR")="1////"_%_";4////1",DLAYGO=553.1
F D FILE^DICN S PSXQRYID=+Y,LOG(1)="QUERY # "_PSXQRYID_" initiated."_$G(PSXQRYA) D LOG^PSXUTL
 K DA,DIC,DUOUT,DTOUT,DLAYGO,X,Y,%,DINUM,PSXPOP,TRY
 S PSXQRY=1 D BID^PSXMST G:$G(PSXQUIT) TST
 D TSOUT^PSXUTL
 S PSXBLK=1,PSXLAST=0
 S PSXTXT="MSH|^~\&|DHCP||"_$S($G(PSXVNDR)>0:"SI BAKER",1:"ELECTROCOM")_"||"_PSXTS_"||QRY|"_PSXQRYID_"|P|2.1|" D XMIT^PSXSND G:$G(PSXPOP) TST
 S PSXBLK=2,PSXLAST=1 S PSXTXT="QRD|"_PSXTS_"|R|I|"_PSXQRYID_"|||"_QLR_"^ZO|OP|OTH|ALL" D XMIT^PSXSND G:$G(PSXPOP) TST
 W *EOT,*TERM
 D SLAVE
TST D FLUSH1^PSXUTL
 S LOG(1)="QUERY # "_PSXQRYID_" completed."_$G(PSXQRYA) S:$G(PSXSTOP) LOG(2)="DHCP STOPPED QUERY "_$G(PSXQRYID) S:$G(PSXQUIT) LOG(3)="No Response to Bid, DHCP terminated query." D LOG^PSXUTL
 S $P(^PSX(554,1,0),"^",3)=PSXQRYID
 S:$G(PSXQRYA) ^PSX(553,1,"S")="S"
 K PSXHEX,PSXACK,LOG,BLK,BLKA,PSXQRYID,PSXTXT,PSXBLK,%,X,Y,PSXLAST,QLR,MESSID,MSGID,RXCNT,PSXQRY,PSXQRYA,PSXSTOP,PSXPOP,PSXQUIT
 G ^PSXJOB
NAK D FLUSH1^PSXUTL,LOG^PSXUTL
 W *NAK,*TERM
 S PSXTRYN=PSXTRYN+1 G:PSXTRYN>5 ERROR G MSG
ND I $G(^PSX(553,1,"S"))="S" S PSXSTOP=1 Q
 D QRY20,FLUSH1^PSXUTL,LOG^PSXUTL S PSXTRYN=PSXTRYN+1 G:PSXTRYN>5 ERROR G MSG
RTN G:PSXCNT'>1 SLAVE
 Q:$G(PSXQRY)=0
 D BID^PSXMST G:$G(PSXQUIT) TST D TSOUT^PSXUTL K PSXTXT,PSXLAST S PSXBLK=1,PSXLAST=0
 S PSXTXT="MSH|^~\&|DHCP||"_$S($G(PSXVNDR)>0:"SI BAKER",1:"ELECTROCOM")_"||"_PSXTS_"||ACK|"_$G(MSGID)_"|P|2.1|" D XMIT^PSXSND Q:$G(PSXPOP)
 S PSXBLK=2,PSXLAST=1
 S PSXTXT="MSA|"_$S(QRYFLG=0:"AA|"_$G(MSGID)_"|",QRYFLG>0:"AR|"_MSGID_"|"_$S(QRYFLG=1:"RX NUMBER",QRYFLG=2:"STATUS",QRYFLG=3:"COMPLETED DATE",QRYFLG=4:"EMPLOYEE ID",QRYFLG=5:"NO CANCELLED REASON",1:"UNKNOWN")) D XMIT^PSXSND Q:$G(PSXPOP)
 ;I $G(QRYFLG)>0 S:$G(CANFLAG)>0 DA=XDA,DR="1////1",DIE="^PSX(552.3," D ^DIE K DA,DR,DIE,XDA S RXCNT=RXCNT-1
 I $G(QRYFLG)>0 S DR="1////1",DIE="^PSX(552.3," F I=2:1 S XX=$P(XDA,"^",I) Q:XX'>0  S DA=XX D ^DIE K DA
 I $G(QRYFLG)>0 K DA,DIE,DR
 W *EOT,*TERM
 D NOW^%DTC
 S $P(^PSX(553.1,PSXQRYID,0),"^",4)=%,$P(^PSX(553.1,PSXQRYID,0),"^",5)=5,$P(^PSX(553.1,PSXQRYID,0),"^",6)=$G(RXCNT)
 K MESSID,MSGID,TRY,CANFLAG
 I $G(^PSX(553,1,"S"))="S" S PSXSTOP=1 Q
SLAVE S BLKA=0
 R *X:PSXDLTD E  D
 E  D QRY1,LOG^PSXUTL G ND
 I X'=ENQ D QRY5 S TRY=$G(TRY)+1 G:$G(TRY)'>5 SLAVE G ERROR
 R *X:PSXDLTA
 I ('$T)!(X'=TERM) D QRY14 G ERROR
 W *ACK,0,*TERM
 R *X:PSXDLTD G:X=STX READ I X=EOT R *X:PSXDLTA Q:X=TERM
MSG R *X:PSXDLTD E  D QRY1,LOG^PSXUTL G ND
 I X=STX G READ
 I X=EOT R *X:PSXDLTA I X=TERM G RTN
 S QF="STX/EOT"
 D QRY5 ;unexpected character received
ERROR D FLUSH1^PSXUTL,LOG^PSXUTL S QRYPOP=1
 Q
READ S PSXACK="" S PSXTMD=$P($H,",",2)
GETMSG F %=1:1 D  Q:'%
 .R *X:PSXDLTA E  D QRY6,LOG^PSXUTL S %=0,X="" Q
 .D CHKD^PSXUTL I PSXTMOUT D QRY6,LOG^PSXUTL S %=0,X="" Q
 .I %>240 D QRY7,LOG^PSXUTL S %=0,X="" Q
 .S PSXACK=PSXACK_$C(X)
 .I (X=ETX)!(X=ETB) S %=0
 I X=ETX S PSXCNT=PSXCNT+1 G TEST
 I X=ETB G TEST
 I X=EOT R *X:PSXDLTA G:X=TERM MSG
 I (X'=ETX)!(X'=ETB)!(X'=EOT) D QRY8 G NAK
 I PSXACK="" D QRY9 G ERROR
 Q
TEST R *X:PSXDLTA E  D QRY10 G ERROR
 I "0123456789ABCDEF"'[$C(X) D QRY11 G NAK
 S PSXSUM=$C(X)
CHKSUM R *X:PSXDLTA E  D QRY10 G ERROR
 I "0123456789ABCDEF"'[$C(X) D QRY11 G NAK
 S PSXSUM=PSXSUM_$C(X)
 S X=PSXACK X ^%ZOSF("LPC") S PSXHEX=Y D HEX^PSXUTL
 R *X:1 I X'=TERM D QRY5
 I PSXHEX'=PSXSUM D QRY12 G NAK
 I PSXHEX=PSXSUM D FLUSH1^PSXUTL
 S BLK=$E(PSXACK,1) I BLK>7 D QRY16 G NAK
 I RXCNT=QLR&($E(PSXACK,7,10)'["BTS") D QRY19,LOG^PSXUTL W *EOT,*TERM Q
 I $E(PSXACK,7,10)["BTS|" S PSXQRY=0 S DA=PSXQRYID,DIE="^PSX(553.1,",DR="4////1" S:RXCNT=0 PSXCNT=2 D ^DIE K DR,DA,DIE
 I $E(PSXACK,7,9)["MSA"&($P(PSXACK,"|",3)'=PSXQRYID) D QRY15 G NAK
 I $E(PSXACK,7,9)["QRD"&($P(PSXACK,"|",5)'=PSXQRYID) D QRY15 G NAK
 W *ACK,BLK,*TERM D FILE G MSG
 Q
FILE I $E(PSXACK,7,10)["MSH|" S MESSID=$E(PSXACK,7,$L(PSXACK)-2),MSGID=$P(MESSID,"|",10),QRYFLG=0,XDA=""
 I $E(PSXACK,7,12)["NTE|99" D
 .S CANFLAG=0
 .S:($P($P(PSXACK,"\",1),"|",4)="")!($P($P(PSXACK,"\",1),"|",4)[" ") QRYFLG=1 Q:QRYFLG>0  S:"CACO"'[$P(PSXACK,"\F\",2) QRYFLG=2 S:$P(PSXACK,"\F\",2)["CA" CANFLAG=1 Q:QRYFLG>0
 .S:$P(PSXACK,"\F\",3)'?10.14N QRYFLG=3 Q:QRYFLG>0  S EMPID=$P(PSXACK,"\F\",5) S:$G(EMPID)="" QRYFLG=4 Q:QRYFLG>0  S:'$D(^VA(200,$G(EMPID),0)) QRYFLG=4 Q:QRYFLG>0  S:'$D(^XUSEC("PSXRPH",EMPID)) QRYFLG=4 Q:QRYFLG>0
 .S RXCNT=RXCNT+1
 I $E(PSXACK,7,13)["NTE|100" S:($G(CANFLAG)>0&($P($P(PSXACK,"\",1),"|",4)="")) QRYFLG=5
 Q:BLK=BLKA
 Q:$G(QRYFLG)>0
F1 L +^PSX(552.3,0):3 G:'$T F1 S NEW=$P(^PSX(552.3,0),"^",3)+1,$P(^PSX(552.3,0),"^",4)=$P(^PSX(552.3,0),"^",4)+1,$P(^PSX(552.3,0),"^",3)=NEW L -^PSX(552.3,0)
 G:$D(^PSX(552.3,NEW,0)) F1
F2 L +^PSX(552.3,NEW):3 G:'$T F2 S ^PSX(552.3,NEW,0)=$E(PSXACK,7,$L(PSXACK)-2),^PSX(552.3,NEW,1)=2,^PSX(552.3,"AQ",NEW)="" L -^PSX(552.3,NEW) S XDA=$G(XDA)_"^"_NEW K NEW
 S BLKA=BLK
 Q
QRY1 K LOG S LOG(1)="QRY1 QRY message never received for query #"_PSXQRYID Q
QRY2 K LOG S LOG(1)="QRY2 EOT received with no terminator while waiting for QRY message" Q
QRY3 K LOG S LOG(1)="QRY3 EOT received while waiting for QRY message" Q
QRY5 ;K LOG S LOG(1)="QRY5 Unexpected character received: "_$S(X>31:$C(X),1:"")_" ("_X_") while waiting for QRY message" Q
 K LOG S LOG(1)="QRY5 Unexpected character received: "_X_"^"_$G(QF) Q
QRY6 K LOG S LOG(1)="QRY6 Timeout Timer D reading QRY message" Q
QRY7 K LOG S LOG(1)="QRY7 QRY message longer than 240 characters" Q
QRY8 K LOG S LOG(1)="QRY8 QRY message did not end with ETX" Q
QRY9 K LOG S LOG(1)="QRY9 QRY was null" Q
QRY10 K LOG S LOG(1)="QRY10 Timeout reading QRY checksum" Q
QRY11 K LOG S LOG(1)="QRY11 QRY checksum contained an invalid hex digit ("_X_")" Q
QRY12 K LOG S LOG(1)="QRY12 QRY checksum does not match" Q
QRY13 K LOG S LOG(1)="QRY13 Message #"_PSXQRYID_" was rejected by OMCS" Q
QRY14 K LOG S LOG(1)="QRY14 ENQ received with no terminator" Q
QRY15 K LOG S LOG(1)="QRY15 MSA message ID did not match PSXQRYID # expected" Q
QRY16 K LOG S LOG(1)="QRY16 Block count greater than 7." Q
QRY17 K LOG S LOG(1)="QRY17 Wrong Block count received." Q
QRY18 K LOG S LOG(1)="QRY18 Maximum retries reached for receiving message." Q
QRY19 K LOG S LOG(1)="QRY19 Maximum Rxs received, query terminated." Q
QRY20 K LOG S LOG(1)="QRY20 No activity on line continuing to monitor." Q
 Q
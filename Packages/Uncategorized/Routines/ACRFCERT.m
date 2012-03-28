ACRFCERT ;IHS/OIRM/DSD/THL,AEF - DOCUMENT CERTIFICATION MANAGEMENT UTILITY; [ 09/23/2005   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;**19**;NOV 05, 2001
 ;;ROUTINE USED TO CREATE, EDIT AND MANAGE DOCUMENT CERTIFICATION
 ;;STATEMENTS
STATE ;EP;TO ADD NEW CERTIFICATION STATEMENTS
 F  D CERT Q:$D(ACRQUIT)!$D(ACROUT)
 K ACRQUIT
 Q
CERT ;DISPLAY AND EDIT CERTIFICATION STATEMENTS
 W @IOF
 W !!?20,"DOCUMENT CERTIFICATION STATEMENTS"
 W !!
 S DIC="^ACRAPVC("
 S DIC(0)="AEMLQZ"
 S DIC("A")="CERT. STATEMENT.....: "
 D DIC^ACRFDIC
 I +Y<1 S ACRQUIT="" Q
 S DA=+Y,DIE="^ACRAPVC(",DR="[ACR APPROVAL CERTIFICATION]"
 D DIE^ACRFDIC
 Q
DOCCERT ;EP;UTILITY TO SELECT CERTIFICATION STATEMENTS TO ADD TO DOCUMENT
 I $D(^ACRDOCAC("C",ACRDOCDA)) D DELCERT
 W !!?3,"Select CERTIFICATIONS for ",$P(^ACRAPVT(ACRAPVT,0),U)
 W !
 N ACR,ACRCDA
 S (ACR,ACRCDA)=0
 F  S ACRCDA=$O(^ACRAPVC("AC",ACRAPVT,ACRTXTYP,ACRCDA)) Q:'ACRCDA  D
 .Q:'$D(^ACRAPVC(ACRCDA,0))
 .S ACR=ACR+1
 .S ACR(ACR)=ACRCDA
 .W !?10,ACR
 .W ?15,$P(^ACRAPVC(ACRCDA,0),U)
 S DIR(0)="LO^1:"_ACR
 S DIR("A")="Which One(s)"
 S DIR("?")="Indicate the number(s) of applicable Certifying Statements"
 W !
 D DIR^ACRFDIC
 I $D(ACRQUIT)!$D(ACROUT) Q
 N ACRI,ACRX
 S ACRY=Y
 F ACRI=1:1 S ACRX=$P(ACRY,",",ACRI) Q:ACRX=""  D
 .S (X,ACRCS)=ACR(ACRX)
 .S DIC="^ACRDOCAC("
 .S DIC(0)="L"
 .S DIC("DR")=".02////"_ACRDOCDA_";.03////"_ACRAPDA
 .I '$D(^ACRDOCAC("AC",ACRDOCDA,X)) D
 ..D FILE^ACRFDIC
 ..S ACRCSDA=+Y
 ..D XY
 .I $D(^ACRDOCAC("AC",ACRDOCDA,ACRCS)) S ACRCSDA=$O(^(ACRCS,0)) D
 ..I ACRCSDA D
 ...W !!,"You have added the ",$P(^ACRAPVC(ACRCS,0),U)
 ...W " statement to this document."
 ...S DIR(0)="YO"
 ...S DIR("A")="Do you want to edit the statement"
 ...S DIR("B")="NO"
 ...D DIR^ACRFDIC
 ...I Y=1 D
 ....S DA=ACRCSDA,DIE="^ACRDOCAC(",DR=1
 ....W !
 ....D DIE^ACRFDIC
 Q
CAPPEND ;EP;CERTIFICATION APPENDED TO DOCUMENT AND EDITED
 Q:'$D(ACRDOCDA)
 I '$D(^ACRDOCAC("C",ACRDOCDA)) W !!,"NO CERTIFICATIONS APPENDED."
DELCERT N ACR,ACRI
 S ACR=0
 F ACRI=1:1 S ACR=$O(^ACRDOCAC("C",ACRDOCDA,ACR)) Q:'ACR  D
 .I ACRI=1 D
 ..W !!?10,"CERTIFICATIONS APPENDED:"
 ..W !?10,"------------------------"
 .I $D(^ACRDOCAC(ACR,0)) S ACRCDA=+^(0) D:ACRCDA
 ..W !?10,ACRI
 ..W ?15,$P(^ACRAPVC(ACRCDA,0),U)
 ..S DIR(0)="YO"
 ..S DIR("A")="          Read Certification NO. "_ACRI_" "
 ..S DIR("B")="NO"
 ..D DIR^ACRFDIC
 ..I Y=1 D
 ...S D0=ACR
 ...N DXS,DIP,DC,DN
 ...W @IOF
 ...W !
 ...D ^ACRCS
 ...D PAUSE^ACRFWARN
 ...W !
 ..I '$D(ACRREV) D
 ...S DIR(0)="YO"
 ...S DIR("A")="        Delete Certification NO. "_ACRI_" "
 ...S DIR("B")="NO"
 ...D DIR^ACRFDIC
 ...I Y=1 D
 ....K ^ACRDOCAC("C",ACRDOCDA,ACR),^ACRDOCAC("AC",ACRDOCDA,ACRCDA,ACR)
 ....W !!,"Certification NO. "_ACRI_" deleted."
 Q
XY ;%XY USED TO SET CERTIFICATION STATEMENT FOR DOCUMENT EQUAL TO
 ;STANDARD CERTIFICATION STATEMENT
 S %X="^ACRAPVC("_ACR(ACRX)_",1,"
 S %Y="^ACRDOCAC("_ACRCSDA_",1,"
 D %XY^%RCR
 K %X,%Y
 Q
PCERT ;EP;TO PRINT CERTIFICATION STATEMENTS ATTACHED TO A DOCUMENT
 Q:$D(ACROUT)
 W:$O(^ACRDOCAC("C",ACRDOCDA,0)) @IOF
 N ACR,D0
 S ACR=0
 F  S ACR=$O(^ACRDOCAC("C",ACRDOCDA,ACR)) Q:'ACR  D
 .N DXS,DIP,DC,DN
 .S D0=ACR
 .I $E($G(IOST),1,2)="C-" D  Q:'$D(ACRSCREN)
 ..N ACRFILE,ACRIEN,ACRFIELD,ACRTITLE
 ..S ACRFILE=9002197.1
 ..S ACRIEN=ACR
 ..S ACRFIELD=1
 ..S ACRTITLE="ARMS CERTIFICATION STATEMENT"
 ..D WP^ACRFDIC
 .K ACRSCREN
 .D ^ACRCS
 .I ACRREFX=116,$D(^ACRAPVS("AB",ACRDOCDA)) D
 ..S ACRX=$P(^ACRDOCAC(ACR,0),U,3)
 ..I ACRX,$D(^ACRAPVS(ACRX,0)) S ACRAPVT=$P(^(0),U,2) I ACRAPVT D
 ...I $D(^ACRAPVT(ACRAPVT,0)),$D(^ACRAPVS("AB",ACRDOCDA)) D SIG
 .I $E($G(IOST),1,2)["C-" D PAUSE^ACRFWARN
 .W @IOF
 Q
SIG ;EP;TO PRINT THE CERTIFYING SIGNATURE ON THE CERTIFICATION STATEMENT
 ;OR BOILER PLATE STATEMENT.
 N X,Y
 S X=0
 F  S X=$O(^ACRAPVS("AB",ACRDOCDA,X)) Q:'X  I $D(^ACRAPVS(X,0)),$D(^("DT")),$P(^("DT"),U)="A",$P(^(0),U,3)=ACRAPVT S X=^("DT") D  Q
 .S Y=$P(X,U,4)
 .S X=$S($P(X,U,2)=$P(X,U,6):$P(X,U,2),1:$P(X,U,6))
 .Q:'$D(^VA(200,X,0))
 .;S X=$P(^VA(200,X,0),U)  ;ACR*2.1*19.02 IM16848
 .S X=$$NAME2^ACRFUTL1(X)  ;ACR*2.1*19.02 IM16848
 .S X=$P($P(X,",",2)," ")_" "_$P(X,U)
 .W !!,X
 .W ?$X+4,"(ELECTRONIC SIGNATURE)"
 .X ^DD("DD")
 .W ?60,Y
 Q
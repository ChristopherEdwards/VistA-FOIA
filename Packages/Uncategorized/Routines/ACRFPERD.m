ACRFPERD ;IHS/OIRM/DSD/THL,AEF - MANAGE UPDATE OF PER DIEM & LODGING RATES; [ 11/01/2001   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;;NOV 05, 2001
 ;;THIS ROUTINE MANAGES THE IMPORT OF LODGING AND PER DIEM RATES FROM
 ;;THE ANNUAL GSA UPDATE
EN D EN1
EXIT K ACR,ACRQUIT,ACROUT,ACRCNTY,ACRCNTZ,ACREFFCT,ACRMIE
 D CLOSE^ACRFZIS
 Q
EN1 ;
 S ACREFFCT=2960301
 D IMPORT
 Q
IMPORT ;READ GSA FILE AND IMPORT NEW LODGING AND PER DIEM RATES
 D OPEN
 Q:$D(ACRQUIT)!$D(ACROUT)!$G(POP)
READ ;READ INDIVIDUAL RECORDS FROM THE GSA FILE
 F  U IO R ACRX:0 Q:ACRX="^^^^^"  D:ACRX]"" SET  ;DIRECT READ FROM UNIX FILE
 Q
SET ;SET FIELDS FROM GSA RECORD
 D ACRX
 Q:ACRX=""!(ACRX=U)
 D UPPER
 I $D(^DIC(5,"B",$P(ACRX,U))) D  Q
 .S ACRSTATE=$P(ACRX,U)
 .S ACRSTDA=$O(^DIC(5,"B",ACRSTATE,0))
 S ACRPD=$P(ACRX,U,3,99)
 I $E(ACRPD)="(" D  I 1
 .S ACRPD(1)=$P(ACRPD,U,2,4)_U_$P(ACRPD,U)
 .S ACRPD(2)=$P(ACRPD,U,6,8)_U_$P(ACRPD,U,5)
 E  D
 .S ACRPD(1)=ACRPD
 .S ACRPD(2)=""
 F I=1,2 D
 .S ACRLDG(I)=$P(ACRPD(I),U)
 .S ACRMIE(I)=$P(ACRPD(I),U,2)
 .S ACRBEGIN(I)=$P(ACRPD(I),U,4)
 .D DATE
 S ACRCITY=$P(ACRX,U)
 S ACRCNTY=$P(ACRX,U,2)
 F ACRI=1:1 S X=$P(ACRCNTY,",",ACRI) Q:X=""  S:$E(X)=" " X=$E(X,2,99) S ACRCNTZ=X D FIND
 Q
FIND ;FIND MATCH TO EXISTING ARMS ENTRY
 I '$D(^ACRPD("B",ACRCNTZ))&'$D(^ACRPD("B",ACRCNTZ_" COUNTY")) D TEMP
 D F1
 D UPDATE
 Q
UPDATE ;RESET NEW PER DIEM AND LODGING RATES
 F ACRJ=1,2 D:$G(ACRPDDA(ACRJ))]""
 .S (ACRPDDA,DA)=ACRPDDA(ACRJ)
 .S DIE="^ACRPD("
 .S DR=".03////"_ACRLDG(ACRJ)_";.04////"_ACRMIE(ACRJ)_";.05////"_ACREFFCT_";.06////"_ACRBEGIN(ACRJ)_";.07////"_ACREND(ACRJ)
 .I ACRLDG(ACRJ)&ACRMIE(ACRJ) U 0 W "." D DIE^ACRFDIC
 .D CITY
 Q
F1 ;
 K ACRPDDA
 N I
 S (ACRPDDA,I)=0
 F  S ACRPDDA=$O(^ACRPD("B",ACRCNTZ,ACRPDDA)) Q:'ACRPDDA  I $D(^ACRPD(ACRPDDA,0)),$P(^(0),U,2)=ACRSTDA S I=I+1,ACRPDDA(I)=ACRPDDA
 Q:ACRCNTZ["PARISH"
 S (ACRPDDA,I)=0
 F  S ACRPDDA=$O(^ACRPD("B",ACRCNTZ_" COUNTY",ACRPDDA)) Q:'ACRPDDA  I $D(^ACRPD(ACRPDDA,0)),$P(^(0),U,2)=ACRSTDA S I=I+1,ACRPDDA(I)=ACRPDDA
 I ACRPD(2)]"",'$D(ACRPDDA(2)) D
 .S ACRCNTZ=ACRCNTZ_$S(ACRCNTZ'["PARRISH":" COUNTY",1:"")_" 222"
 .D TEMP
 .Q:+$G(Y)<1
 .S ACRPDDA(2)=+Y
 .S ACRCNTZ=$P(ACRCNTZ," 222")
 .S DA=+Y
 .S DIE="^ACRPD("
 .S DR=".01///"_ACRCNTZ
 .U 0 W "  ",ACRCNTZ,"  ",ACRPDDA(2),!
 .D DIE^ACRFDIC
 Q
TEMP ;TEMPORARILY FILE GSA CITIES/COUNTIES WHICH DON'T MATCH CURRENT ARMS
 ;LISTING
 S X=ACRCNTZ
 S DIC="^ACRPD("
 S DIC(0)="L"
 S DIC("DR")=".02////"_ACRSTDA
 U 0 W !,"2ND VENDOR ADDED"
 D FILE^ACRFDIC
 Q
OPEN ;OPEN GSA FILE
 S %FN="conus96.thl"
 S ACROP="R"
 D HOST^ACRFZIS
 Q
UPPER ;CONVERT ALL LOWER CASE TO UPPER CASE ALPHAS
 S ACRX=$TR(ACRX,"abcdefghijklmnopqrstuvwxyz","ABCDEFGHIJKLMNOPQRSTUVWXYZ")
 Q
ACRX ;CONVERT EACH LINE INTO '^' DELIMITED STRING
 N J,X,Z
 S Z=""
 F J=1:1:100 S X=$P(ACRX,"  ",J) I X]"" S:$E(X)=" " X=$E(X,2,9999) S Z=$G(Z)_X_U
 S ACRX=Z
 Q
DATE ;EVALUATE GSA DATE AND CHANGE TO FM
 N A,W,X,Y,Z
 I ACRBEGIN(I)="" S ACREND(I)="" Q
 S W=$P($P(ACRBEGIN(I),"-"),"(",2)
 S X=$P($P(ACRBEGIN(I),"-",2),")")
 S Y=+$P(W," ",2,99),Z=+$P(X," ",2,99)
 S W=$P(W," "),X=$P(X," ")
 S A="JANUARY1FEBRUARY2MARCH3APRIL4MAY5JUNE6JULY7AUGUST8SEPTEMBER9OCTOBER10NOVEMBER11DECEMBER12"
 S W=+$P(A,W,2)
 S X=+$P(A,X,2)
 S ACRBEGIN(I)="296"_$S($L(W)=1:"0",1:"")_W_$S($L(Y)=1:"0",1:"")_Y
 S ACREND(I)="296"_$S($L(X)=1:"0",1:"")_X_$S($L(Z)=1:"0",1:"")_Z
 Q
CITY ;CHECK COUNTY FOR ASSOCIATED CITIES
 F I=1:1 S X=$P(ACRCITY,"/",I) Q:X=""  S:$E(X)=" " X=$E(X,2,999) D
 .Q:$D(^ACRPD(ACRPDDA,1,"B",X))
 .S DIC="^ACRPD("_ACRPDDA_",1,"
 .S DIC(0)="L"
 .S DA(1)=ACRPDDA
 .S:'$D(^ACRPD(ACRPDDA,1,0)) ^ACRPD(ACRPDDA,1,0)="^9002193.91"
 .D FILE^ACRFDIC
 Q
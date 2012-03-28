ACRFNDF ;IHS/OIRM/DSD/THL,AEF - NDF CONVERSION TO ARMS STANDARD ITEM FILE; [ 11/01/2001   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;;NOV 05, 2001
 ;;ROUTINE TO CONVERT NATIONAL DRUG FILE TO ARMS STANDARD ITEM FILE
EN D EN1
EXIT K ACRQUIT
 K ACRVANAM,ACRV,ACRVANAM,ACRTNAM,ACRADMIN,ACRVPN
 Q
EN1 S ACR="^PSNDF(""NDC"")"
 S ACRX="PSNDF(""NDC"""
 F  S ACR=$Q(@ACR) Q:ACR=""!(ACR'[ACRX)  D
 .S (ACRVANAM,ACRV,ACRVANAM,ACRTNAM,ACRADMIN,ACRVPN)=""
 .S DA=$P($P(ACR,",",9),")")
 .S ACRNDC=$P(ACR,",",2)
 .F ACRI=1:1:6 S DA(ACRI)=$P(ACR,",",ACRI+2)
 .I $D(^PSNDF(DA(1),2,DA(2),3,DA(3),4,DA(4),5,DA(5),6,DA(6),7,DA,0)) S ACRTNAM=$P(^(0),U,3),ACRVDA=$P(^(0),U,2),ACRADMIN=$P(^(0),U,5),ACRVPN=$P(^(0),U,4)
 .I ACRVDA,$D(^PS(55.95,ACRVDA,0)) S ACRV=$P(^(0),U)
 .I $D(^PSNDF(DA(1),0)) S ACRVANAM=$P(^(0),U)
 .I $D(^PSNDF(DA(1),5,ACRVPN,0)) S ACRVPN=$P(^(0),U)
 .W !!,ACRNDC
 .W ?20,"VA GENERIC NAME: ",ACRVANAM
 .W !?20,"VA PRODUCT NAME: ",ACRVPN
 .W !?20,"TRADE NAME.....: ",ACRTNAM
 .W !?20,"ADMINISTRATION.: ",ACRADMIN
 .W !?20,"VENDOR.........: ",ACRV
 Q
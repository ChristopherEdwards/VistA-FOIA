ACHSOCV1 ; IHS/ITSC/PMF - COMPILE CHS SERVICE CLASS CODES BY VENDOR - SUMMARY ;  [ 10/16/2001   8:16 AM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;;JUN 11, 2001
 ;
 S ACHSFY1="",ACHSFAC=DUZ(2)
GETFY ;
 S ACHSFY1=$O(^ACHSF(ACHSFAC,"D","B",ACHSFY1))
 I ACHSFY1="",'$D(^TMP("ACHSOCV",$J,ACHSFAC)) S ^TMP("ACHSOCV",$J,ACHSFAC,0)=""
 G:ACHSFY1="" ^ACHSOCVS
 S ACHSFYA=$E(ACHSFY1,2),ACHSFYB=$E(ACHSFY,4)
 I ACHSFYA'=ACHSFYB G GETFY
 S ACHSDIEN=""
GETDEN ;
 S ACHSDIEN=$O(^ACHSF(ACHSFAC,"D","B",ACHSFY1,ACHSDIEN))
 G:ACHSDIEN="" GETFY
 I '$D(^ACHSF(ACHSFAC,"D",ACHSDIEN,0)) G GETDEN
 I $P(^ACHSF(ACHSFAC,"D",ACHSDIEN,0),U,9)'>0 G GETDEN
GETCODE ;
 S ACHSOC=$P(^ACHSF(ACHSFAC,"D",ACHSDIEN,0),U,7)
 I '$D(^ACHS(3,ACHSFAC,1,ACHSOC,0)) G GETDEN
GETVDR ;
 S ACHSVEN=$P(^ACHSF(ACHSFAC,"D",ACHSDIEN,0),U,8),ACHSVNDR=$S($D(^AUTTVNDR(ACHSVEN,0)):$P(^(0),U,1),1:"NOT ON FILE")
 I '$D(^TMP("ACHSOCV",$J,ACHSFAC,ACHSVNDR,ACHSOC)) S ^TMP("ACHSOCV",$J,ACHSFAC,ACHSVNDR,ACHSOC)="0^0^0"
GETOBL ;
 S ACHSOBL=$P(^ACHSF(ACHSFAC,"D",ACHSDIEN,0),U,9)
GETPMT ;
 S ACHSPMT=$S($D(^ACHSF(ACHSFAC,"D",ACHSDIEN,"PA")):$P(^("PA"),U,1),1:0)
 I $D(^ACHSF(ACHSFAC,"D",ACHSDIEN,"ZA")) S ACHSADJ=$S($P(^ACHSF(ACHSFAC,"D",ACHSDIEN,"ZA"),U,2):$P(^("ZA"),U,2),1:0) S ACHSPMT=ACHSPMT+ACHSADJ
 S $P(^TMP("ACHSOCV",$J,ACHSFAC,ACHSVNDR,ACHSOC),U,1)=$P(^TMP("ACHSOCV",$J,ACHSFAC,ACHSVNDR,ACHSOC),U,1)+1
 S $P(^TMP("ACHSOCV",$J,ACHSFAC,ACHSVNDR,ACHSOC),U,2)=$P(^TMP("ACHSOCV",$J,ACHSFAC,ACHSVNDR,ACHSOC),U,2)+ACHSOBL
 S $P(^TMP("ACHSOCV",$J,ACHSFAC,ACHSVNDR,ACHSOC),U,3)=$P(^TMP("ACHSOCV",$J,ACHSFAC,ACHSVNDR,ACHSOC),U,3)+ACHSPMT
 G GETDEN
 ;
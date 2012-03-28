BPCRXALG ; IHS/OIT/MJL - GUI RX ALLERGY DISPLAY ;
 ;;1.5;BPC;;MAY 26, 2005
 ;;
GETALG(BGUARRAY,BPCPIEN) ;EP CALL
 ;                          FROM REMOTE PROC: BPC RXALLERGY DATA
 ;BGUARRAY is return array
 ;BPCPIEN is patient IEN
 ;
EN ;ENTRY POINT FOR TESTING
 ;S BPCPIEN=12382
 S JOB=$J,BPCGUI=1,XWBWRAP=1
 S BGUARRAY="^XTMP(""BPCRXALG"","_$J_")"
 K @BGUARRAY
 ;
 ;check patient IEN
 S BPCERR=0
 I $G(BPCPIEN)="" S ^XTMP("BPCRXALG",JOB,1)=-1,^(2)="PATIENT IEN NOT SENT!" D KILL S BPCERR=1 Q
 ;
CALL ;CALLS GMRADPT TO CREATE DATA
 ;check if Allergy GMR installed
 S BPCERR=0
 S X="GMRADPT" X ^%ZOSF("TEST") I '$T D  Q:BPCERR
 .S ^XTMP("BPCRXALG",JOB,1)=-1,^(2)="Allergy Package not Installed!"
 .D KILL
 .S BPCERR=1
 .Q
 ;
 S DFN=BPCPIEN D ^GMRADPT
 ;
 ;allergy info
 S BPCERR=0
 I $G(GMRAL)="" D  Q:BPCERR
 .S ^XTMP("BPCRXALG",JOB,1)=-1,^(2)="Patient has not been asked about allergies!"
 .D KILL
 .S BPCERR=1
 .Q
 ;
 S BPCERR=0
 I $G(GMRAL)=0 D  Q:BPCERR
 .S ^XTMP("BPCRXALG",JOB,1)=-1,^(2)="Patient has no known allergies!"
 .D KILL
 .S BPCERR=1
 .Q
 ;
 S CTR=1,X="" F  S X=$O(GMRAL(X)) Q:+X=0  D
 .S Y=$P($G(GMRAL(X)),"^",2,8)
 .S S=0,(S1,SIGN)="" F I=1:1 S S=$O(GMRAL(X,"S",S)) Q:+S=0  D
 ..S S1=$P($G(GMRAL(X,"S",S)),";",1)
 ..S:$L(S1) $P(SIGN,",",I)=S1
 .S Y=Y_"^"_SIGN
 .S CTR=CTR+1
 .S Z=$P(Y,U,2),Z=$S(Z="D":"DRUG",Z="F":"FOOD",1:"OTHER"),$P(Y,U,2)=Z
 .S Z=+$P(Y,U,3),Z=$S(Z=0:"UNVERIFIED",1:"VERIFIED"),$P(Y,U,3)=Z
 .S Z=+$P(Y,U,4),Z=$S(Z=0:"ALLERGIC REACTION",1:"NON ALLERGIC REACTION"),$P(Y,U,4)=Z
 .S Z=$P(Y,U,5),Z=$P(Z,";",1),$P(Y,U,5)=Z
 .S Z=$P(Y,U,6),Z=$S(Z="D":"DRUG",Z="F":"FOOD",Z="DF":"DRUG/FOOD",Z="DFO":"DRUG/FOOD/OTHER",Z="DO":"DRUG/OTHER",Z="FO":"FOOD/OTHER",1:"OTHER"),$P(Y,U,6)=Z
 .S Z=$P(Y,U,7),Z=$P(Z,";",1),$P(Y,U,7)=Z
 .S ^XTMP("BPCRXALG",JOB,CTR)=Y
 S ^XTMP("BPCRXALG",JOB,1)=CTR
 Q
KILL ;kill variables
 K APCDALVR,BPCPIEN,BPCTIEN,BPCLOC,BPCCAT,BPCCTR,BPCEPRV,BPCERR
 K BPCGUI,BPCL,BPCLOC,BPCMOD,BPCMTYP,BPCVAL,BPCPIEN,BPCPROV,BPCRTN
 K BPCTIEN,BPCTYPE,BPVVDT,BPCVFILE,BPCVSIT,BPCX
 Q
 ;
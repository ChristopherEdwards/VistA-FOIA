APCLW11 ; IHS/CMI/LAB - CALC WEIGHT REPORT ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
 ;cmi/anch/maw 9/12/2007 code set versioning PN
 ;
START ;EP
 ;calculate 365 days ago and 1095 days ago
 S X1=APCLDATE,X2=-365 D C^%DTC S Y=X D DD^%DT S APCL1YR=Y
 S X1=APCLDATE,X2=-1095 D C^%DTC S Y=X D DD^%DT S APCL3YR=Y
 S Y=APCLDATE D DD^%DT S APCLDT=Y
 S APCLJOB=$J,APCLBTH=$H,(DFN,APCLBTUP,APCLBBMI,APCLBOVR,APCLBOBE,APCLBHGH,APCLFTUP,APCLMTUP,APCLMBMI,APCLFBMI,APCLFOVR,APCLMOVR,APCLFOBE,APCLMOBE,APCLFHGH,APCLMHGH)=0,(APCLBLOW,APCLFLOW,APCLMLOW)=9999999
 D XTMP^APCLOSUT("APCLW1","PCC OBESITY/PREVALANCE REPORT")
 I APCLAGEG="G" D SETGROUP^APCLW12
 I APCLAGEG'="G" F I=APCLLOWA:1:APCLHGHA F J="B","F","M" S ^XTMP("APCLW1",APCLJOB,APCLBTH,"TOTAL USABLE PATS",J,I)=0,^XTMP("APCLW1",APCLJOB,APCLBTH,"LOW",J,I)=9999999,^XTMP("APCLW1",APCLJOB,APCLBTH,"HIGH",J,I)=0 D
 .S ^XTMP("APCLW1",APCLJOB,APCLBTH,"TOTAL BMI",J,I)=0,^XTMP("APCLW1",APCLJOB,APCLBTH,"OBESE",J,I)=0,^XTMP("APCLW1",APCLJOB,APCLBTH,"OVERWEIGHT",J,I)=0
 ;
PROC ;
 F  S DFN=$O(^AUPNPAT(DFN)) Q:DFN'=+DFN  D
 .Q:'$D(^DPT(DFN,0))
 .Q:$P(^DPT(DFN,0),U,19)
 .Q:$P(^DPT(DFN,0),U,3)>APCLDATE  ;born after as of date
 .Q:$$DEMO^APCLUTL(DFN,$G(APCLDEMO))
 .I APCLSEAT]"" Q:'$D(^DIBT(APCLSEAT,1,DFN))
 .I APCLCMS,'$$ONREG(DFN,APCLCMS,APCLSTAT) Q
 .S Y=DFN D ^AUPNPAT
 .Q:AUPNSEX=""
 .Q:APCLSEX'="B"&(APCLSEX'=AUPNSEX)  ;quit if want only one sex and this patient isn't that sex
 .Q:AUPNDOB=""
 .S ^(AUPNSEX)=$S($D(^XTMP("APCLW1",APCLJOB,APCLBTH,"TOTAL RECORDS",AUPNSEX)):^(AUPNSEX)+1,1:1)
 .I APCLSEX="B" S ^("B")=$S($D(^XTMP("APCLW1",APCLJOB,APCLBTH,"TOTAL RECORDS","B")):^("B")+1,1:1)
 .S X2=AUPNDOB,X1=APCLDATE D ^%DTC S AUPNDAYS=X
 .Q:AUPNDAYS<0
 .S APCLAGE=(AUPNDAYS\365.25)
 .;Q:APCLAGE<APCLLOWA
 .;Q:APCLAGE>APCLHGHA
 .S APCLHBD=$S(APCLAGE>19:$$FMTE^XLFDT($$FMADD^XLFDT($P(^DPT(DFN,0),U,3),(19*365))),1:APCL1YR)
 .S APCLBD=$S(APCLAGE>19:APCL3YR,1:APCL1YR) D GETWTHT
 .Q:'$D(APCLGWT)  ;quit if no weights
 .Q:'$D(APCLGHT)  ;quit if no heights
 .S APCLCLAS=$$BEN^AUPNPAT(DFN,"C")
 .Q:APCLCLAS=""
 .Q:APCLIBEN=1&(APCLCLAS'="01")
 .K APCLCWT,APCLCHT
 .I APCLAGE>19 D GETRECNT
 .I APCLAGE<20 D GETWHSD
 .Q:'$D(APCLCWT)
 .Q:'$D(APCLCHT)
 .S X2=AUPNDOB,X1=$P(APCLCWT,U,2) D ^%DTC S APCLAGE=(X\365.25) ;recalculate age based on date of weight
 .Q:APCLAGE<APCLLOWA
 .Q:APCLAGE>APCLHGHA
 .D CALCBMI
 .;find entry in reference table
 .;S APCLREF=$O(^APCLBMI("H",AUPNSEX,APCLAGE)) Q:APCLREF=""  S APCLREF=$O(^APCLBMI("H",AUPNSEX,APCLREF,"")) Q:APCLREF=""
 .S APCLREF=$O(^APCLBMI("H",AUPNSEX,APCLAGE,0))
 .I 'APCLREF S APCLREF=$O(^APCLBMI("H",AUPNSEX,APCLAGE)) I APCLREF S APCLREF=$O(^APCLBMI("H",AUPNSEX,APCLREF,""))
 .Q:'APCLREF
 .I APCLBMI>$P(^APCLBMI(APCLREF,0),U,7)!(APCLBMI<$P(^APCLBMI(APCLREF,0),U,6)) Q
 .I APCLAGEG="G" D SETG^APCLW12
 .I APCLAGEG'="G" D SETE^APCLW12
 .Q
EOJ ;
 K APCL1YR,APCL3YR,APCLA,APCLBD,APCLMGI,APCLCHT,APCLCWT,APCLGHT,APCLGWT,APCLROWT,APCLROHT,APCLER,APCLMHT,APCLMWT,APCLX,APCLY,APCLNN,APCLREF
 K AUPNPAT,AUPNDOB,AUPNSEX,AUPNDAYS,AUPNDOD
 K DFN,X,Y,V,A,D,I,J,Z
 Q
CALCBMI ;calculate BMI value
 ;S APCLMWT=APCLCWT/2.21,APCLMHT=APCLCHT*.025,APCLBMI=APCLMWT/(APCLMHT*APCLMHT)
 S APCLMWT=APCLCWT*.45359,APCLMHT=APCLCHT*.0254,APCLBMI=APCLMWT/(APCLMHT*APCLMHT)
 Q
GETWTHT ;
 K APCLGHT,APCLGWT
 S APCLY="APCLGWT(",APCLX=DFN_"^ALL MEASUREMENT WT;DURING "_APCLBD_"-"_APCLDT S APCLER=$$START1^APCLDF(APCLX,APCLY)
 ;get rid of ones with no value
 S X=0 F  S X=$O(APCLGWT(X)) Q:X'=+X  I '$P(APCLGWT(X),U,2) K APCLGWT(X)
 S APCLY="APCLGHT(",APCLX=DFN_"^ALL MEASUREMENT HT;DURING "_APCLHBD_"-"_APCLDT S APCLER=$$START1^APCLDF(APCLX,APCLY)
 S X=0 F  S X=$O(APCLGHT(X)) Q:X'=+X  I '$P(APCLGHT(X),U,2) K APCLGHT(X)
PN ;kill off those that have prenatal code as dx
 ;S X=0 F  S X=$O(APCLGWT(X)) Q:X'=+X  S V=$P(APCLGWT(X),U,5),P=0 F  S P=$O(^AUPNVPOV("AD",V,P)) Q:P'=+P  S D=$P(^ICD9($P(^AUPNVPOV(P,0),U),0),U) D  ;cmi/anch/maw 9/12/2007 orig line
 S X=0 F  S X=$O(APCLGWT(X)) Q:X'=+X  S V=$P(APCLGWT(X),U,5),P=0 F  S P=$O(^AUPNVPOV("AD",V,P)) Q:P'=+P  S D=$P($$ICDDX^ICDCODE($P(^AUPNVPOV(P,0),U)),U,2) D  ;cmi/anch/maw 9/12/2007 csv
 .I $E(D,1,3)="V22" K APCLGWT(X) Q
 .I $E(D,1,3)="V23" K APCLGWT(X) Q
 .I $E(D,1,3)="V27" K APCLGWT(X) Q
 .I $E(D,1,3)="V28" K APCLGWT(X) Q
 .I D>629.9999&(D<676.95) K APCLGWT(X) Q
 .I D>61.49&(D<61.71) K APCLGWT(X) Q
 .Q
 ;S X=0 F  S X=$O(APCLGHT(X)) Q:X'=+X  S V=$P(APCLGHT(X),U,5),P=0 F  S P=$O(^AUPNVPOV("AD",V,P)) Q:P'=+P  S D=$P(^ICD9($P(^AUPNVPOV(P,0),U),0),U) D  ;cmi/anch/maw 9/12/2007 orig line
 S X=0 F  S X=$O(APCLGHT(X)) Q:X'=+X  S V=$P(APCLGHT(X),U,5),P=0 F  S P=$O(^AUPNVPOV("AD",V,P)) Q:P'=+P  S D=$P($$ICDDX^ICDCODE($P(^AUPNVPOV(P,0),U)),U,2) D  ;cmi/anch/maw 9/12/2007 csv
 .I $E(D,1,3)="V22" K APCLGHT(X) Q
 .I $E(D,1,3)="V23" K APCLGHT(X) Q
 .I $E(D,1,3)="V27" K APCLGHT(X) Q
 .I $E(D,1,3)="V28" K APCLGHT(X) Q
 .I D>629.9999&(D<676.95) K APCLGHT(X) Q
 .I D>61.49&(D<61.71) K APCLGHT(X) Q
 .Q
RO ;set up by date
 K APCLROWT,APCLROHT
 S X=0 F  S X=$O(APCLGWT(X)) Q:X'=+X  S APCLROWT($P(APCLGWT(X),U))=X
 S X=0 F  S X=$O(APCLGHT(X)) Q:X'=+X  S APCLROHT($P(APCLGHT(X),U))=X
 Q
 ;
GETWHSD ;check for height and weight on same date
 ;reverse $O THRU APCLROWT & CHECK APCLROHT
 S X=9999999 F  S X=$O(APCLROWT(X),-1) Q:X=""!($D(APCLCHT))  I $D(APCLROHT(X)) S APCLCHT=$P(APCLGHT(APCLROHT(X)),U,2)_U_X,APCLCWT=$P(APCLGWT(APCLROWT(X)),U,2)_U_X
 Q
GETRECNT ;get most recent in 3 yrs
 S X=9999999,X=$O(APCLROWT(X),-1) Q:X=""  S APCLCWT=$P(APCLGWT(APCLROWT(X)),U,2)_U_X
 S X=9999999,X=$O(APCLROHT(X),-1) Q:X=""  S APCLCHT=$P(APCLGHT(APCLROHT(X)),U,2)_U_X
 Q
ONREG(P,R,S) ;is this patient on this register with this status
 I $G(P)="" Q ""
 I $G(R)="" Q ""
 S S=$G(S)
 NEW D S D=$G(^ACM(41,"AC",P,R))
 I D="" Q ""
 I S="" Q 1
 I $P($G(^ACM(41,D,"DT")),U,1)'=S Q 0
 Q 1
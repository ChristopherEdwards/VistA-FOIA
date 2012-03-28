BGP1NPLD ; IHS/CMI/LAB - IHS gpra print 30 Jun 2010 5:59 PM ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
NPL ;
 Q:$G(BGPAREAA)
 ;S X=" " D S(X,1,1) D S(X,1,1) D S(X,1,1) S X="PATIENT LISTS" D S(X,1,1) S X=" " D S(X,1,1)
 S BGPINDB=0 F  S BGPINDB=$O(^XTMP("BGP1DNP",BGPJ,BGPH,"LIST",BGPINDB)) Q:BGPINDB'=+BGPINDB  D NPL1
 Q
NPL1 ;EP
 Q:$G(BGPAREAA)
 S BGPO=0 F  S BGPO=$O(^XTMP("BGP1DNP",BGPJ,BGPH,"LIST",BGPINDB,BGPO)) Q:BGPO'=+BGPO  D NPL11
 Q
NPL11 ;
 S BGPL=0 F  S BGPL=$O(^XTMP("BGP1DNP",BGPJ,BGPH,"LIST",BGPINDB,BGPO,BGPL)) Q:BGPL'=+BGPL  D
 .S BGPCOUNT=0,BGPPCNT=0
 .D HEADER
 .S BGPCNT=BGPINDL(BGPINDB,BGPL)
 .I BGPCNT<11!(BGPLIST'="R") S BGPCNT=1 G GO
 .I BGPCNT<100 S BGPCNT=BGPCNT\10 G GO
 .S BGPCNT=10
GO .;
 .S X=$P(^BGPINDB(BGPINDB,0),U,3) D S(X,1,1)
 .;S X=" " D S(X,1,1)
 .G NEXT
 .S X="Denominator(s):" D S(X,1,1)
 .S BGPNODE=$S(BGPRTYPE=1:81,BGPRTYPE=4:61,BGPRTYPE=7:83,BGPRTYPE=9:85,1:61)
 .S BGPX=0 F  S BGPX=$O(^BGPINDB(BGPINDB,BGPNODE,"B",BGPX)) Q:BGPX'=+BGPX  D
 ..S BGPY=0 F  S BGPY=$O(^BGPINDB(BGPINDB,BGPNODE,"B",BGPX,BGPY)) Q:BGPY'=+BGPY  D
 ...;I $P(^BGPINDB(BGPINDB,61,BGPY,0),U,2)'[BGPRTYPE Q  ;not a denom def for this report
 ...;I '$D(^BGPINDB(BGPINDB,61,BGPY,11,"B",BGPRTYPE)) Q  ;not this report type
 ...S BGPZ=0 F  S BGPZ=$O(^BGPINDB(BGPINDB,BGPNODE,BGPY,1,BGPZ)) Q:BGPZ'=+BGPZ  D
 ....S Y=^BGPINDB(BGPINDB,BGPNODE,BGPY,1,BGPZ,0) D S(Y,1,1)
 ....Q
 ...Q
 ..Q
 .S X=" " D S(X,1,1)
 .S X="Numerator(s):" D S(X,1,1)
 .S BGPNODE=$S(BGPRTYPE=1:82,BGPRTYPE=4:62,BGPRTYPE=7:84,BGPRTYPE=9:86,1:62)
 .S BGPX=0 F  S BGPX=$O(^BGPINDB(BGPINDB,BGPNODE,"B",BGPX)) Q:BGPX'=+BGPX  D
 ..S BGPY=0 F  S BGPY=$O(^BGPINDB(BGPINDB,BGPNODE,"B",BGPX,BGPY)) Q:BGPY'=+BGPY  D
 ...;I $P(^BGPINDB(BGPINDB,62,BGPY,0),U,2)'[BGPRTYPE Q  ;not a denom def for this report
 ...;I '$D(^BGPINDB(BGPINDB,62,BGPY,11,"B",BGPRTYPE)) Q  ;not this report type
 ...S BGPZ=0 F  S BGPZ=$O(^BGPINDB(BGPINDB,BGPNODE,BGPY,1,BGPZ)) Q:BGPZ'=+BGPZ  D
 ....S X=^BGPINDB(BGPINDB,BGPNODE,BGPY,1,BGPZ,0) D S(X,1,1)
 ....Q
 ...Q
 ..Q
 .S X=" " D S(X,1,1)
 .S BGPNODE=11 I BGPRTYPE=1,$O(^BGPINDB(BGPINDB,54,0)) S BGPNODE=54
 .S X="Logic" D S(X,1,1)
 .S BGPX=0 F  S BGPX=$O(^BGPINDB(BGPINDB,BGPNODE,BGPX)) Q:BGPX'=+BGPX  D
 ..S X=^BGPINDB(BGPINDB,BGPNODE,BGPX,0) D S(X,1,1)
 .S X=" " D S(X,1,1) S X="Performance Measure Description" D S(X,1,1) S BGPX=0 F  S BGPX=$O(^BGPINDB(BGPINDB,51,BGPX)) Q:BGPX'=+BGPX  D
 ..S X=^BGPINDB(BGPINDB,51,BGPX,0) D S(X,1,1)
 .I $O(^BGPINDB(BGPINDB,52,0)) S X=" " D S(X,1,1) S X="Past Performance and/or Target" D S(X,1,1) S BGPX=0 F  S BGPX=$O(^BGPINDB(BGPINDB,52,BGPX)) Q:BGPX'=+BGPX  D
 ..S X=^BGPINDB(BGPINDB,52,BGPX,0) D S(X,1,1)
 .I $O(^BGPINDB(BGPINDB,55,0)) S X=" " D S(X,1,1) S X="Source" D S(X,1,1) S BGPX=0 F  S BGPX=$O(^BGPINDB(BGPINDB,55,BGPX)) Q:BGPX'=+BGPX  D
 ..S X=^BGPINDB(BGPINDB,55,BGPX,0) D S(X,1,1)
 .S X=" " D S(X,1,1)
NEXT .;
 .S BGPX=0 F  S BGPX=$O(^BGPNPLB(BGPL,11,BGPX)) Q:BGPX'=+BGPX  D
 ..S X=^BGPNPLB(BGPL,11,BGPX,0) D S(X,1,1)
 .D H1
 .S BGPCOM="" F  S BGPCOM=$O(^XTMP("BGP1DNP",BGPJ,BGPH,"LIST",BGPINDB,BGPO,BGPL,BGPCOM)) Q:BGPCOM=""  D
 ..S BGPSEX="" F  S BGPSEX=$O(^XTMP("BGP1DNP",BGPJ,BGPH,"LIST",BGPINDB,BGPO,BGPL,BGPCOM,BGPSEX)) Q:BGPSEX=""  D
 ...S BGPAGE="" F  S BGPAGE=$O(^XTMP("BGP1DNP",BGPJ,BGPH,"LIST",BGPINDB,BGPO,BGPL,BGPCOM,BGPSEX,BGPAGE)) Q:BGPAGE=""  D
 ....S DFN=0 F  S DFN=$O(^XTMP("BGP1DNP",BGPJ,BGPH,"LIST",BGPINDB,BGPO,BGPL,BGPCOM,BGPSEX,BGPAGE,DFN)) Q:DFN'=+DFN  S BGPCOUNT=BGPCOUNT+1 D PRINTL
 ....Q
 ...Q
 ..Q
 .S X=" " D S(X,1,1) S X="  " D S(X,1,1)
 .S X=" " D S(X,1,1) S X="  " D S(X,1,1)
 .S X="Total # of patients on list: "_+$G(BGPPCNT) D S(X,1,1)
 Q
PRINTL ;print one line
 Q:(BGPCOUNT#BGPCNT)
 S BGPPCNT=BGPPCNT+1
 S X=$E($P(^DPT(DFN,0),U),1,22) D S(X,1,1) S X=$$HRN^AUPNPAT(DFN,DUZ(2)) D S(X,,2) S X=$E(BGPCOM,1,14) D S(X,,3) S X=BGPSEX D S(X,,4) S X=BGPAGE D S(X,,5)
 S X=$P(^XTMP("BGP1DNP",BGPJ,BGPH,"LIST",BGPINDB,BGPO,BGPL,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",1) D S(X,,6)
 S X=$P(^XTMP("BGP1DNP",BGPJ,BGPH,"LIST",BGPINDB,BGPO,BGPL,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",2) D S(X,,7)
 Q
 ;
HEADER ;EP
 S X="**** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****" D S(X,1,1)
 I BGPRTYPE=1 S X="***  IHS 2011 GPRA Performance & PART Patient List  ***" D S(X,1,1)
 I BGPRTYPE=7 S X="***  IHS 2011 Other National Measures Patient List  ***" D S(X,1,1)
 S X=$$RPTVER^BGP1BAN D S(X,1,1)
 S X=$P(^DIC(4,DUZ(2),0),U) D S(X,1,1)
 S X="Report Period: "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) D S(X,1,1)
 S X=$S(BGPLIST="A":"All Patients",BGPLIST="R":"Random Patient List",1:"Patient List by Provider: "_BGPLPROV) D S(X,1,1)
 S X=$TR($J("",80)," ","-") D S(X,1,1)
 Q
H1 ;
 S X=" " D S(X,1,1) S X="UP=User Pop; AC=Active Clinical; AD=Active Diabetic;" D S(X,1,1) S X="AAD=Active Adult Diabetic; PREG=Pregnant Female;" D S(X,1,1) D
 .S X="IMM=Active IMM Pkg Pt; IHD=Active Ischemic Heart Disease;"_$S(BGPRTYPE'=7:" CHD=Active Coronary Heart Disease",1:"") D S(X,1,1)
 S X=" " D S(X,1,1)
 S X="PATIENT NAME" D S(X,1,1) S X="HRN" D S(X,,2) S X="COMMUNITY" D S(X,,3) S X="SEX" D S(X,,4) S X="AGE" D S(X,,5) S X="DENOMINATOR" D S(X,,6) S X="NUMERATOR" D S(X,,7)
 S X=$TR($J("",80)," ","-") D S(X,1,1)
 Q
S(Y,F,P) ;EP - set up array
 I '$G(F) S F=0
 S %=$P(^TMP($J,"BGPDEL",0),U)+F,$P(^TMP($J,"BGPDEL",0),U)=%
 I '$D(^TMP($J,"BGPDEL",%)) S ^TMP($J,"BGPDEL",%)=""
 S $P(^TMP($J,"BGPDEL",%),U,P)=Y
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
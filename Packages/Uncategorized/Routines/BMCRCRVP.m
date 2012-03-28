BMCRCRVP ; IHS/PHXAO/TMJ - PRNT BILL VSTS ;   
 ;;4.0;REFERRED CARE INFO SYSTEM;;JAN 09, 2006
 ;2.0*2 12/30/03 IHS/ITSC/FCJ ADDED COMMENTS TO THE LINES AFTER THE DO'S
 ;      THAT WERE ALREADY COMMENTED OUT
 ;
 S BMCPG=0 D @("HEAD"_(2-($E(IOST,1,2)="C-"))) I '$D(^XTMP("BMCRCRV",BMCJOB,BMCBT)) W !,"No referrals to report",! G XIT
 S BMCPN=0,BMCQUIT=0
 S BMCDATE="" F  S BMCDATE=$O(^XTMP("BMCRCRV",BMCJOB,BMCBT,"DATA HITS",BMCDATE)) Q:BMCDATE=""!(BMCQUIT)  D P
XIT ;
 K ^XTMP("BMCRCRV",BMCJOB,BMCBT)
 D DONE^BMCRLP2
 D KILL^AUPNPAT
 K BMCDATE
 Q
P ;
 S BMCPN="" F  S BMCPN=$O(^XTMP("BMCRCRV",BMCJOB,BMCBT,"DATA HITS",BMCDATE,BMCPN)) Q:BMCPN=""!(BMCQUIT)  D PRINT
 Q
PRINT ;print one referral
 I $Y>(IOSL-10) D HEAD Q:BMCQUIT
 S BMCCDT=0 F  S BMCCDT=$O(^XTMP("BMCRCRV",BMCJOB,BMCBT,"DATA HITS",BMCDATE,BMCPN,BMCCDT)) Q:BMCCDT'=+BMCCDT!(BMCQUIT)  S BMCRREC=^BMCCOM(BMCCDT,0),DFN=$P(BMCRREC,U,2) D PRINT1
 Q
PRINT1 ;
 I $Y>(IOSL-3) D HEAD Q:BMCQUIT
 S BMCHRN="????" I $D(^AUPNPAT(DFN,41,DUZ(2))) S BMCHRN=$P(^AUTTLOC(DUZ(2),0),U,7)_$P(^AUPNPAT(DFN,41,DUZ(2),0),U,2)
 W !,$E($P(^DPT(DFN,0),U),1,30),?32,BMCHRN,?43,"DOB: ",$$DOB^AUPNPAT(DFN,"E"),"  ",$$AGE^AUPNPAT(DFN,DT,"R")," ",$$SSN^AUPNPAT(DFN)
 W !!,BMCCDT
 W !,BMCRREC
 ;W !,"Tribe: ",$E($$TRIBE^AUPNPAT(DFN,"E"),1,20),?32,"Req Provider: ",$$VAL^XBDIQ1(90001,BMCCDT,.06)
 ;W !,"Referral #: ",$P($G(^BMCCOM(BMCCDT,0)),U,2)
 ;S BMCC=0 W !,"3RD Party:  " I $$MCR^AUPNPAT(DFN,$S($$AVDOS^BMCRLU(BMCCDT,"I")]"":$$AVDOS^BMCRLU(BMCCDT,"I"),1:$P(BMCRREC,U))) W "MEDICARE" S BMCC=BMCC+1
 ;I $$MCD^AUPNPAT(DFN,$S($$AVDOS^BMCRLU(BMCCDT,"I")]"":$$AVDOS^BMCRLU(BMCCDT,"I"),1:$P(BMCRREC,U))) D
 ;.W:BMCC "  " W "MEDICAID: ",$$MCDPN^AUPNPAT(DFN,$$AVDOS^BMCRLU(BMCCDT,"I"),"E") S BMCC=BMCC+1
 ;I $$PI^AUPNPAT(DFN,$S($$AVDOS^BMCRLU(BMCCDT,"I")]"":$$AVDOS^BMCRLU(BMCCDT,"I"),1:$P(BMCRREC,U))) D
 ;.W:BMCC "  " W $$PIN^AUPNPAT(DFN,$$AVDOS^BMCRLU(BMCCDT,"I"),"E")
 I $Y>(IOSL-3) D HEAD Q:BMCQUIT
 ;W !,"Refer To:",?10,$E($$FACREF^BMCRLU(BMCCDT),1,20),?32,$S($$VAL^XBDIQ1(90001,BMCCDT,.09)]"":"Provider:  "_$$VAL^XBDIQ1(90001,BMCCDT,.09),1:"")
PRIPAY ;Primary Payor
 ;I $P(BMCRREC,U,11)'="" W !,"Primary Payor: "_$$VAL^XBDIQ1(90001,BMCCDT,.11)
 ;
TYPE ;
 ;I $P(BMCRREC,U,4)'="" W ?50,"Referral Type:   "_$$VAL^XBDIQ1(90001,BMCCDT,.04)
 ;I $P(BMCRREC,U,14)="I" D  Q:BMCQUIT  I 1
 ;.W !,"Inpatient Admission Date:  ",$$AVDOS^BMCRLU(BMCCDT,"C"),?45,"LOS: ",$$AVLOS^BMCRLU(BMCCDT,"C")
 ;E  D
 ;.W !,"Outpatient Services requested for: ",$$AVDOS^BMCRLU(BMCREF,"C")," # of Visits: ",$$VAL^XBDIQ1(90001,BMCREF,1111)
PURPOSE ;
 ;I $Y>(IOSL-3) D HEAD Q:BMCQUIT
 ;K BMCP W !,"Purpose:"
 ;S BMCP=$$GET1^DIQ(90001,BMCREF,1201,"","BMCP")
 ;S DIWL=1,DIWF="C66" S X=BMCP D ^DIWP
 ;S (C,Z)=0 F  S Z=$O(^UTILITY($J,"W",DIWL,Z)) Q:Z'=+Z!(BMCQUIT)  S C=C+1 D:$Y>(IOSL-3) HEAD Q:BMCQUIT  W:C'=1 ! W ?10,^UTILITY($J,"W",DIWL,Z,0)
 ;Q:BMCQUIT
 ;K DIWL,DIWR,DIWF,Z,^UTILITY($J,"W"),BMCNODE,BMCFILE,BMCG,BMCCOL
COMMENT ;
 ;I '$D(^BMCCOM(BMCREF,1)) G DX
 S BMCNODE=1,BMCIOM=70,BMCFILE=90001.03,BMCDA=BMCCDT D WP^BMCFDR K BMCIOM
 S Y=0 F  S Y=$O(BMCWP(Y)) Q:Y'=+Y!(BMCQUIT)  D
 .I $Y>(IOSL-3) D HEAD Q:BMCQUIT
 .W !?5,BMCWP(Y)
 Q:BMCQUIT
DX ;Print either prov narrative/canned narrative
 ;I $Y>(IOSL-3) D HEAD Q:BMCQUIT
 ;I $D(^BMCDX("AD",BMCREF)) D  I 1
 ;.W !,"Dx:"
 ;.S (C,X)=0 F  S X=$O(^BMCDX("AD",BMCREF,X)) Q:X'=+X!(BMCQUIT)  S C=C+1,BMCD=+^BMCDX(X,0) D:$Y>(IOSL-3) HEAD Q:BMCQUIT  W:C'=1 ! D
 ;..S BMCDXDOC="" I $P($G(^BMCDX(X,0)),U,6)'="" S BMCDXDOC=$P($G(^BMCDX(X,0)),U,6) D
 ;..W ?10,$P(^ICD9(BMCD,0),U),?19," - ",$S(BMCDXDOC'="":$E($P(^AUTNPOV(BMCDXDOC,0),U,1),1,50),1:$E($P(^ICD9(BMCD,0),U,3),1,50))
 ;E  D
 ;.W !,"Dx Cat:",?10,$$GET1^DIQ(90001,BMCREF,.12)
PROC ;
 ;I $Y>(IOSL-3) D HEAD Q:BMCQUIT
 ;I $D(^BMCPX("AD",BMCREF)) D  I 1
 ;.W !,"Proc:"
 ;.S (C,X)=0 F  S X=$O(^BMCPX("AD",BMCREF,X)) Q:X'=+X!(BMCQUIT)  S C=C+1,BMCD=+^BMCPX(X,0) D:$Y>(IOSL-3) HEAD Q:BMCQUIT  W:C'=1 ! W ?10,$P(^ICPT(BMCD,0),U),?19," - ",$E($P(^ICPT(BMCD,0),U,2),1,50)
 ;E  D
 ;.W !,"Srv Cat:",?10,$$GET1^DIQ(90001,BMCREF,.13)
 ;Q:BMCQUIT
BOC ;
 ;I $Y>(IOSL-3) D HEAD Q:BMCQUIT
 ;W !,"Priority: ",$$VAL^XBDIQ1(90001,BMCREF,.32),"  CHS Auth Dec: ",$$VAL^XBDIQ1(90001,BMCREF,1112),"  MCC Action: ",$$VAL^XBDIQ1(90001,BMCREF,1123)
 ;W !,"Utilization Review by MD: ",$$VAL^XBDIQ1(90001,BMCREF,1125)
LOCAT ;Print Local Categories
 ;I $D(^BMCCOM(BMCREF,21,0)) D
 ;. S BMCLOCC=0
 ;.F  S BMCLOCC=$O(^BMCCOM(BMCREF,21,"B",BMCLOCC)) Q:BMCLOCC'=+BMCLOCC  D
 ;..S BMCLOCI=0
 ;..F  S BMCLOCI=$O(^BMCCOM(BMCREF,21,"B",BMCLOCC,BMCLOCI)) Q:BMCLOCI'=+BMCLOCI  D
 ;... S BMCLOCP=$P(^BMCCOM(BMCREF,21,BMCLOCI,0),U)
 ;... Q:BMCLOCP=""
 ;... S BMCLOCPP=$P(^BMCLCAT(BMCLOCP,0),U)
 ;... W !,"Local Category:   "_BMCLOCPP
 ;
 ;
 ;I '$D(^BMCCOM(BMCREF,2)) G NEXT
 ;W !,"Business Office Comments:"
 ;S BMCNODE=2,BMCIOM=70,BMCFILE=90001.03,BMCDA=BMCREF D WP^BMCFDR K BMCIOM
 ;S Y=0 F  S Y=$O(BMCWP(Y)) Q:Y'=+Y!(BMCQUIT)  D
 ;.I $Y>(IOSL-3) D HEAD Q:BMCQUIT
 ;.W !?5,BMCWP(Y)
 ;Q:BMCQUIT
NEXT ;
 W !,"--------------------",!
 Q
HEAD ;ENTRY POINT
 NEW X,Y,Z,C
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BMCQUIT=1 Q
HEAD1 ;
 W:$D(IOF) @IOF
HEAD2 ;
 S BMCPG=BMCPG+1
 W !?13,"********** CONFIDENTIAL PATIENT INFORMATION **********"
 W !?(80-$L($P(^DIC(4,DUZ(2),0),U))/2),$P(^DIC(4,DUZ(2),0),U),?72,"Page ",BMCPG,!
 W ?21,"**WEEKLY CHS REVIEW LISTING BY DATE**"
 W !,$TR($J(" ",80)," ","-")
 Q
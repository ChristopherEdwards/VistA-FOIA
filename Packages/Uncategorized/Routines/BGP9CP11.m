BGP9CP11 ; IHS/CMI/LAB - IHS gpra print ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
 ;
 ;
AMI3W ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 D WDOD^BGP9CPU(DFN)
 D WDT^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D WTT^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D TRANSN^BGP9CP2 Q:BGPQUIT
 D WPPDPOV^BGP9CPU(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP9CPU(BGPVSIT)
 Q:BGPQUIT
 K BGPDATA
 S BGPC=0
 D LVSD^BGP9CU1(DFN,$$FMADD^XLFDT($$DSCH^BGP9CU(BGPVINP),-365),$$DSCH^BGP9CU(BGPVINP),.BGPDATA,0)
 D EJECFRAC^BGP9CU1(DFN,$$FMADD^XLFDT($$DSCH^BGP9CU(BGPVINP),-365),$$DSCH^BGP9CU(BGPVINP),.BGPDATA,BGPC)
 D WLVSD^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 S X=$$COMFORT^BGP9CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP9CPU(X)
 K BGPDATA
 K BGPY
 Q:BGPQUIT
 S X=$$ACEALLEG^BGP9CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP9CU(BGPVINP))
 S Z=$$ARBALLEG^BGP9CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP9CU(BGPVINP))
 D WACEALEG^BGP9CPU
 K BGPDATA
 S BGPC=0
 D ALLDXS^BGP9CU2(DFN,$$FMADD^XLFDT($$DSCH^BGP9CU(BGPVINP),-365),$$DSCH^BGP9CU(BGPVINP),.BGPDATA,BGPC,"BGP CMS AORTIC STENOSIS DXS")
 D WAORTIC^BGP9CPU
 Q:BGPQUIT
 K BGPDATA,BGPDX
 S BGPXX=0
 D ANGIOED^BGP9CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP9CU(BGPVINP),-365),$$DSCH^BGP9CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D HYPERKAL^BGP9CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP9CU(BGPVINP),-365),$$DSCH^BGP9CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D HYPOTEN^BGP9CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP9CU(BGPVINP),-365),$$DSCH^BGP9CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D RENART^BGP9CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP9CU(BGPVINP),-365),$$DSCH^BGP9CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D RENAL^BGP9CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP9CU(BGPVINP),-365),$$DSCH^BGP9CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 D WDXS^BGP9CPU
 K BGPDATA
 K BGPY
 Q:BGPQUIT
 K BGPDATA
 S BGPC=0
 D NMIDRUG^BGP9CU1(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA,"BGP CMS ACEI MEDS",0)
 D NMIDRUG^BGP9CU1(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA,"BGP CMS ARB MEDS",BGPC)
 D WNMIACE^BGP9CPU(.BGPDATA)
 Q:BGPQUIT
 S X=$$LASTMED^BGP9CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP CMS ACEI MEDS","","BGP CMS ACEI MEDS CLASS")
 S Z=$$LASTMED^BGP9CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP CMS ARB MEDS","","BGP CMS ARB MEDS CLASS")
 D WLASTACE^BGP9CPU
 Q:BGPQUIT
 Q:BGPQUIT
 D ALLALG1^BGP9CU1(DFN,DT,$$DSCH^BGP9CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP9CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP9CPU
 K BGPDATA
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP9CPU
 Q
 ;
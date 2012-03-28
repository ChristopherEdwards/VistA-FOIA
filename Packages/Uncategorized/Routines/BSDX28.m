BSDX28 ; IHS/OIT/HMW/MSC/SAT - WINDOWS SCHEDULING RPCS ;
 ;;3.0;IHS WINDOWS SCHEDULING;;DEC 09, 2010
 ;
 ;HMW 20050721 Added test for inactivated record
 ;
PTLOOKRS(BSDXY,BSDXP,BSDXC)  ;EP Patient Lookup
 ;
 ;Called by BSDXPatientLookupRS
 ;Find up to BSDXC patients matching BSDXP*
 ;Supports DOB Lookup, SSN Lookup
 ;
 ;S X="ERROR^BSDX28",@^%ZOSF("TRAP")
 S BSDXP=$TR(BSDXP,$C(13),"")
 S BSDXP=$TR(BSDXP,$C(10),"")
 S BSDXP=$TR(BSDXP,$C(9),"")
 S:BSDXC="" BSDXC=10
 N BSDXHRN,BSDXZ,BSDXDLIM,BSDXRET,BSDXDPT,BSDXRET,BSDXIEN,BSDXFILE
 N BSDXIENS,BSDXFIELDS,BSDXFLAGS,BSDXVALUE,BSDXNUMBER,BSDXINDEXES,BSDXSCREEN
 N BSDXTARG,BSDXMSG,BSDXRSLT,BSDXCNT
 S BSDXDLIM="^"
 S BSDXRET="T00030NAME^T00030HRN^T00030SSN^D00030DOB^T00030IEN"_$C(30)
 I '+$G(DUZ) S BSDXY=BSDXRET_$C(31) Q
 I '$D(DUZ(2)) S BSDXY=BSDXRET_$C(31) Q
 ;
DOB ;DOB Lookup
 I +DUZ(2),((BSDXP?1.2N1"/"1.2N1"/"1.4N)!(BSDXP?1.2N1" "1.2N1" "1.4N)!(BSDXP?1.2N1"-"1.2N1"-"1.4N)!(BSDXP?1.2N1"."1.2N1"."1.4N)) D  S BSDXY=BSDXRET_$C(31) Q
 . S X=BSDXP S %DT="P" D ^%DT S BSDXP=Y Q:'+Y
 . Q:'$D(^DPT("ADOB",BSDXP))
 . S BSDXIEN=0 F  S BSDXIEN=$O(^DPT("ADOB",BSDXP,BSDXIEN)) Q:'+BSDXIEN  D
 . . Q:'$D(^DPT(BSDXIEN,0))
 . . S BSDXDPT=$G(^DPT(BSDXIEN,0))
 . . S BSDXZ=$P(BSDXDPT,U) ;NAME
 . . S BSDXHRN=$P($G(^AUPNPAT(BSDXIEN,41,DUZ(2),0)),U,2) ;CHART
 . . I BSDXHRN="" Q  ;NO CHART AT THIS DUZ2
 . . I $P($G(^AUPNPAT(BSDXIEN,41,DUZ(2),0)),U,3) S BSDXHRN=BSDXHRN_"(*)" Q  ;HMW 20050721 Record Inactivated
 . . S $P(BSDXZ,BSDXDLIM,2)=BSDXHRN
 . . S $P(BSDXZ,BSDXDLIM,3)=$P(BSDXDPT,U,9) ;SSN
 . . S Y=$P(BSDXDPT,U,3) X ^DD("DD")
 . . S $P(BSDXZ,BSDXDLIM,4)=Y ;DOB
 . . S $P(BSDXZ,BSDXDLIM,5)=BSDXIEN
 . . S BSDXRET=BSDXRET_BSDXZ_$C(30)
 . . Q
 . Q
 ;
 ;Chart# Lookup
 I +DUZ(2),BSDXP]"",$D(^AUPNPAT("D",BSDXP)) D  S BSDXY=BSDXRET_$C(31) Q
 . S BSDXIEN=0 F  S BSDXIEN=$O(^AUPNPAT("D",BSDXP,BSDXIEN)) Q:'+BSDXIEN  I $D(^AUPNPAT("D",BSDXP,BSDXIEN,DUZ(2))) D  Q
 . . Q:'$D(^DPT(BSDXIEN,0))
 . . S BSDXDPT=$G(^DPT(BSDXIEN,0))
 . . S BSDXZ=$P(BSDXDPT,U) ;NAME
 . . S BSDXHRN=BSDXP ;CHART
 . . I $D(^AUPNPAT(BSDXIEN,41,DUZ(2),0)),$P(^(0),U,3) S BSDXHRN=BSDXHRN_"(*)" Q  ;HMW 20050721 Record Inactivated
 . . S $P(BSDXZ,BSDXDLIM,2)=BSDXHRN
 . . S $P(BSDXZ,BSDXDLIM,3)=$P(BSDXDPT,U,9) ;SSN
 . . S Y=$P(BSDXDPT,U,3) X ^DD("DD")
 . . S $P(BSDXZ,BSDXDLIM,4)=Y ;DOB
 . . S $P(BSDXZ,BSDXDLIM,5)=BSDXIEN
 . . S BSDXRET=BSDXRET_BSDXZ_$C(30)
 . . Q
 . Q
 ;
 ;SSN Lookup
 I (BSDXP?9N)!(BSDXP?3N1"-"2N1"-"4N),$D(^DPT("SSN",BSDXP)) D  S BSDXY=BSDXRET_$C(31) Q
 . S BSDXIEN=0 F  S BSDXIEN=$O(^DPT("SSN",BSDXP,BSDXIEN)) Q:'+BSDXIEN  D  Q
 . . Q:'$D(^DPT(BSDXIEN,0))
 . . S BSDXDPT=$G(^DPT(BSDXIEN,0))
 . . S BSDXZ=$P(BSDXDPT,U) ;NAME
 . . S BSDXHRN=$P($G(^AUPNPAT(BSDXIEN,41,DUZ(2),0)),U,2) ;CHART
 . . I BSDXHRN="" Q  ;NO CHART AT THIS DUZ2
 . . I $P($G(^AUPNPAT(BSDXIEN,41,DUZ(2),0)),U,3) S BSDXHRN=BSDXHRN_"(*)" Q  ;HMW 20050721 Record Inactivated
 . . S $P(BSDXZ,BSDXDLIM,2)=BSDXHRN
 . . S $P(BSDXZ,BSDXDLIM,3)=$P(BSDXDPT,U,9) ;SSN
 . . S Y=$P(BSDXDPT,U,3) X ^DD("DD")
 . . S $P(BSDXZ,BSDXDLIM,4)=Y ;DOB
 . . S $P(BSDXZ,BSDXDLIM,5)=BSDXIEN
 . . S BSDXRET=BSDXRET_BSDXZ_$C(30)
 . . Q
 . Q
 ;
 ;All Patients
 I BSDXP="" D  S BSDXY=BSDXRET_$C(31) Q
 . D LISTALL^BEHOPTPL(.PLIST,"",1)
 . S BSDXCNT=0 F  S BSDXCNT=$O(PLIST(BSDXCNT)) Q:'BSDXCNT  D
 . . S BSDXIEN=$P(PLIST(BSDXCNT),U)
 . . S BSDXDPT=$G(^DPT(BSDXIEN,0))
 . . S BSDXZ=$P(BSDXDPT,U)
 . . S BSDXHRN=$P($G(^AUPNPAT(BSDXIEN,41,DUZ(2),0)),U,2) ;CHART
 . . I BSDXHRN="" Q  ;NO CHART AT THIS DUZ2
 . . I $P($G(^AUPNPAT(BSDXIEN,41,DUZ(2),0)),U,3) S BSDXHRN=BSDXHRN_"(*)" Q  ;HMW 20050721 Record Inactivated
 . . S $P(BSDXZ,BSDXDLIM,2)=BSDXHRN
 . . S $P(BSDXZ,BSDXDLIM,3)=$P(BSDXDPT,U,9) ;SSN
 . . S Y=$P(BSDXDPT,U,3) X ^DD("DD")
 . . S $P(BSDXZ,BSDXDLIM,4)=Y ;DOB
 . . S $P(BSDXZ,BSDXDLIM,5)=BSDXIEN
 . . S BSDXRET=BSDXRET_BSDXZ_$C(30)
 . . Q
 . Q
 ;
 S BSDXFILE=9000001
 S BSDXIENS=""
 S BSDXFIELDS=".01"
 S BSDXFLAGS="M"
 S BSDXVALUE=BSDXP
 S BSDXNUMBER=BSDXC
 S BSDXINDEXES=""
 S BSDXSCREEN=$S(+DUZ(2):"I $D(^AUPNPAT(Y,41,DUZ(2),0))",1:"")
 S BSDXIDEN=""
 S BSDXTARG="BSDXRSLT"
 S BSDXMSG=""
 D FIND^DIC(BSDXFILE,BSDXIENS,BSDXFIELDS,BSDXFLAGS,BSDXVALUE,BSDXNUMBER,BSDXINDEXES,BSDXSCREEN,BSDXIDEN,BSDXTARG,BSDXMSG)
 I '+$G(BSDXRSLT("DILIST",0)) S BSDXY=BSDXRET_$C(31) Q
 N BSDXCNT S BSDXCNT=2
 F BSDXX=1:1:$P(BSDXRSLT("DILIST",0),U) D
 . S BSDXIEN=BSDXRSLT("DILIST",2,BSDXX)
 . S BSDXZ=BSDXRSLT("DILIST","ID",BSDXX,.01) ;NAME
 . S BSDXHRN=$P($G(^AUPNPAT(BSDXIEN,41,DUZ(2),0)),U,2) ;CHART
 . I BSDXHRN="" Q  ;NO CHART AT THIS DUZ2
 . I $P($G(^AUPNPAT(BSDXIEN,41,DUZ(2),0)),U,3) S BSDXHRN=BSDXHRN_"(*)" Q  ;HMW 20050721 Record Inactivated
 . S $P(BSDXZ,BSDXDLIM,2)=BSDXHRN
 . S BSDXDPT=$G(^DPT(BSDXIEN,0))
 . S $P(BSDXZ,BSDXDLIM,3)=$P(BSDXDPT,U,9) ;SSN
 . S Y=$P(BSDXDPT,U,3) X ^DD("DD")
 . S $P(BSDXZ,BSDXDLIM,4)=Y ;DOB
 . S $P(BSDXZ,BSDXDLIM,5)=BSDXIEN
 . S $P(BSDXRET,$C(30),BSDXCNT)=BSDXZ
 . S BSDXCNT=BSDXCNT+1
 . Q
 S BSDXY=BSDXRET_$C(30)_$C(31)
 Q
 ;
ERROR ;
 D ERR("RPMS Error")
 Q
 ;
ERR(ERRNO) ;Error processing
 S BSDXRET="T00030NAME^T00030HRN^T00030SSN^D00030DOB^T00030IEN"_$C(30)_"^^^^"_$C(30)_$C(31)
 Q
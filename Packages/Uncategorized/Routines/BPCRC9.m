BPCRC9 ; IHS/OIT/MJL - REFERRED CARE GUI RPC ROUTINES ;
 ;;1.5;BPC;;MAY 26, 2005
 ;
GETLET(BPCRES,BPCPIEN,BPCRIEN,BPCFLAG,BPCVIEN,BPCPARAM) ;;EP CALL FROM REMOTE PROC: BPC GETREFLETTER
 ;
EN ;
 S U="^",XWBWRAP=1,BPCCTR=0,BPCPIEN=$G(BPCPIEN),BPCRIEN=$G(BPCRIEN),BPCFLAG=$G(BPCFLAG),BPCVIEN=$G(BPCVIEN),BPCPARAM=$G(BPCPARAM)
 D NOW^%DTC S BPCNOW=X
 S BPCS1="`",BPCS2="~"
 K BPCRES,BPCTMP
 I BPCPIEN="" S BPCRES(1)=-1,BPCRES(2)="PATIENT IEN NOT SENT!" D KILL Q
 I '$D(^AUPNPAT(BPCPIEN,0)) S BPCRES(1)=-1,BPCRES(2)="PATIENT IEN IS NOT DEFINED!" D KILL Q
 D GETDATA,KILL
 Q
GETDATA ;
 S BPCID=$$HRN^AUPNPAT(BPCPIEN,DUZ(2),2),BPCSEX=$$VAL^XBDIQ1(2,BPCPIEN,.02),BPCSSN=$$VAL^XBDIQ1(2,BPCPIEN,.09),BPCADDR=$$VAL^XBDIQ1(9000001,BPCPIEN,1602.2),BPCDOB=$$VAL^XBDIQ1(2,BPCPIEN,.03),BPCNAME=$$VAL^XBDIQ1(2,BPCPIEN,.01)
 S BPCCITY=$$VAL^XBDIQ1(9000001,BPCPIEN,1603.2),BPCSTATE=$$VAL^XBDIQ1(9000001,BPCPIEN,1604.2),BPCZIP=$$VAL^XBDIQ1(9000001,BPCPIEN,1605.2),BPCPHONE=$$VAL^XBDIQ1(9000001,BPCPIEN,1606.2)
 S BPCAIDNO=$$VAL^XBDIQ1(90001.31,DUZ(2),1101),BPCALNO=$$VAL^XBDIQ1(90001.31,DUZ(2),1102),BPCANAM=$$VAL^XBDIQ1(90001.31,DUZ(2),1103),BPCAADR=$$VAL^XBDIQ1(90001.31,DUZ(2),1104),BPCATEL=$$VAL^XBDIQ1(90001.31,DUZ(2),1105)
 S BPCCONT=$$VAL^XBDIQ1(90001.31,DUZ(2),.17),BPCCPHON=$$VAL^XBDIQ1(90001.31,DUZ(2),.18)
 S BPCAPNO=$$VAL^XBDIQ1(90001.31,DUZ(2),1106),BPCIDAT=$$VAL^XBDIQ1(90001,BPCRIEN,.01),BPCRNO=$$VAL^XBDIQ1(90001,BPCRIEN,.02),BPCRFAC=$$VAL^XBDIQ1(90001,BPCRIEN,.0999),BPCOPRV=$$VAL^XBDIQ1(90001,BPCRIEN,.09)
 S BPCPTYP=$$VAL^XBDIQ1(90001,BPCRIEN,.14),BPCEBDOS=$$VAL^XBDIQ1(90001,BPCRIEN,1105),BPCEEDOS=$$VAL^XBDIQ1(90001,BPCRIEN,1107),BPCOPVST=$$VAL^XBDIQ1(90001,BPCRIEN,1111),BPCLOS=$$VAL^XBDIQ1(90001,BPCRIEN,1109)
 S BPCPURP=$$VAL^XBDIQ1(90001,BPCRIEN,1201),BPCSNDA=$$VAL^XBDIQ1(90001,BPCRIEN,.34),BPCPRV=$$VAL^XBDIQ1(90001,BPCRIEN,.06),BPCESTAT=$$VAL^XBDIQ1(9000001,BPCPIEN,1112)
 S BPCX=0,BPCD="" F  S BPCX=$O(^BMCREF(BPCRIEN,1,BPCX)) Q:BPCX=""!(BPCX'?1.N)  D
 . S BPCDTA=^BMCREF(BPCRIEN,1,BPCX,0)
 . S:BPCD'="" BPCD=BPCD_BPCS2_BPCDTA
 . S:BPCD="" BPCD=BPCDTA
 S BPCHX=BPCD
 S BPCFADR1="",BPCFADR2="",BPCFCITY="",BPCFSTAT="",BPCFZIP="",BPCFPH="",BPCPID=""
 I BPCFLAG="V" D
 . S BPCFADR1=$$VAL^XBDIQ1(9999999.11,BPCVIEN,1301)
 . S BPCFADR2=$$VAL^XBDIQ1(9999999.11,BPCVIEN,1310)
 . S BPCFCITY=$$VAL^XBDIQ1(9999999.11,BPCVIEN,1302)
 . S BPCFSTAT=$$VAL^XBDIQ1(9999999.11,BPCVIEN,1303)
 . S BPCFZIP=$$VAL^XBDIQ1(9999999.11,BPCVIEN,1304)
 . S BPCFPH=$$VAL^XBDIQ1(9999999.11,BPCVIEN,1109)
 . S BPCPID=$$VAL^XBDIQ1(9999999.11,BPCVIEN,1701)
 I BPCFLAG="I" D
 . S BPCFADR1=$$VAL^XBDIQ1(9999999.06,BPCVIEN,.14)
 . S BPCFCITY=$$VAL^XBDIQ1(9999999.06,BPCVIEN,.15)
 . S BPCFSTAT=$$VAL^XBDIQ1(9999999.06,BPCVIEN,.16)
 . S BPCFZIP=$$VAL^XBDIQ1(9999999.06,BPCVIEN,.17)
 . S BPCFPH=$$VAL^XBDIQ1(9999999.06,BPCVIEN,.13)
 S BPCLADR=$$VAL^XBDIQ1(9999999.06,DUZ(2),.14),BPCLCITY=$$VAL^XBDIQ1(9999999.06,DUZ(2),.15),BPCLSTAT=$$VAL^XBDIQ1(9999999.06,DUZ(2),.16),BPCLZIP=$$VAL^XBDIQ1(9999999.06,DUZ(2),.17)
 S BPCMCR="",BPCMCD="",BPCPI="",BPCMCDN=""
 I $$MCR^AUPNPAT(BPCPIEN,BPCNOW) S BPCMCR="YES"
 I $$MCD^AUPNPAT(BPCPIEN,BPCNOW) S BPCMCD=$$MCDPN^AUPNPAT(BPCPIEN,BPCNOW,"E"),BPCMCDN=$$MCDN(BPCPIEN)
 I $$PI^AUPNPAT(BPCPIEN,BPCNOW) S BPCPI=$$PIN^AUPNPAT(BPCPIEN,BPCNOW,"E")
 S BPCDTA=BPCNAME_BPCS1_BPCID_BPCS1_BPCSEX_BPCS1_BPCDOB_BPCS1_BPCSSN_BPCS1_BPCADDR_BPCS1_BPCCITY_BPCS1_BPCSTATE_BPCS1_BPCZIP_BPCS1_BPCPHONE_BPCS1_BPCAIDNO_BPCS1_BPCALNO_BPCS1_BPCANAM_BPCS1_BPCAADR_BPCS1_BPCATEL_BPCS1_BPCAPNO
 S BPCDTA=BPCDTA_BPCS1_BPCIDAT_BPCS1_BPCRNO_BPCS1_BPCRFAC_BPCS1_BPCFADR1_BPCS1_BPCFADR2_BPCS1_BPCFCITY_BPCS1_BPCFSTAT_BPCS1_BPCFZIP_BPCS1_BPCFPH_BPCS1_BPCOPRV_BPCS1_BPCPTYP_BPCS1_BPCEBDOS_BPCS1_BPCEEDOS_BPCS1_BPCOPVST
 S BPCDTA=BPCDTA_BPCS1_BPCLOS_BPCS1_BPCPURP_BPCS1_BPCSNDA_BPCS1_BPCHX_BPCS1_BPCMCR_BPCS1_BPCMCD_BPCS1_BPCPI_BPCS1_BPCLADR_BPCS1_BPCLCITY_BPCS1_BPCLSTAT_BPCS1_BPCLZIP_BPCS1_BPCPRV_BPCS1_BPCESTAT_BPCS1_BPCCONT_BPCS1_BPCCPHON
 S BPCDTA=BPCDTA_BPCS1_BPCMCDN_BPCS1_BPCPID
 S BPCRES(1)=1,BPCRES(2)=BPCDTA
 Q
MCDN(BPCP) ;
 I $G(BPCP)="" Q ""
 S BPCMIEN=$O(^AUPNMCD("B",BPCP,"")) S:BPCMIEN="" BPCY="" D:BPCMIEN'=""
 . S BPCD=$G(^AUPNMCD(BPCMIEN,0))
 . S BPCY=$P(BPCD,U,3)
 K BPCMIEN,BPCD
 Q BPCY
KILL ;
 K BPCAADR,BPCADDR,BPCAIDNO,BPCALNO,BPCANAM,BPCAPNO,BPCATEL,BPCCITY,BPCCONT,BPCCPHON,BPCCTR,BPCD,BPCDOB,BPCDTA,BPCEBDOS,BPCEEDOS,BPCESTAT,BPCFADR1,BPCFADR2,BPCFCITY,BPCFLAG,BPCFPH,BPCFSTAT,BPCFZIP,BPCHX,BPCID
 K BPCIDAT,BPCLADR,BPCLCITY,BPCLOS,BPCLSTAT,BPCLZIP,BPCMCD,BPCMCDN,BPCMCR,BPCMIEN,BPCNAME,BPCNOW,BPCOPRV,BPCOPVST,BPCPARAM,BPCPHONE,BPCPI,BPCPID,BPCPIEN,BPCPRV,BPCPTYP,BPCPURP,BPCRFAC,BPCRIEN,BPCRNO
 K BPCS1,BPCS2,BPCSEX,BPCSNDA,BPCSSN,BPCSTATE,BPCVIEN,BPCX,BPCY,BPCZIP
 Q
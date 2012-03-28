BHSENC2 ;IHS/CIA/MGH - Encounters from PCC ;17-Mar-2006 10:36;MGH
 ;;1.0;HEALTH SUMMARY COMPONENTS;;March 17, 2006
 ;===================================================================
 ;Taken from APCH2H
 ; IHS/TUCSON/LAB - PART 2B OF BHS -- SUMMARY PRODUCTION COMPONENTS ;  [ 02/20/04  1:17 PM ]
 ;;2.0;IHS RPMS/PCC Health Summary;**6,11**;JUN 24, 1997
 ;=====================================================================
OUTPT ; ********** OUTPATIENT ENCOUNTERS WITHOUT CHR * 9000010/9000010.07 **********
 ; <SETUP>
 N BHSPAT,BHSN,BHSNTE,X
 S BHSPAT=DFN
 Q:'$D(^AUPNVSIT("AA",BHSPAT))
 S BHSOVT="ARSCOTE" ; NOTE: THIS CONTROLS TYPES OF VISITS DISPLAYED
 D CKP^GMTSUP Q:$D(GMTSQIT)
 ; <DISPLAY>
 S BHSPVD=0
 S BHSPFN=""
 S BHSDCX="",BHSDPR=""
 I GMPXHLOC="Y" S BHSDCX=1
 S BHSDPR=1
 I 'BHSDPR,'BHSDCX S BHSDCL=23
 I BHSDCX,'BHSDPR S BHSDCL=32
 I BHSDCX,BHSDPR S BHSDCL=35
 I 'BHSDCX,BHSDPR S BHSDCL=28
 F BHSIVD=0:0 S BHSIVD=$O(^AUPNVSIT("AA",BHSPAT,BHSIVD)) Q:BHSIVD=""!(BHSIVD>GMTSDLM)  D  Q:GMTSNDM=0!(BHSQT)
 .  S BHSQT=1
 .  D ONEDATE
 .  Q:$D(GMTSQIT)
 .  S:(BHSDAT'=BHSPVD)&BHSDTU GMTSNDM=GMTSNDM-BHSDTU,BHSPVD=BHSDAT
 .  S BHSQT=0
 .  Q
 ;
OUTPTX ; <CLEANUP>
 K BHSIVD,BHSDTU,BHSDAT,BHSVDF,BHSFAC,BHSPFN,BHSSCL,BHSMTX,BHSMOD,BHSPVD,BHSOVT,GMTSNDT,BHSCLI,BHSPDN,BHSICD,BHSICL,BHSNRQ
 K BHSNFL,BHSNSH,BHSCCL,BHSNAB,BHSVSC,BHSITE,BHSQT,BHSDCL,Y,BHSDCX,BHSDPR,BHSQ,BHSPRV
 Q
 ;
ONEDATE ;
 S BHSCCL=""
 S X=-BHSIVD\1+9999999 D REGDT4^GMTSU S BHSDAT=X
 S BHSDTU=0,GMTSNDT=(BHSDAT'=BHSPVD)
 S BHSVDF="" F BHSQ=0:0 S BHSVDF=$O(^AUPNVSIT("AA",BHSPAT,BHSIVD,BHSVDF)) Q:BHSVDF=""  D  Q:BHSQT
 .  S BHSQT=1
 .  S BHSSCL=""
 .  S BHSN=^AUPNVSIT(BHSVDF,0)
 .  I +$P(BHSN,U,9),'$P(BHSN,U,11) D GETCLN,GETPROV,GETSITEV^BHSUTL D
 .. Q:$$PRIMPROV^APCLV(BHSVDF,"D")=53  ;exclude chr prim prov
 .. I $P(BHSN,U,7)="E",'$D(^AUPNVPOV("AD",BHSVDF)) Q  ;don't display events with no pov
 ..  I BHSOVT[BHSVSC D DSPVIS
 ..  Q
 .  Q:$D(GMTSQIT)
 .  S BHSQT=0
 .  Q
 Q
 ;
GETPROV ;
 S BHSPRV=$$PRIMPROV^APCLV(BHSVDF,"T")
 Q
GETCLN ;
 S BHSCLI=$P(BHSN,U,8) I BHSCLI="" S BHSCCL="<none>" Q
 S BHSCLI=$P(BHSN,U,8) Q:BHSCLI=""
 Q:'$D(^DIC(40.7,BHSCLI))
 I $D(^DIC(40.7,BHSCLI,9999999)),$P(^(9999999),U,1)]"" S BHSCLI=$P(^DIC(40.7,BHSCLI,9999999),U,1),BHSCCL=BHSCLI Q
 S BHSCLI=$E($P(^DIC(40.7,BHSCLI,0),U,1),1,8)
 S BHSCCL=BHSCLI
 Q
DSPVIS ;
 S BHSDTU=1
 I $O(^AUPNVPOV("AD",BHSVDF,""))="" D NOPOV Q
 S BHSPDN="" F BHSQ=0:0 S BHSPDN=$O(^AUPNVPOV("AD",BHSVDF,BHSPDN)) Q:'BHSPDN  S BHSN=^AUPNVPOV(BHSPDN,0) D HASPOV
 Q
 ;
NOPOV ;
 S (BHSICD,BHSNRQ)="<purpose of visit not yet entered>",BHSMOD=""
 G COMMON
 ;
HASPOV ;
 S BHSICD=$P(BHSN,U,1) D GETICDDX^BHSUTL
 S BHSNRQ=$P(BHSN,U,4) D GETNARR^BHSUTL I $P(BHSN,U,5)]"" S BHSNRQ=BHSNRQ_"  (Stage: "_$P(BHSN,U,5)_")"  ;IHS/CMI/LAB - patched to display stage of 0
 S BHSMOD=$P(BHSN,U,6)
COMMON ;
 D CKP^GMTSUP Q:$D(GMTSQIT)  S:GMTSNPG GMTSNDT=1
 I GMTSNDT W BHSDAT S (BHSPFN,BHSSCL)="",GMTSNDT=0
 I BHSNSH=BHSPFN S BHSFAC=""
 E  S (BHSFAC,BHSPFN)=BHSNSH,BHSSCL=""
 I BHSCCL=BHSSCL S BHSCLI=""
 E  S (BHSCLI,BHSSCL)=BHSCCL
 I BHSICD["<purpose of visit not"&(BHSSCL="<none>") S BHSCLI=""
 I BHSMOD]"" S BHSMTX=$P(^DD(9000010.07,.06,0),U,3),BHSMTX=$P($P(BHSMTX,BHSMOD_":",2),";",1),BHSMTX=$P(BHSMTX,",",1),BHSICD=BHSMTX_" "_BHSICD
 S:$D(^AUPNVCHS("AD",BHSVDF)) BHSNTE="*** CHS ***"
 W ?10,BHSFAC
 I BHSDCX,BHSDPR W ?23,$E(BHSCLI,1,6),?30,BHSPRV
 I BHSDCX,'BHSDPR W ?23,BHSCLI
 I 'BHSDCX,BHSDPR W ?23,BHSPRV
 S BHSICL=BHSDCL
 S:0 BHSICD=BHSVSC_":"_BHSICD D PRTICD^BHSUTL
 Q
INHOSP ; ********** INHOSPITAL ENCOUNTERS * 9000010/9000010.07 **********
 ; <SETUP>
 Q:'$D(^AUPNVSIT("AA",BHSPAT))
 S BHSOVT="I" ; NOTE: This controls types of visits displayed
 D CKP^GMTSUP Q:$D(GMTSQIT)
 ; <DISPLAY>
 S BHSPVD=0
 F BHSIVD=0:0 S BHSIVD=$O(^AUPNVSIT("AA",BHSPAT,BHSIVD)) Q:BHSIVD=""!(BHSIVD>GMTSDLM)  D ONEDATE Q:$D(GMTSQIT)  S:(BHSDAT'=BHSPVD)&BHSDTU GMTSNDM=GMTSNDM-BHSDTU,BHSPVD=BHSDAT Q:GMTSNDM=0
 ; <CLEANUP>
INHOSPX K BHSIVD,BHSDTU,BHSDAT,BHSVDF,BHSFAC,BHSPFN,BHSSCL,BHSMTX,BHSMOD,BHSPVD,BHSOVT,GMTSNDT,BHSCLI,BHSPDN,BHSICD,BHSICL,BHSNRQ
 K BHSNFL,BHSNSH,BHSNAB,BHSVSC,BHSITE,Y
 Q
 ;
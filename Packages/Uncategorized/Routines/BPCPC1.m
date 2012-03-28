BPCPC1 ; IHS/OIT/MJL - PATIENT CHART GUI ROUTINES ;
 ;;1.5;BPC;;MAY 26, 2005
DUPPAT(RESULT,BPCNAM,BPCPARAM) ;EP CALL FROM REMOTE PROC: BPC GETDUPPAT
 S U="^",BPCSUB=$J K ^BGURES(BPCSUB),RESULT
 S RESULT="^BGURES("_BPCSUB_")"
 S BPCNAM=$G(BPCNAM),BPCPARAM=$G(BPCPARAM)
 I BPCNAM="" S ^BGURES(BPCSUB,1)="-1",^BGURES(BPCSUB,2)="No Patient Name Parameter Sent!" D KILL Q
 S BPCX=$O(^DPT("B",BPCNAM),-1),BPCC=0,BPCCTR=1 D GETNAM,KILL
 Q
KILL ;
 K BPCX,BPCY,BPCCTR,BPCC,BPCD,BPCSEX,BPCDOB,BPCSTR,BPCSUB,BPCSSN
 Q
GETNAM ;
 F  S BPCX=$O(^DPT("B",BPCX)) Q:BPCX=""!($E(BPCX,1,$L(BPCNAM))'=BPCNAM)  D
 .S BPCY="" F  S BPCY=$O(^DPT("B",BPCX,BPCY)) Q:BPCY=""  D
 ..S BPCD=^DPT(BPCY,0),BPCRNAM=$P(BPCD,U,1) Q:BPCX'=BPCRNAM
 ..S BPCSEX=$P(BPCD,U,2)
 ..S BPCSEX=$S(BPCSEX="F":"FEMALE",BPCSEX="M":"MALE",1:"UNKNOWN")
 ..S BPCDOB=$P(BPCD,U,3),BPCSSN=$P(BPCD,U,9)
 ..S BPCD=$G(^DPT(BPCY,".24")),BPCMMN=$P(BPCD,U,3)
 ..S BPCSTR=BPCX_U_BPCSEX_U_BPCDOB_U_BPCSSN_U_BPCMMN
 ..S BPCC=BPCC+1,BPCCTR=BPCCTR+1
 ..S ^BGURES(BPCSUB,BPCCTR)=BPCSTR,^BGURES(BPCSUB,1)=BPCC
 I BPCC=0 S ^BGURES(BPCSUB,1)=-2,^BGURES(BPCSUB,2)="NO DUPLICATES"
 Q
BENELIST(RESULT,BPCX,BPCMAX,BPCMORE,BPCPARAM) ;EP CALL FROM REMOTE PROC: BPC GETBENEFICIARIES
 S U="^",XWBWRAP=1,BPCSUB=$J K ^BGURES(BPCSUB),RESULT
 S RESULT="^BGURES("_BPCSUB_")"
 S BPCX=$G(BPCX),BPCMAX=$G(BPCMAX),BPCMORE=$G(BPCMORE),BPCPARAM=$G(BPCPARAM),BPCLEN=$L(BPCX),BPCCTR=0,BPCFLAG=0
 S BPCN="" S:BPCX'="" BPCN=$O(^AUTTBEN("B",BPCX),-1)
 S:'BPCMAX BPCMAX=50
 I BPCMORE'="" D MORE I BPCFLAG D KILL Q
 D GETBEN,KILL
 Q
GETBEN ;
 F  S BPCN=$O(^AUTTBEN("B",BPCN)) Q:BPCN=""  D  Q:BPCFLAG
 .I BPCX'="",$E(BPCN,1,BPCLEN)'=BPCX S BPCFLAG=1 Q
 .S BPCIEN="" F  S BPCIEN=$O(^AUTTBEN("B",BPCN,BPCIEN)) Q:BPCIEN=""  D  Q:BPCFLAG
 ..I BPCCTR=BPCMAX D  Q
 ...S BPCCTR=BPCCTR+1,^BGURES(BPCSUB,BPCCTR)="..MORE"_U_BPCN_"|"_BPCIEN
 ...S BPCFLAG=1
 ..S BPCCTR=BPCCTR+1,^BGURES(BPCSUB,BPCCTR)=BPCN_U_BPCIEN
 S ^BGURES(BPCSUB,0)=BPCCTR
 Q
MORE ;
 S BPCN=$P(BPCMORE,"|",1),BPCIEN=$P(BPCMORE,"|",2),BPCCTR=BPCCTR+1
 S ^BGURES(BPCSUB,BPCCTR)=BPCN_U_BPCIEN
 I BPCCTR=BPCMAX S BPCFLAG=1
 Q
TRIBLIST(RESULT,BPCX,BPCMAX,BPCMORE,BPCPARAM) ;EP CALL FROM REMOTE PROC: BPC GETTRIBES
 S U="^",XWBWRAP=1,BPCSUB=$J K ^BGURES(BPCSUB),RESULT
 S RESULT="^BGURES("_BPCSUB_")"
 S BPCX=$G(BPCX),BPCMAX=$G(BPCMAX),BPCMORE=$G(BPCMORE),BPCPARAM=$G(BPCPARAM),BPCLEN=$L(BPCX),BPCCTR=0,BPCFLAG=0
 S BPCN="" S:BPCX'="" BPCN=$O(^AUTTTRI("B",BPCX),-1)
 S:'BPCMAX BPCMAX=50
 I BPCMORE'="" D MORE I BPCFLAG D KILL Q
 D GETTRI,KILL
 Q
GETTRI ;
 F  S BPCN=$O(^AUTTTRI("B",BPCN)) Q:BPCN=""  D  Q:BPCFLAG
 .I BPCX'="",$E(BPCN,1,BPCLEN)'=BPCX S BPCFLAG=1 Q
 .S BPCIEN="" F  S BPCIEN=$O(^AUTTTRI("B",BPCN,BPCIEN)) Q:BPCIEN=""  D  Q:BPCFLAG
 ..I BPCCTR=BPCMAX D  Q
 ...S BPCCTR=BPCCTR+1,^BGURES(BPCSUB,BPCCTR)="..MORE"_U_BPCN_"|"_BPCIEN
 ...S BPCFLAG=1
 ..S BPCCTR=BPCCTR+1,^BGURES(BPCSUB,BPCCTR)=BPCN_U_BPCIEN
 S ^BGURES(BPCSUB,0)=BPCCTR
 Q
COMLIST(RESULT,BPCX,BPCMAX,BPCMORE,BPCPARAM) ;EP CALL FROM REMOTE PROC: BPC GETCOMMUNITIES
 S U="^",XWBWRAP=1,BPCSUB=$J K ^BGURES(BPCSUB),RESULT
 S RESULT="^BGURES("_BPCSUB_")"
 S BPCX=$G(BPCX),BPCMAX=$G(BPCMAX),BPCMORE=$G(BPCMORE),BPCPARAM=$G(BPCPARAM),BPCLEN=$L(BPCX),BPCCTR=0,BPCFLAG=0
 S BPCN="" S:BPCX'="" BPCN=$O(^AUTTCOM("B",BPCX),-1)
 S:'BPCMAX BPCMAX=50
 I BPCMORE'="" D MORECOM I BPCFLAG D KILL Q
 D GETCOM,KILL
 Q
GETCOM ;
 F  S BPCN=$O(^AUTTCOM("B",BPCN)) Q:BPCN=""  D  Q:BPCFLAG
 .I BPCX'="",$E(BPCN,1,BPCLEN)'=BPCX S BPCFLAG=1 Q
 .S BPCIEN="" F  S BPCIEN=$O(^AUTTCOM("B",BPCN,BPCIEN)) Q:BPCIEN=""  D  Q:BPCFLAG
 ..S BPCD=^AUTTCOM(BPCIEN,0),BPCCTY=$P(BPCD,U,2),BPCST=$P(BPCD,U,3)
 ..S BPCCTY=$P($G(^AUTTCTY(BPCCTY,0)),U,1)
 ..S BPCST=$P($G(^DIC(5,BPCST,0)),U,1)
 ..I BPCCTR=BPCMAX D  Q
 ...S BPCCTR=BPCCTR+1,^BGURES(BPCSUB,BPCCTR)="..MORE"_U_BPCN_"|"_BPCIEN_"|"_BPCCTY_"|"_BPCST
 ...S BPCFLAG=1
 ..S BPCCTR=BPCCTR+1,^BGURES(BPCSUB,BPCCTR)=BPCN_U_BPCIEN_U_BPCCTY_U_BPCST
 S ^BGURES(BPCSUB,0)=BPCCTR
 Q
MORECOM ;
 S BPCN=$P(BPCMORE,"|",1),BPCIEN=$P(BPCMORE,"|",2)
 S BPCCTY=$P(BPCMORE,"|",3),BPCST=$P(BPCMORE,"|",4),BPCCTR=BPCCTR+1
 S ^BGURES(BPCSUB,BPCCTR)=BPCN_U_BPCIEN_U_BPCCTY_U_BPCST
 I BPCCTR=BPCMAX S BPCFLAG=1
 Q
STLIST(RESULT,BPCX,BPCMAX,BPCMORE,BPCPARAM) ;EP CALL FROM REMOTE PROC: BPC GETSTATES
 S U="^",XWBWRAP=1,BPCSUB=$J K ^BGURES(BPCSUB),RESULT
 S RESULT="^BGURES("_BPCSUB_")"
 S BPCX=$G(BPCX),BPCMAX=$G(BPCMAX),BPCMORE=$G(BPCMORE),BPCPARAM=$G(BPCPARAM),BPCLEN=$L(BPCX),BPCCTR=0,BPCFLAG=0
 I BPCX'="" D CKCXF I BPCFLAG D KILL Q
 S BPCN="" S:BPCX'="" BPCN=$O(^DIC(5,"B",BPCX),-1)
 S:'BPCMAX BPCMAX=50
 I BPCMORE'="" D MOREST I BPCFLAG D KILL Q
 D GETST,KILL
 Q
CKCXF ;
 I $D(^DIC(5,"C",BPCX))=10  D  Q
 .S BPCIEN=$O(^DIC(5,"C",BPCX,"")) Q:BPCIEN=""
 .S ^BGURES(BPCSUB,0)=1,^BGURES(BPCSUB,1)=BPCX_U_BPCIEN_U_$P(^DIC(5,BPCIEN,0),U,1)
 .S BPCFLAG=1
 Q
MOREST ;
 S BPCCDE=$P(BPCMORE,"|",1),BPCIEN=$P(BPCMORE,"|",2)
 S BPCN=$P(BPCMORE,"|",3),BPCCTR=BPCCTR+1
 S ^BGURES(BPCSUB,BPCCTR)=BPCCDE_U_BPCIEN_U_BPCN
 I BPCCTR=BPCMAX S BPCFLAG=1
 Q
GETST ;
 F  S BPCN=$O(^DIC(5,"B",BPCN)) Q:BPCN=""  D  Q:BPCFLAG
 .I BPCX'="",$E(BPCN,1,BPCLEN)'=BPCX S BPCFLAG=1 Q
 .S BPCIEN="" F  S BPCIEN=$O(^DIC(5,"B",BPCN,BPCIEN)) Q:BPCIEN=""  D  Q:BPCFLAG
 ..S BPCD=^DIC(5,BPCIEN,0),BPCCDE=$P(BPCD,U,2)
 ..I BPCCTR=BPCMAX D  Q
 ...S BPCCTR=BPCCTR+1,^BGURES(BPCSUB,BPCCTR)="..MORE"_U_BPCCDE_"|"_BPCIEN_"|"_BPCN
 ...S BPCFLAG=1
 ..S BPCCTR=BPCCTR+1,^BGURES(BPCSUB,BPCCTR)=BPCCDE_U_BPCIEN_U_BPCN
 S ^BGURES(BPCSUB,0)=BPCCTR
 Q
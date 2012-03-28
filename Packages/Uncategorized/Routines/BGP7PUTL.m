BGP7PUTL ; IHS/CMI/LAB - ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
 ;
 ;utility calls
 ;
STMP ;EP
 Q:BGPTIME'=1
 I BGPLIST="P",$P(^AUPNPAT(DFN,0),U,14)'=BGPLPRV Q
 X ^BGPPEIA(BGPIC,2) Q:'$T
 S BGPLIST(BGPIC)=$G(BGPLIST(BGPIC))+1
 S ^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPIC,$S($P($G(^AUPNPAT(DFN,11)),U,18)]"":$P(^AUPNPAT(DFN,11),U,18),1:"UNKNOWN"),$P(^DPT(DFN,0),U,2),BGPAGEB,DFN)=BGPVALUE
 Q
D(D) ;EP
 I D="" Q ""
 Q (1700+$E(D,1,3))_$E(D,4,5)_$E(D,6,7)_$S($P(D,".",2)]"":$P(D,".",2),1:"")
JRNL ;EP
 N (DT,U,ZTQUEUED) S %=$$NOJOURN^ZIBGCHAR("BGPPEDCA"),%=$$NOJOURN^ZIBGCHAR("BGPPEDPA"),%=$$NOJOURN^ZIBGCHAR("BGPPEDBA")
 Q
DATE(D) ;EP
 I D="" Q ""
 Q $E(D,4,5)_"/"_$E(D,6,7)_"/"_$E(D,2,3)
 ;
GS ;EP
 K ^TMP($J)
 I $P($G(^BGPSITE(DUZ(2),0)),U,3)="N" Q
 L +^BGPDATA:300 E  W:'$D(ZTQUEUED) "Unable to lock global" Q
 K ^BGPDATA    ;NOTE:  Kill of unscripted global.  Export to area.  Using standard name.
 S X="",C=0 F  S X=$O(^BGPPEDCA(BGPRPT,X)) Q:X'=+X!(X>99998)  D
 .I $G(^BGPPEDCA(BGPRPT,X))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",8)=^BGPPEDCA(BGPRPT,X)
 .S X2="" F  S X2=$O(^BGPPEDCA(BGPRPT,X,X2)) Q:X2'=+X2  D
 ..I $G(^BGPPEDCA(BGPRPT,X,X2))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",8)=^BGPPEDCA(BGPRPT,X,X2)
 ..S X3="" F  S X3=$O(^BGPPEDCA(BGPRPT,X,X2,X3)) Q:X3'=+X3  D
 ...I $G(^BGPPEDCA(BGPRPT,X,X2,X3))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",3)=X3,$P(^BGPDATA(C),"|",8)=^BGPPEDCA(BGPRPT,X,X2,X3)
 ...S X4="" F  S X4=$O(^BGPPEDCA(BGPRPT,X,X2,X3,X4)) Q:X4'=+X4  D
 ....I $G(^BGPPEDCA(BGPRPT,X,X2,X3,X4))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",3)=X3,$P(^BGPDATA(C),"|",4)=X4,$P(^BGPDATA(C),"|",8)=^BGPPEDCA(BGPRPT,X,X2,X3,X4)
 ....S X5="" F  S X5=$O(^BGPPEDCA(BGPRPT,X,X2,X3,X4,X5)) Q:X5'=+X5  D
 .....I $G(^BGPPEDCA(BGPRPT,X,X2,X3,X4,X5))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",3)=X3
 .....S $P(^BGPDATA(C),"|",4)=X4,$P(^BGPDATA(C),"|",5)=X5,$P(^BGPDATA(C),"|",8)=^BGPPEDCA(BGPRPT,X,X2,X3,X4,X5)
 S X=0 F  S X=$O(^BGPDATA(X)) Q:X'=+X  S ^BGPDATA(X)="BGPPEDCA"_"|"_^BGPDATA(X)
PRGS ;
 S S=C+1,X="" F  S X=$O(^BGPPEDPA(BGPRPT,X)) Q:X'=+X!(X>99998)  D
 .I $G(^BGPPEDPA(BGPRPT,X))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",8)=^BGPPEDPA(BGPRPT,X)
 .S X2="" F  S X2=$O(^BGPPEDPA(BGPRPT,X,X2)) Q:X2'=+X2  D
 ..I $G(^BGPPEDPA(BGPRPT,X,X2))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",8)=^BGPPEDPA(BGPRPT,X,X2)
 ..S X3="" F  S X3=$O(^BGPPEDPA(BGPRPT,X,X2,X3)) Q:X3'=+X3  D
 ...I $G(^BGPPEDPA(BGPRPT,X,X2,X3))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",3)=X3,$P(^BGPDATA(C),"|",8)=^BGPPEDPA(BGPRPT,X,X2,X3)
 ...S X4="" F  S X4=$O(^BGPPEDPA(BGPRPT,X,X2,X3,X4)) Q:X4'=+X4  D
 ....I $G(^BGPPEDPA(BGPRPT,X,X2,X3,X4))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",3)=X3,$P(^BGPDATA(C),"|",4)=X4,$P(^BGPDATA(C),"|",8)=^BGPPEDPA(BGPRPT,X,X2,X3,X4)
 ....S X5="" F  S X5=$O(^BGPPEDPA(BGPRPT,X,X2,X3,X4,X5)) Q:X5'=+X5  D
 .....I $G(^BGPPEDPA(BGPRPT,X,X2,X3,X4,X5))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",3)=X3
 .....S $P(^BGPDATA(C),"|",4)=X4,$P(^BGPDATA(C),"|",5)=X5,$P(^BGPDATA(C),"|",8)=^BGPPEDPA(BGPRPT,X,X2,X3,X4,X5)
 S X=S-1 F  S X=$O(^BGPDATA(X)) Q:X'=+X  S ^BGPDATA(X)="BGPPEDPA"_"|"_^BGPDATA(X)
BLGS ;save off baseline data
 S S=C+1,X="" F  S X=$O(^BGPPEDBA(BGPRPT,X)) Q:X'=+X!(X>99998)  D
 .I $G(^BGPPEDBA(BGPRPT,X))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",8)=^BGPPEDBA(BGPRPT,X)
 .S X2="" F  S X2=$O(^BGPPEDBA(BGPRPT,X,X2)) Q:X2'=+X2  D
 ..I $G(^BGPPEDBA(BGPRPT,X,X2))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",8)=^BGPPEDBA(BGPRPT,X,X2)
 ..S X3="" F  S X3=$O(^BGPPEDBA(BGPRPT,X,X2,X3)) Q:X3'=+X3  D
 ...I $G(^BGPPEDBA(BGPRPT,X,X2,X3))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",3)=X3,$P(^BGPDATA(C),"|",8)=^BGPPEDBA(BGPRPT,X,X2,X3)
 ...S X4="" F  S X4=$O(^BGPPEDBA(BGPRPT,X,X2,X3,X4)) Q:X4'=+X4  D
 ....I $G(^BGPPEDBA(BGPRPT,X,X2,X3,X4))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",3)=X3,$P(^BGPDATA(C),"|",4)=X4,$P(^BGPDATA(C),"|",8)=^BGPPEDBA(BGPRPT,X,X2,X3,X4)
 ....S X5="" F  S X5=$O(^BGPPEDBA(BGPRPT,X,X2,X3,X4,X5)) Q:X5'=+X5  D
 .....I $G(^BGPPEDBA(BGPRPT,X,X2,X3,X4,X5))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",3)=X3
 .....S $P(^BGPDATA(C),"|",4)=X4,$P(^BGPDATA(C),"|",5)=X5,$P(^BGPDATA(C),"|",8)=^BGPPEDBA(BGPRPT,X,X2,X3,X4,X5)
 S X=S-1 F  S X=$O(^BGPDATA(X)) Q:X'=+X  S ^BGPDATA(X)="BGPPEDBA"_"|"_^BGPDATA(X)
 NEW XBGL S XBGL="BGPDATA"
 S F="BG07"_$P(^AUTTLOC(DUZ(2),0),U,10)_".PED"_BGPRPT
 NEW XBMED,XBFN,XBTLE,XBF,XBFLT
 S XBMED="F",XBFN=F,XBTLE="SAVE OF GPRA DATA BY - "_$P(^VA(200,DUZ,0),U),XBF=0,XBFLT=1
 D ^XBGSAVE
 L -^BGPDATA
 K ^TMP($J),^BGPDATA ;NOTE:  kill of unsubscripted global for use in export to area.
 Q
REPORT ;EP
 S BGPRPT=""
 W !!
 ;CREATE REPORT ENTRY IN FILEMAN FILE
 ;3 files must have the same ien
 L +^BGPPEDCA:30 I '$T W !!,"Unable to lock global, try later." G REPORTX
 L +^BGPPEDPA:30 I '$T W !!,"Unable to lock global, try later." G REPORTX
 L +^BGPPEDBA:30 I '$T W !!,"Unable to lock global, try later." G REPORTX
 D GETIEN
 I 'BGPIEN W !!,"Something wrong with control files, notify programmer!" S BGPRPT="" G REPORTX
 S DINUM=BGPIEN
 K DIC S X=BGPBD,DIC(0)="L",DIC="^BGPPEDCA(",DLAYGO=90530.12,DIADD=1,DIC("DR")=".02////"_BGPED_";.03////"_BGPPBD_";.04////"_BGPPED_";.05////"_BGPBBD_";.06////"_BGPBED_";.07////"_$G(BGPPER)_";.08////"_$G(BGPQTR)
 S DIC("DR")=DIC("DR")_";.09////"_$P(^AUTTLOC(DUZ(2),0),U,10)_";.1////"_$E($P(^AUTTLOC(DUZ(2),0),U,10),1,4)_";.13////"_DT_";.11////"_BGPBEN_";.12////"_$P($G(^AUTTLOC(DUZ(2),1)),U,3)
 S DIC("DR")=DIC("DR")_";.17///"_$P(^BGPSITE(DUZ(2),0),U,6)
 D ^DIC K DIC,DA,DR,DIADD,DLAYGO I Y=-1 W !!,"UNABLE TO CREATE REPORT FILE ENTRY - NOTIFY SITE MANAGER!" S BGPQUIT=1 G REPORTX
 S BGPRPT=+Y
 K DIC S X=BGPBD,DIC(0)="L",DIC="^BGPPEDPA(",DLAYGO=90530.13,DIADD=1,DIC("DR")=".02////"_BGPED_";.03////"_BGPPBD_";.04////"_BGPPED_";.05////"_BGPBBD_";.06////"_BGPBED_";.07////"_$G(BGPPER)_";.08////"_$G(BGPQTR)
 S DIC("DR")=DIC("DR")_";.09////"_$P(^AUTTLOC(DUZ(2),0),U,10)_";.1////"_$E($P(^AUTTLOC(DUZ(2),0),U,10),1,4)_";.13////"_DT_";.11////"_BGPBEN_";.12////"_$P($G(^AUTTLOC(DUZ(2),1)),U,3)
 S DIC("DR")=DIC("DR")_";.17///"_$P(^BGPSITE(DUZ(2),0),U,6)
 S DINUM=BGPRPT D ^DIC K DIC,DA,DR,DIADD,DLAYGO,DINUM I Y=-1 W !!,"UNABLE TO CREATE REPORT FILE ENTRY - NOTIFY SITE MANAGER!" S BGPQUIT=1 G REPORTX
 S BGPRPTP=+Y
 K DIC S X=BGPBD,DIC(0)="L",DIC="^BGPPEDBA(",DLAYGO=90530.14,DIADD=1,DIC("DR")=".02////"_BGPED_";.03////"_BGPPBD_";.04////"_BGPPED_";.05////"_BGPBBD_";.06////"_BGPBED_";.07////"_$G(BGPPER)_";.08////"_$G(BGPQTR)
 S DIC("DR")=DIC("DR")_";.09////"_$P(^AUTTLOC(DUZ(2),0),U,10)_";.1////"_$E($P(^AUTTLOC(DUZ(2),0),U,10),1,4)_";.13////"_DT_";.11////"_BGPBEN_";.12////"_$P($G(^AUTTLOC(DUZ(2),1)),U,3)
 S DIC("DR")=DIC("DR")_";.17///"_$P(^BGPSITE(DUZ(2),0),U,6)
 S DINUM=BGPRPT D ^DIC K DIC,DA,DR,DIADD,DLAYGO I Y=-1 W !!,"UNABLE TO CREATE REPORT FILE ENTRY - NOTIFY SITE MANAGER!" S BGPQUIT=1 G REPORTX
 S BGPRPTB=+Y
 ;add communities to 28 multiple
 K ^BGPPEDCA(BGPRPT,9999)
 S C=0,X="" F  S X=$O(BGPTAX(X)) Q:X=""  S C=C+1 S ^BGPPEDCA(BGPRPT,9999,C,0)=X,^BGPPEDCA(BGPRPT,9999,"B",X,C)=""
 S ^BGPPEDCA(BGPRPT,9999,0)="^90530.12999A^"_C_"^"_C
 I $G(BGPMFITI) S C=0,X="" F  S X=$O(^ATXAX(BGPMFITI,21,"B",X)) Q:X=""  S C=C+1,Y=$P($G(^DIC(4,X,0)),U) S ^BGPPEDCA(BGPRPT,1111,C,0)=Y,^BGPPEDCA(BGPRPT,1111,"B",Y,C)=""
 S ^BGPPEDCA(BGPRPT,1111,0)="^90530.12111^"_C_"^"_C
 S ^BGPPEDCA(BGPRPT,99999,0)="^90530.12999A^0^0"
 S ^BGPPEDPA(BGPRPT,99999,0)="^90530.13999A^0^0"
 S ^BGPPEDBA(BGPRPT,99999,0)="^90530.14999A^0^0"
REPORTX ;
 D ^XBFMK
 K DIC,DIADD,DLAYGO,DR,DA,DD,X,Y,DINUM
 L -^BGPPEDCA
 L -^BGPPEDPA
 L -^BGPPEDBA
 Q
GETIEN ;EP -Get next ien available in all 3 files
 S BGPF=90530.12 D ENT
 S BGPF=90530.13 D ENT
 S BGPF=90530.14 D ENT
 S BGPIEN=$P(^BGPPEDCA(0),U,3)+1
S I $D(^BGPPEDPA(BGPIEN))!($D(^BGPPEDBA(BGPIEN))) S BGPIEN=BGPIEN+1 G S
 Q
 ;
ENT ;
 NEW GBL,NXT,CTR,XBHI,XBX,XBY,ANS
 S GBL=^DIC(BGPF,0,"GL")
 S GBL=GBL_"NXT)"
 S (XBHI,NXT,CTR)=0
 F L=0:0 S NXT=$O(@(GBL)) Q:NXT'=+NXT  S XBHI=NXT,CTR=CTR+1 ;W:'(CTR#50) "."
 S NXT="",XBX=$O(@(GBL)),XBX=^(0),XBY=$P(XBX,U,4),XBX=$P(XBX,U,3)
 S NXT=0,$P(@(GBL),U,3)=XBHI,$P(^(0),U,4)=CTR
 ;
EOJ ;
 KILL ANS,XBHI,XBX,XBY,CTR,DIC,FILE,GBL,L,NXT,BGPF
 Q
 ;
APCLPP21 ; IHS/CMI/LAB - provider profile ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
 ;cmi/anch/maw 9/10/2007 code set versioning in EM
 ;
START ;
 S APCLBT=$H,(APCLDPPT,APCLDPPS,APCLDP2V)=0
 K APCLDPPT,APCLDPPS,APCLDP2V
 K APCLTCR,APCLTTEL,APCLANY,APCLAMB,APCLDW1,APCLDW2,APCLDW3,APCLDW4,APCLDW5,APCLDW6,APCLDW7,APCLDW8,APCLDW9,APCLDW10,APCLDW11,APCLDW12,APCLDW13,APCLDW14,APCLDW15
 ;
 S Y=0 F  S Y=$O(APCLPROV(Y)) Q:Y'=+Y  D
 .S APCLDPPT(Y)=0,APCLDPPS(Y)=0,APCLDP2V(Y)=0,APCLTCR(Y)=0,APCLTTEL(Y)=0,APCLANY(Y)=0,APCLAMB(Y)=0,APCLDW1(Y)=0,APCLDW2(Y)=0,APCLDW3(Y)=0,APCLDW4(Y)=0,APCLDW5(Y)=0,APCLDW6(Y)=0,APCLDW7(Y)=0,APCLDW8(Y)=0,APCLDW9(Y)=0,APCLDW10(Y)=0
 .S APCLDW11(Y)=0,APCLDW12(Y)=0,APCLDW13(Y)=0,APCLDW14(Y)=0,APCLDW15(Y)=0,APCLTOTH(Y)=0
 ;
 S DFN=0 F  S DFN=$O(^AUPNPAT(DFN)) Q:DFN'=+DFN  D PROC
END ;
 K ^TMP($J)
 D SET^APCLPP2
 S APCLET=$H
 K APCLCOM,APCLVREC
 Q
PROC ;
 S APCLYDP=0
 Q:'$D(^DPT(DFN,0))
 Q:$P(^DPT(DFN,0),U,19)  ;merged
 Q:$$DEMO^APCLUTL(DFN,$G(APCLDEMO))
 S X=$P(^AUPNPAT(DFN,0),U,14) I X,$D(APCLPROV(X)) S APCLDPPT(X)=$G(APCLDPPT(X))+1,APCLYDP=X
 D TALLYV
 Q
TALLYV ;
 K ^TMP($J,"A")
 S A="^TMP($J,""A"",",B=DFN_"^ALL VISITS;DURING "_$$FMTE^XLFDT(APCLBD)_"-"_$$FMTE^XLFDT(APCLED),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1))
 K APCLANY,APCLAMB S Y=0 F  S Y=$O(APCLPROV(Y)) Q:Y'=+Y  S APCLANY(Y)=0,APCLAMB(Y)=0
 S APCLX=0 F  S APCLX=$O(^TMP($J,"A",APCLX)) Q:APCLX'=+APCLX  S APCLV=$P(^TMP($J,"A",APCLX),U,5) D
 .Q:'$D(^AUPNVSIT(APCLV,0))
 .Q:'$P(^AUPNVSIT(APCLV,0),U,9)
 .Q:$P(^AUPNVSIT(APCLV,0),U,11)
 .Q:'$D(^AUPNVPRV("AD",APCLV))
 .S (APCLPRIM,G,APCLZ)=0
 .F  S APCLZ=$O(^AUPNVPRV("AD",APCLV,APCLZ)) Q:APCLZ'=+APCLZ  S APCLPRIM=0 I $D(^AUPNVPRV(APCLZ,0)),$D(APCLPROV($P(^AUPNVPRV(APCLZ,0),U))) S APCLPRV=$P(^AUPNVPRV(APCLZ,0),U) S:$P(^AUPNVPRV(APCLZ,0),U,4)="P" APCLPRIM=1 D
 ..I "EDX"'[$P(^AUPNVSIT(APCLV,0),U,7) S APCLANY(APCLPRV)=APCLANY(APCLPRV)+1
 ..I $P(^AUPNVSIT(APCLV,0),U,7)="C" S APCLTCR(APCLPRV)=APCLTCR(APCLPRV)+1
 ..I $P(^AUPNVSIT(APCLV,0),U,7)="T" S APCLTTEL(APCLPRV)=APCLTTEL(APCLPRV)+1
 ..I $P(^AUPNVSIT(APCLV,0),U,7)="I",$P(^AUPNVSIT(APCLV,0),U,6)=APCLSUH S APCLDW14(APCLPRV)=APCLDW14(APCLPRV)+1
 ..I $P(^AUPNVSIT(APCLV,0),U,7)="I",$P(^AUPNVSIT(APCLV,0),U,6)'=APCLSUH S APCLDW15(APCLPRV)=APCLDW15(APCLPRV)+1
INP ..;
 ..I $P(^AUPNVSIT(APCLV,0),U,7)="H",APCLPRIM=1 S APCLDW13(APCLPRV)=APCLDW13(APCLPRV)+1 D
 ...S APCLEM=$$EM(APCLV) I APCLEM]"" S ^(APCLEM)=$S($D(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","EM",APCLEM)):^(APCLEM)+1,1:1)
 ...S P=0 F  S P=$O(^AUPNVPOV("AD",APCLV,P)) Q:P'=+P  S I=$P($G(^AUPNVPOV(P,0)),U) I I D
 ....I APCLEXCL=1,$D(APCLDXT(I)) Q
 ....S ^(I)=$S($D(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","INPTDX",I)):^(I)+1,1:1)
 ...S APCLPOV=0 F  S APCLPOV=$O(^AUPNVPRC("AD",APCLV,APCLPOV)) Q:APCLPOV=""  D
 ....S P=$P($G(^AUPNVPRC(APCLPOV,0)),U)
 ....Q:'P
 ....S ^(P)=$S($D(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","INPTSURGPROC",P)):^(P)+1,1:1)
AMB ..I "AORS"[$P(^AUPNVSIT(APCLV,0),U,7) S APCLAMB(APCLPRV)=APCLAMB(APCLPRV)+1 D
 ...S APCLDW10(APCLPRV)=APCLDW10(APCLPRV)+1  ;total amb
 ...I APCLPRIM S APCLDW11(APCLPRV)=APCLDW11(APCLPRV)+1 D
 ....S APCLEM=$$EM(APCLV)
 ....I APCLEM]"" S ^(APCLEM)=$S($D(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","EM",APCLEM)):^(APCLEM)+1,1:1)
 ....S X=0 F  S X=$O(^AUPNVMED("AD",APCLV,X)) Q:X'=+X  I $D(^AUPNVMED(X,0)) S Y=$P(^AUPNVMED(X,0),U),Y=$P(^PSDRUG(Y,0),U),^(Y)=$S($D(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","RX",Y)):^(Y)+1,1:1)
 ....S APCLPOV=0 F  S APCLPOV=$O(^AUPNVPRC("AD",APCLV,APCLPOV)) Q:APCLPOV=""  D
 .....S P=$P($G(^AUPNVPRC(APCLPOV,0)),U)
 .....Q:'P
 .....S ^(P)=$S($D(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","SURGPROC",P)):^(P)+1,1:1)
 ...I 'APCLPRIM S APCLDW12(APCLPRV)=APCLDW12(APCLPRV)+1
 ...S APCLSC=$$VAL^XBDIQ1(9000010,APCLV,.07) I APCLSC="" S APCLSC="UNKNOWN"
 ...S ^(APCLSC)=$S($D(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","SC",APCLSC)):^(APCLSC)+1,1:1)
 ...S APCLLOC=$$VAL^XBDIQ1(9000010,APCLV,.06) I APCLLOC="" S APCLLOC="UNKNOWN"
 ...S ^(APCLLOC)=$S($D(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","LOC",APCLLOC)):^(APCLLOC)+1,1:1)
 ...S P=0 F  S P=$O(^AUPNVPOV("AD",APCLV,P)) Q:P'=+P  S I=$P($G(^AUPNVPOV(P,0)),U) I I D
 ....I APCLEXCL=1,$D(APCLDXT(I)) Q
 ....S ^(I)=$S($D(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","OUTDX",I)):^(I)+1,1:1)
PATED ...;
 ...S APCLPOV=0 F  S APCLPOV=$O(^AUPNVPED("AD",APCLV,APCLPOV)) Q:APCLPOV=""  D
 ....Q:'$D(^AUPNVPED(APCLPOV,0))
 ....Q:$P(^AUPNVPED(APCLPOV,0),U,5)'=APCLPRV
 ....S P=$P(^AUPNVPED(APCLPOV,0),U),D=$P(^AUTTEDT(P,0),U)
 ....S ^(D)=$S($D(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","PATED",D)):^(D)+1,1:1)
 S APCLPRV=0 F  S APCLPRV=$O(APCLPROV(APCLPRV)) Q:APCLPRV'=+APCLPRV  D MORE
 Q
MORE ;
 I APCLYDP=APCLPRV,APCLANY(APCLPRV)>0 S APCLDPPS(APCLPRV)=APCLDPPS(APCLPRV)+1
 I APCLAMB(APCLPRV)>1,$P(^AUPNPAT(DFN,0),U,14)="" S APCLDP2V(APCLPRV)=APCLDP2V(APCLPRV)+1
 I APCLANY(APCLPRV)>0 D
 .S APCLDW1(APCLPRV)=APCLDW1(APCLPRV)+1
 .I APCLYDP=APCLPRV S APCLDW2(APCLPRV)=APCLDW2(APCLPRV)+1
 .I APCLYDP'=APCLPRV S APCLDW3(APCLPRV)=APCLDW3(APCLPRV)+1
 .I $P(^DPT(DFN,0),U,2)="M" S APCLDW4(APCLPRV)=APCLDW4(APCLPRV)+1
 .I $P(^DPT(DFN,0),U,2)="F" S APCLDW5(APCLPRV)=APCLDW5(APCLPRV)+1
 .S A=$$AGE^AUPNPAT(DFN,APCLED)
 .I A<19 S APCLDW6(APCLPRV)=APCLDW6(APCLPRV)+1
 .I A>18,A<50 S APCLDW7(APCLPRV)=APCLDW7(APCLPRV)+1
 .I A>49,A<65 S APCLDW8(APCLPRV)=APCLDW8(APCLPRV)+1
 .I A>64 S APCLDW9(APCLPRV)=APCLDW9(APCLPRV)+1
 .S APCLCOM=$$VAL^XBDIQ1(9000001,DFN,1118) I APCLCOM="" S APCLCOM="UNKNOWN"
 .S ^(APCLCOM)=$S($D(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","COMM",APCLCOM)):^(APCLCOM)+1,1:1)
 .S APCLTRIB=$$VAL^XBDIQ1(9000001,DFN,1108) I APCLTRIB="" S APCLTRIB="UNKNOWN"
 .S ^(APCLTRIB)=$S($D(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","TRIBE",APCLTRIB)):^(APCLTRIB)+1,1:1)
 Q
EM(V) ;
 S Y=$P(^AUPNVSIT(V,0),U,17) I Y Q Y
 S M=0,G="",Y="" F  S M=$O(^AUPNVCPT("AD",V,M)) Q:M'=+M!(G]"")  D
 .S Z=""
 .;S Y=$P(^AUPNVCPT(M,0),U),Z=$P(^ICPT(Y,0),U)  ;cmi/anch/maw 9/12/2007 orig line
 .S Y=$P(^AUPNVCPT(M,0),U),Z=$P($$CPT^ICPTCOD(Y),U,2)  ;cmi/anch/maw 9/12/2007 csv
 .I Z<99201!(Z>99499) Q
 .S G=Y
 .Q
 Q G
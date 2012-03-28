BGP5D73 ; IHS/CMI/LAB - indicator 31 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
 ;
I26 ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN7,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9)=0
 S BGPVALUE=""
 I BGPAGEB<23 S BGPSTOP=1 Q
 I BGPACTUP S BGPD1=1
 I BGPACTCL,BGPACTUP S BGPD2=1
 I BGPACTCL,$$V2IHD^BGP5D9(DFN,BGP365,BGPEDATE),$$FIRSTIHD^BGP5D9(DFN,BGPEDATE) S BGPIHD=1,BGPD3=1
 I '(BGPD1+BGPD2+BGPD3) S BGPSTOP=1 Q
 S BGPVALUE=$$CHOL(DFN,$$FMADD^XLFDT(BGPEDATE,-(5*365)),BGPEDATE)
 I $P(BGPVALUE,U,1)]"" S BGPN1=1
 S R=$P(BGPVALUE,U,3),R=+R I R>239 S BGPN2=1
 S BGPLDL=$$LDL^BGP5D2(DFN,$$FMADD^XLFDT(BGPEDATE,-(5*365)),BGPEDATE) ;date^value
 I $P(BGPLDL,U)=1 S BGPN3=1
 I $P(BGPLDL,U,3)]"" D
 .S V=$P(BGPLDL,U,3)
 .I V]"",+V'>100 S BGPN4=1
 .I +V>100,+V<131 S BGPN5=1
 .I +V>130,+V<161 S BGPN6=1
 .I +V>160 S BGPN7=1
 S V=$S(BGPD1:"UP")_$S(BGPD2:";AC",1:"")_$S(BGPD3:";IHD",1:"")_"|||"
 I BGPVALUE]"" S V=V_"CHOL "_$$DATE^BGP5UTL($P(BGPVALUE,U,1))_" "_$P(BGPVALUE,U,3)
 I $P(BGPLDL,U) S V=V_";LDL "_$$DATE^BGP5UTL($P(BGPLDL,U,2))_" "_$P(BGPLDL,U,3)
 S BGPVALUE=V
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T,BGPLDL
 Q
CHOL(P,BDATE,EDATE) ;EP
 K BGPG
 S (Q,R,S,M,N,O,B,D,E,L,G)=""
 S R=$O(^ATXLAB("B","DM AUDIT CHOLESTEROL TAX",0))
 S N=$O(^ATXAX("B","BGP TOTAL CHOLESTEROL LOINC",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(G]"")  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(G]"")  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(G]"")  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I R,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(R,21,"B",$P(^AUPNVLAB(X,0),U))) S G=(9999999-D)_"^CHOL"_"^"_$P(^AUPNVLAB(X,0),U,4) Q
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...I $$LOINC(J,N) S G=(9999999-D)_"^CHOL LOINC"_"^"_$P(^AUPNVLAB(X,0),U,4) Q
 ...Q
 I G]"" Q G
 S E=+$$CODEN^ICPTCOD(82465),%=$$CPTI^BGPDU(P,BDATE,EDATE,E) I %]"" Q $P(%,U,2)_"^CPT 82465"
 Q ""
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
APCLTXF ; IHS/OHPRD/TMJ -CREATED BY ^ATXSTX ON JAN 09, 1997 ;
 ;;3.0;IHS PCC REPORTS;;FEB 05, 1997
 ;;APCL INJ BATTERED CHILD
 ;
 ; This routine loads Taxonomy APCL INJ BATTERED CHILD
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"E967.0 ")
 ;;1
 ;;9002226,157,.01)
 ;;APCL INJ BATTERED CHILD
 ;;9002226,157,.02)
 ;;APCL BATTERED CHILD ECODES
 ;;9002226,157,.04)
 ;;@
 ;;9002226,157,.06)
 ;;@
 ;;9002226,157,.08)
 ;;1
 ;;9002226,157,.09)
 ;;2961021.140311
 ;;9002226,157,.11)
 ;;@
 ;;9002226,157,.12)
 ;;157
 ;;9002226,157,.13)
 ;;1
 ;;9002226,157,.14)
 ;;BA
 ;;9002226,157,.15)
 ;;80
 ;;9002226,157,.16)
 ;;1
 ;;9002226,157,.17)
 ;;@
 ;;9002226,157,3101)
 ;;@
 ;;9002226.02101,"157,E967.0 ",.01)
 ;;E967.0
 ;;9002226.02101,"157,E967.0 ",.02)
 ;;E967.9
 ;
OTHER ; OTHER ROUTINES
 Q
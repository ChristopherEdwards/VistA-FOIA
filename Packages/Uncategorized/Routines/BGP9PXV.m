BGP9PXV ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP TOBACCO USER DXS
 ;
 ; This routine loads Taxonomy BGP TOBACCO USER DXS
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
 ;;21,"305.1 ")
 ;;1
 ;;21,"649.00 ")
 ;;2
 ;;9002226,585,.01)
 ;;BGP TOBACCO USER DXS
 ;;9002226,585,.02)
 ;;@
 ;;9002226,585,.04)
 ;;n
 ;;9002226,585,.06)
 ;;@
 ;;9002226,585,.08)
 ;;0
 ;;9002226,585,.09)
 ;;3080506
 ;;9002226,585,.11)
 ;;@
 ;;9002226,585,.12)
 ;;31
 ;;9002226,585,.13)
 ;;1
 ;;9002226,585,.14)
 ;;@
 ;;9002226,585,.15)
 ;;80
 ;;9002226,585,.16)
 ;;@
 ;;9002226,585,.17)
 ;;@
 ;;9002226,585,3101)
 ;;@
 ;;9002226.02101,"585,305.1 ",.01)
 ;;305.1 
 ;;9002226.02101,"585,305.1 ",.02)
 ;;305.12 
 ;;9002226.02101,"585,649.00 ",.01)
 ;;649.00 
 ;;9002226.02101,"585,649.00 ",.02)
 ;;649.04 
 ;
OTHER ; OTHER ROUTINES
 Q
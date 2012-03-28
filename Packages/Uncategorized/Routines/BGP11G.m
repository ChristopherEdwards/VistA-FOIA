BGP11G ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 27, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;;BGP FOOT AMP CPTS
 ;
 ; This routine loads Taxonomy BGP FOOT AMP CPTS
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
 ;;21,"27290 ")
 ;;1
 ;;21,"27590 ")
 ;;2
 ;;21,"27598 ")
 ;;3
 ;;21,"27880 ")
 ;;4
 ;;9002226,982,.01)
 ;;BGP FOOT AMP CPTS
 ;;9002226,982,.02)
 ;;@
 ;;9002226,982,.04)
 ;;@
 ;;9002226,982,.06)
 ;;@
 ;;9002226,982,.08)
 ;;0
 ;;9002226,982,.09)
 ;;3110327
 ;;9002226,982,.11)
 ;;@
 ;;9002226,982,.12)
 ;;455
 ;;9002226,982,.13)
 ;;1
 ;;9002226,982,.14)
 ;;@
 ;;9002226,982,.15)
 ;;81
 ;;9002226,982,.16)
 ;;@
 ;;9002226,982,.17)
 ;;@
 ;;9002226,982,3101)
 ;;@
 ;;9002226.02101,"982,27290 ",.01)
 ;;27290 
 ;;9002226.02101,"982,27290 ",.02)
 ;;27295 
 ;;9002226.02101,"982,27590 ",.01)
 ;;27590 
 ;;9002226.02101,"982,27590 ",.02)
 ;;27592 
 ;;9002226.02101,"982,27598 ",.01)
 ;;27598 
 ;;9002226.02101,"982,27598 ",.02)
 ;;27598 
 ;;9002226.02101,"982,27880 ",.01)
 ;;27880 
 ;;9002226.02101,"982,27880 ",.02)
 ;;27882 
 ;
OTHER ; OTHER ROUTINES
 Q
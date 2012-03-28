BGP8GXZ ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;;BGP MOOD DISORDERS
 ;
 ; This routine loads Taxonomy BGP MOOD DISORDERS
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
 ;;21,"291.89 ")
 ;;1
 ;;21,"292.84 ")
 ;;2
 ;;21,"293.83 ")
 ;;3
 ;;21,"296.00 ")
 ;;4
 ;;21,"300.4 ")
 ;;5
 ;;21,"301.13 ")
 ;;6
 ;;21,"311. ")
 ;;7
 ;;9002226,569,.01)
 ;;BGP MOOD DISORDERS
 ;;9002226,569,.02)
 ;;@
 ;;9002226,569,.04)
 ;;n
 ;;9002226,569,.06)
 ;;@
 ;;9002226,569,.08)
 ;;0
 ;;9002226,569,.09)
 ;;3050802
 ;;9002226,569,.11)
 ;;@
 ;;9002226,569,.12)
 ;;31
 ;;9002226,569,.13)
 ;;1
 ;;9002226,569,.14)
 ;;@
 ;;9002226,569,.15)
 ;;80
 ;;9002226,569,.16)
 ;;@
 ;;9002226,569,.17)
 ;;@
 ;;9002226,569,3101)
 ;;@
 ;;9002226.02101,"569,291.89 ",.01)
 ;;291.89 
 ;;9002226.02101,"569,291.89 ",.02)
 ;;291.89 
 ;;9002226.02101,"569,292.84 ",.01)
 ;;292.84 
 ;;9002226.02101,"569,292.84 ",.02)
 ;;292.84 
 ;;9002226.02101,"569,293.83 ",.01)
 ;;293.83 
 ;;9002226.02101,"569,293.83 ",.02)
 ;;293.83 
 ;;9002226.02101,"569,296.00 ",.01)
 ;;296.00 
 ;;9002226.02101,"569,296.00 ",.02)
 ;;296.99 
 ;;9002226.02101,"569,300.4 ",.01)
 ;;300.4 
 ;;9002226.02101,"569,300.4 ",.02)
 ;;300.4 
 ;;9002226.02101,"569,301.13 ",.01)
 ;;301.13 
 ;;9002226.02101,"569,301.13 ",.02)
 ;;301.13 
 ;;9002226.02101,"569,311. ",.01)
 ;;311. 
 ;;9002226.02101,"569,311. ",.02)
 ;;311. 
 ;
OTHER ; OTHER ROUTINES
 Q
BGP9TXV ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP GROUP A STREP CPT
 ;
 ; This routine loads Taxonomy BGP GROUP A STREP CPT
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
 ;;21,"87081 ")
 ;;1
 ;;21,"87430 ")
 ;;2
 ;;21,"87650 ")
 ;;3
 ;;21,"87880 ")
 ;;4
 ;;9002226,556,.01)
 ;;BGP GROUP A STREP CPT
 ;;9002226,556,.02)
 ;;@
 ;;9002226,556,.04)
 ;;n
 ;;9002226,556,.06)
 ;;@
 ;;9002226,556,.08)
 ;;0
 ;;9002226,556,.09)
 ;;3051213
 ;;9002226,556,.11)
 ;;@
 ;;9002226,556,.12)
 ;;455
 ;;9002226,556,.13)
 ;;1
 ;;9002226,556,.14)
 ;;@
 ;;9002226,556,.15)
 ;;81
 ;;9002226,556,.16)
 ;;@
 ;;9002226,556,.17)
 ;;@
 ;;9002226,556,3101)
 ;;@
 ;;9002226.02101,"556,87081 ",.01)
 ;;87081 
 ;;9002226.02101,"556,87081 ",.02)
 ;;87081 
 ;;9002226.02101,"556,87430 ",.01)
 ;;87430 
 ;;9002226.02101,"556,87430 ",.02)
 ;;87430 
 ;;9002226.02101,"556,87650 ",.01)
 ;;87650 
 ;;9002226.02101,"556,87650 ",.02)
 ;;87652 
 ;;9002226.02101,"556,87880 ",.01)
 ;;87880 
 ;;9002226.02101,"556,87880 ",.02)
 ;;87880 
 ;
OTHER ; OTHER ROUTINES
 Q
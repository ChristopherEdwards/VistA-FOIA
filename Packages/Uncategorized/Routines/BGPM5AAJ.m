BGPM5AAJ ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON JUL 01, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;;BGPMU HIV PRENATAL SCREEN CPT
 ;
 ; This routine loads Taxonomy BGPMU HIV PRENATAL SCREEN CPT
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
 ;;21,"87390 ")
 ;;1
 ;;21,"87391 ")
 ;;2
 ;;21,"87534 ")
 ;;3
 ;;21,"87535 ")
 ;;4
 ;;21,"87536 ")
 ;;5
 ;;21,"87537 ")
 ;;6
 ;;21,"87538 ")
 ;;7
 ;;21,"87539 ")
 ;;8
 ;;9002226,865,.01)
 ;;BGPMU HIV PRENATAL SCREEN CPT
 ;;9002226,865,.02)
 ;;PRENATAL HIV SCREEN CPT
 ;;9002226,865,.04)
 ;;n
 ;;9002226,865,.06)
 ;;@
 ;;9002226,865,.08)
 ;;@
 ;;9002226,865,.09)
 ;;3110603
 ;;9002226,865,.11)
 ;;@
 ;;9002226,865,.12)
 ;;@
 ;;9002226,865,.13)
 ;;@
 ;;9002226,865,.14)
 ;;@
 ;;9002226,865,.15)
 ;;81
 ;;9002226,865,.16)
 ;;1
 ;;9002226,865,.17)
 ;;@
 ;;9002226,865,3101)
 ;;@
 ;;9002226.02101,"865,87390 ",.01)
 ;;87390
 ;;9002226.02101,"865,87390 ",.02)
 ;;87390
 ;;9002226.02101,"865,87391 ",.01)
 ;;87391
 ;;9002226.02101,"865,87391 ",.02)
 ;;87391
 ;;9002226.02101,"865,87534 ",.01)
 ;;87534
 ;;9002226.02101,"865,87534 ",.02)
 ;;87534
 ;;9002226.02101,"865,87535 ",.01)
 ;;87535
 ;;9002226.02101,"865,87535 ",.02)
 ;;87535
 ;;9002226.02101,"865,87536 ",.01)
 ;;87536
 ;;9002226.02101,"865,87536 ",.02)
 ;;87536
 ;;9002226.02101,"865,87537 ",.01)
 ;;87537
 ;;9002226.02101,"865,87537 ",.02)
 ;;87537
 ;;9002226.02101,"865,87538 ",.01)
 ;;87538
 ;;9002226.02101,"865,87538 ",.02)
 ;;87538
 ;;9002226.02101,"865,87539 ",.01)
 ;;87539
 ;;9002226.02101,"865,87539 ",.02)
 ;;87539
 ;
OTHER ; OTHER ROUTINES
 Q
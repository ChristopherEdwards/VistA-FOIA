BGPM5APL ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON AUG 12, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;;BGPMU POAG DX
 ;
 ; This routine loads Taxonomy BGPMU POAG DX
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
 ;;21,"365.10 ")
 ;;1
 ;;21,"365.11 ")
 ;;3
 ;;21,"365.12 ")
 ;;4
 ;;21,"365.15 ")
 ;;2
 ;;9002226,1000,.01)
 ;;BGPMU POAG DX
 ;;9002226,1000,.02)
 ;;Prim Open Angle Glauc Dx
 ;;9002226,1000,.04)
 ;;@
 ;;9002226,1000,.06)
 ;;@
 ;;9002226,1000,.08)
 ;;@
 ;;9002226,1000,.09)
 ;;@
 ;;9002226,1000,.11)
 ;;@
 ;;9002226,1000,.12)
 ;;@
 ;;9002226,1000,.13)
 ;;@
 ;;9002226,1000,.14)
 ;;@
 ;;9002226,1000,.15)
 ;;80
 ;;9002226,1000,.16)
 ;;@
 ;;9002226,1000,.17)
 ;;@
 ;;9002226,1000,3101)
 ;;@
 ;;9002226.02101,"1000,365.10 ",.01)
 ;;365.10
 ;;9002226.02101,"1000,365.10 ",.02)
 ;;365.10
 ;;9002226.02101,"1000,365.11 ",.01)
 ;;365.11
 ;;9002226.02101,"1000,365.11 ",.02)
 ;;365.11
 ;;9002226.02101,"1000,365.12 ",.01)
 ;;365.12
 ;;9002226.02101,"1000,365.12 ",.02)
 ;;365.12
 ;;9002226.02101,"1000,365.15 ",.01)
 ;;365.15
 ;;9002226.02101,"1000,365.15 ",.02)
 ;;365.15
 ;
OTHER ; OTHER ROUTINES
 Q
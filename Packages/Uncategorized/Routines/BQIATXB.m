BQIATXB ;PRXM/HC/ALA-CREATED BY ^ATXSTX ON SEP 19, 2006;
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;;BQI IHD DXS
 ;
 ; This routine loads Taxonomy BQI IHD DXS
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
 ;;21,"411.0 ")
 ;;1
 ;;21,"413.0 ")
 ;;2
 ;;21,"414.0 ")
 ;;3
 ;;9002226,566,.01)
 ;;BQI IHD DXS
 ;;9002226,566,.02)
 ;;BQI IHD DXS
 ;;9002226,566,.04)
 ;;@
 ;;9002226,566,.06)
 ;;@
 ;;9002226,566,.08)
 ;;0
 ;;9002226,566,.09)
 ;;3060509
 ;;9002226,566,.11)
 ;;@
 ;;9002226,566,.12)
 ;;31
 ;;9002226,566,.13)
 ;;1
 ;;9002226,566,.14)
 ;;@
 ;;9002226,566,.15)
 ;;80
 ;;9002226,566,.16)
 ;;@
 ;;9002226,566,.17)
 ;;@
 ;;9002226,566,3101)
 ;;@
 ;;9002226.02101,"566,411.0 ",.01)
 ;;411.0
 ;;9002226.02101,"566,411.0 ",.02)
 ;;411.99
 ;;9002226.02101,"566,413.0 ",.01)
 ;;413.0
 ;;9002226.02101,"566,413.0 ",.02)
 ;;413.99
 ;;9002226.02101,"566,414.0 ",.01)
 ;;414.0
 ;;9002226.02101,"566,414.0 ",.02)
 ;;414.99
 ;
OTHER ; OTHER ROUTINES
 Q
BTPWVXG ;VNGT/HS/ALA-CREATED BY ^ATXSTX ON JAN 14, 2010;
 ;;1.0;CARE MANAGEMENT EVENT TRACKING;;Feb 07, 2011
 ;;BTPW BRST RECON W/O IMP PROC
 ;
 ; This routine loads Taxonomy BTPW BRST RECON W/O IMP PROC
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
 ;;21,"85.71 ")
 ;;1
 ;;9002226,1343,.01)
 ;;BTPW BRST RECON W/O IMP PROC
 ;;9002226,1343,.02)
 ;;@
 ;;9002226,1343,.04)
 ;;n
 ;;9002226,1343,.06)
 ;;@
 ;;9002226,1343,.08)
 ;;0
 ;;9002226,1343,.09)
 ;;3091211
 ;;9002226,1343,.11)
 ;;@
 ;;9002226,1343,.12)
 ;;255
 ;;9002226,1343,.13)
 ;;1
 ;;9002226,1343,.14)
 ;;@
 ;;9002226,1343,.15)
 ;;80.1
 ;;9002226,1343,.16)
 ;;@
 ;;9002226,1343,.17)
 ;;@
 ;;9002226,1343,3101)
 ;;@
 ;;9002226.02101,"1343,85.71 ",.01)
 ;;85.71
 ;;9002226.02101,"1343,85.71 ",.02)
 ;;85.79
 ;
OTHER ; OTHER ROUTINES
 Q
BGP7LXID ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 29, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"626,61392-0356-90 ",.01)
 ;;61392-0356-90
 ;;9002226.02101,"626,61392-0356-90 ",.02)
 ;;61392-0356-90
 ;;9002226.02101,"626,61392-0356-91 ",.01)
 ;;61392-0356-91
 ;;9002226.02101,"626,61392-0356-91 ",.02)
 ;;61392-0356-91
 ;;9002226.02101,"626,61808-0821-01 ",.01)
 ;;61808-0821-01
 ;;9002226.02101,"626,61808-0821-01 ",.02)
 ;;61808-0821-01
 ;;9002226.02101,"626,62584-0676-01 ",.01)
 ;;62584-0676-01
 ;;9002226.02101,"626,62584-0676-01 ",.02)
 ;;62584-0676-01
 ;;9002226.02101,"626,62584-0676-33 ",.01)
 ;;62584-0676-33
 ;;9002226.02101,"626,62584-0676-33 ",.02)
 ;;62584-0676-33
 ;;9002226.02101,"626,63739-0083-02 ",.01)
 ;;63739-0083-02
 ;;9002226.02101,"626,63739-0083-02 ",.02)
 ;;63739-0083-02
 ;;9002226.02101,"626,63739-0185-01 ",.01)
 ;;63739-0185-01
 ;;9002226.02101,"626,63739-0185-01 ",.02)
 ;;63739-0185-01
 ;;9002226.02101,"626,63739-0185-03 ",.01)
 ;;63739-0185-03
 ;;9002226.02101,"626,63739-0185-03 ",.02)
 ;;63739-0185-03
 ;;9002226.02101,"626,65162-0518-10 ",.01)
 ;;65162-0518-10
 ;;9002226.02101,"626,65162-0518-10 ",.02)
 ;;65162-0518-10
 ;;9002226.02101,"626,65162-0518-11 ",.01)
 ;;65162-0518-11
 ;;9002226.02101,"626,65162-0518-11 ",.02)
 ;;65162-0518-11
 ;;9002226.02101,"626,68030-3762-01 ",.01)
 ;;68030-3762-01
 ;;9002226.02101,"626,68030-3762-01 ",.02)
 ;;68030-3762-01
 ;;9002226.02101,"626,68115-0255-30 ",.01)
 ;;68115-0255-30
 ;;9002226.02101,"626,68115-0255-30 ",.02)
 ;;68115-0255-30
 ;;9002226.02101,"626,68115-0472-60 ",.01)
 ;;68115-0472-60
 ;;9002226.02101,"626,68115-0472-60 ",.02)
 ;;68115-0472-60
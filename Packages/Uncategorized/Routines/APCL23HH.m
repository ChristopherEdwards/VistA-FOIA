APCL23HH ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 24, 2009 ;
 ;;3.0;IHS PCC REPORTS;**24**;FEB 05, 1997
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1018,660.30 ",.01)
 ;;660.30 
 ;;9002226.02101,"1018,660.30 ",.02)
 ;;660.30 
 ;;9002226.02101,"1018,660.33 ",.01)
 ;;660.33 
 ;;9002226.02101,"1018,660.33 ",.02)
 ;;660.33 
 ;;9002226.02101,"1018,660.40 ",.01)
 ;;660.40 
 ;;9002226.02101,"1018,660.40 ",.02)
 ;;660.40 
 ;;9002226.02101,"1018,660.43 ",.01)
 ;;660.43 
 ;;9002226.02101,"1018,660.43 ",.02)
 ;;660.43 
 ;;9002226.02101,"1018,660.50 ",.01)
 ;;660.50 
 ;;9002226.02101,"1018,660.50 ",.02)
 ;;660.50 
 ;;9002226.02101,"1018,660.53 ",.01)
 ;;660.53 
 ;;9002226.02101,"1018,660.53 ",.02)
 ;;660.53 
 ;;9002226.02101,"1018,660.60 ",.01)
 ;;660.60 
 ;;9002226.02101,"1018,660.60 ",.02)
 ;;660.60 
 ;;9002226.02101,"1018,660.63 ",.01)
 ;;660.63 
 ;;9002226.02101,"1018,660.63 ",.02)
 ;;660.63 
 ;;9002226.02101,"1018,660.70 ",.01)
 ;;660.70 
 ;;9002226.02101,"1018,660.70 ",.02)
 ;;660.70 
 ;;9002226.02101,"1018,660.73 ",.01)
 ;;660.73 
 ;;9002226.02101,"1018,660.73 ",.02)
 ;;660.73 
 ;;9002226.02101,"1018,660.80 ",.01)
 ;;660.80 
 ;;9002226.02101,"1018,660.80 ",.02)
 ;;660.80 
 ;;9002226.02101,"1018,660.83 ",.01)
 ;;660.83 
 ;;9002226.02101,"1018,660.83 ",.02)
 ;;660.83 
 ;;9002226.02101,"1018,660.90 ",.01)
 ;;660.90 
 ;;9002226.02101,"1018,660.90 ",.02)
 ;;660.90 
 ;;9002226.02101,"1018,660.93 ",.01)
 ;;660.93 
 ;;9002226.02101,"1018,660.93 ",.02)
 ;;660.93 
 ;;9002226.02101,"1018,661.00 ",.01)
 ;;661.00 
 ;;9002226.02101,"1018,661.00 ",.02)
 ;;661.00 
 ;;9002226.02101,"1018,661.03 ",.01)
 ;;661.03 
 ;;9002226.02101,"1018,661.03 ",.02)
 ;;661.03 
 ;;9002226.02101,"1018,661.10 ",.01)
 ;;661.10 
 ;;9002226.02101,"1018,661.10 ",.02)
 ;;661.10 
 ;;9002226.02101,"1018,661.13 ",.01)
 ;;661.13 
 ;;9002226.02101,"1018,661.13 ",.02)
 ;;661.13 
 ;;9002226.02101,"1018,661.20 ",.01)
 ;;661.20 
 ;;9002226.02101,"1018,661.20 ",.02)
 ;;661.20 
 ;;9002226.02101,"1018,661.23 ",.01)
 ;;661.23 
 ;;9002226.02101,"1018,661.23 ",.02)
 ;;661.23 
 ;;9002226.02101,"1018,661.30 ",.01)
 ;;661.30 
 ;;9002226.02101,"1018,661.30 ",.02)
 ;;661.30 
 ;;9002226.02101,"1018,661.33 ",.01)
 ;;661.33 
 ;;9002226.02101,"1018,661.33 ",.02)
 ;;661.33 
 ;;9002226.02101,"1018,661.40 ",.01)
 ;;661.40 
 ;;9002226.02101,"1018,661.40 ",.02)
 ;;661.40 
 ;;9002226.02101,"1018,661.43 ",.01)
 ;;661.43 
 ;;9002226.02101,"1018,661.43 ",.02)
 ;;661.43 
 ;;9002226.02101,"1018,661.90 ",.01)
 ;;661.90 
 ;;9002226.02101,"1018,661.90 ",.02)
 ;;661.90 
 ;;9002226.02101,"1018,661.93 ",.01)
 ;;661.93 
 ;;9002226.02101,"1018,661.93 ",.02)
 ;;661.93 
 ;;9002226.02101,"1018,662.00 ",.01)
 ;;662.00 
 ;;9002226.02101,"1018,662.00 ",.02)
 ;;662.00 
 ;;9002226.02101,"1018,662.03 ",.01)
 ;;662.03 
 ;;9002226.02101,"1018,662.03 ",.02)
 ;;662.03 
 ;;9002226.02101,"1018,662.10 ",.01)
 ;;662.10 
 ;;9002226.02101,"1018,662.10 ",.02)
 ;;662.10 
 ;;9002226.02101,"1018,662.13 ",.01)
 ;;662.13 
 ;;9002226.02101,"1018,662.13 ",.02)
 ;;662.13 
 ;;9002226.02101,"1018,662.20 ",.01)
 ;;662.20 
 ;;9002226.02101,"1018,662.20 ",.02)
 ;;662.20 
 ;;9002226.02101,"1018,662.23 ",.01)
 ;;662.23 
 ;;9002226.02101,"1018,662.23 ",.02)
 ;;662.23 
 ;;9002226.02101,"1018,662.30 ",.01)
 ;;662.30 
 ;;9002226.02101,"1018,662.30 ",.02)
 ;;662.30 
 ;;9002226.02101,"1018,662.33 ",.01)
 ;;662.33 
 ;;9002226.02101,"1018,662.33 ",.02)
 ;;662.33 
 ;;9002226.02101,"1018,663.00 ",.01)
 ;;663.00 
 ;;9002226.02101,"1018,663.00 ",.02)
 ;;663.00 
 ;;9002226.02101,"1018,663.03 ",.01)
 ;;663.03 
 ;;9002226.02101,"1018,663.03 ",.02)
 ;;663.03 
 ;;9002226.02101,"1018,663.10 ",.01)
 ;;663.10 
 ;;9002226.02101,"1018,663.10 ",.02)
 ;;663.10 
 ;;9002226.02101,"1018,663.13 ",.01)
 ;;663.13 
 ;;9002226.02101,"1018,663.13 ",.02)
 ;;663.13 
 ;;9002226.02101,"1018,663.20 ",.01)
 ;;663.20 
 ;;9002226.02101,"1018,663.20 ",.02)
 ;;663.20 
 ;;9002226.02101,"1018,663.23 ",.01)
 ;;663.23 
 ;;9002226.02101,"1018,663.23 ",.02)
 ;;663.23 
 ;;9002226.02101,"1018,663.30 ",.01)
 ;;663.30 
 ;;9002226.02101,"1018,663.30 ",.02)
 ;;663.30 
 ;;9002226.02101,"1018,663.33 ",.01)
 ;;663.33 
 ;;9002226.02101,"1018,663.33 ",.02)
 ;;663.33 
 ;;9002226.02101,"1018,663.40 ",.01)
 ;;663.40 
 ;;9002226.02101,"1018,663.40 ",.02)
 ;;663.40 
 ;;9002226.02101,"1018,663.43 ",.01)
 ;;663.43 
 ;;9002226.02101,"1018,663.43 ",.02)
 ;;663.43 
 ;;9002226.02101,"1018,663.50 ",.01)
 ;;663.50 
 ;;9002226.02101,"1018,663.50 ",.02)
 ;;663.50 
 ;;9002226.02101,"1018,663.53 ",.01)
 ;;663.53 
 ;;9002226.02101,"1018,663.53 ",.02)
 ;;663.53 
 ;;9002226.02101,"1018,663.60 ",.01)
 ;;663.60 
 ;;9002226.02101,"1018,663.60 ",.02)
 ;;663.60 
 ;;9002226.02101,"1018,663.63 ",.01)
 ;;663.63 
 ;;9002226.02101,"1018,663.63 ",.02)
 ;;663.63 
 ;;9002226.02101,"1018,663.80 ",.01)
 ;;663.80 
 ;;9002226.02101,"1018,663.80 ",.02)
 ;;663.80 
 ;;9002226.02101,"1018,663.83 ",.01)
 ;;663.83 
 ;;9002226.02101,"1018,663.83 ",.02)
 ;;663.83 
 ;;9002226.02101,"1018,663.90 ",.01)
 ;;663.90 
 ;;9002226.02101,"1018,663.90 ",.02)
 ;;663.90 
 ;;9002226.02101,"1018,663.93 ",.01)
 ;;663.93 
 ;;9002226.02101,"1018,663.93 ",.02)
 ;;663.93 
 ;;9002226.02101,"1018,665.00 ",.01)
 ;;665.00 
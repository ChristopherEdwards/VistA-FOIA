BGPM5ABW ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"830,51655029153 ",.02)
 ;;51655029153
 ;;9002226.02101,"830,51655040024 ",.01)
 ;;51655040024
 ;;9002226.02101,"830,51655040024 ",.02)
 ;;51655040024
 ;;9002226.02101,"830,51655040025 ",.01)
 ;;51655040025
 ;;9002226.02101,"830,51655040025 ",.02)
 ;;51655040025
 ;;9002226.02101,"830,51655040052 ",.01)
 ;;51655040052
 ;;9002226.02101,"830,51655040052 ",.02)
 ;;51655040052
 ;;9002226.02101,"830,51655040053 ",.01)
 ;;51655040053
 ;;9002226.02101,"830,51655040053 ",.02)
 ;;51655040053
 ;;9002226.02101,"830,52959020700 ",.01)
 ;;52959020700
 ;;9002226.02101,"830,52959020700 ",.02)
 ;;52959020700
 ;;9002226.02101,"830,52959020728 ",.01)
 ;;52959020728
 ;;9002226.02101,"830,52959020728 ",.02)
 ;;52959020728
 ;;9002226.02101,"830,52959020730 ",.01)
 ;;52959020730
 ;;9002226.02101,"830,52959020730 ",.02)
 ;;52959020730
 ;;9002226.02101,"830,52959020760 ",.01)
 ;;52959020760
 ;;9002226.02101,"830,52959020760 ",.02)
 ;;52959020760
 ;;9002226.02101,"830,52959086002 ",.01)
 ;;52959086002
 ;;9002226.02101,"830,52959086002 ",.02)
 ;;52959086002
 ;;9002226.02101,"830,52959086030 ",.01)
 ;;52959086030
 ;;9002226.02101,"830,52959086030 ",.02)
 ;;52959086030
 ;;9002226.02101,"830,52959086060 ",.01)
 ;;52959086060
 ;;9002226.02101,"830,52959086060 ",.02)
 ;;52959086060
 ;;9002226.02101,"830,52959086090 ",.01)
 ;;52959086090
 ;;9002226.02101,"830,52959086090 ",.02)
 ;;52959086090
 ;;9002226.02101,"830,52959089601 ",.01)
 ;;52959089601
 ;;9002226.02101,"830,52959089601 ",.02)
 ;;52959089601
 ;;9002226.02101,"830,52959089660 ",.01)
 ;;52959089660
 ;;9002226.02101,"830,52959089660 ",.02)
 ;;52959089660
 ;;9002226.02101,"830,53489046701 ",.01)
 ;;53489046701
 ;;9002226.02101,"830,53489046701 ",.02)
 ;;53489046701
 ;;9002226.02101,"830,53489046703 ",.01)
 ;;53489046703
 ;;9002226.02101,"830,53489046703 ",.02)
 ;;53489046703
 ;;9002226.02101,"830,53489046705 ",.01)
 ;;53489046705
 ;;9002226.02101,"830,53489046705 ",.02)
 ;;53489046705
 ;;9002226.02101,"830,53489046710 ",.01)
 ;;53489046710
 ;;9002226.02101,"830,53489046710 ",.02)
 ;;53489046710
 ;;9002226.02101,"830,53489046788 ",.01)
 ;;53489046788
 ;;9002226.02101,"830,53489046788 ",.02)
 ;;53489046788
 ;;9002226.02101,"830,53489046801 ",.01)
 ;;53489046801
 ;;9002226.02101,"830,53489046801 ",.02)
 ;;53489046801
 ;;9002226.02101,"830,53489046803 ",.01)
 ;;53489046803
 ;;9002226.02101,"830,53489046803 ",.02)
 ;;53489046803
 ;;9002226.02101,"830,53489046805 ",.01)
 ;;53489046805
 ;;9002226.02101,"830,53489046805 ",.02)
 ;;53489046805
 ;;9002226.02101,"830,53489046810 ",.01)
 ;;53489046810
 ;;9002226.02101,"830,53489046810 ",.02)
 ;;53489046810
 ;;9002226.02101,"830,53489046888 ",.01)
 ;;53489046888
 ;;9002226.02101,"830,53489046888 ",.02)
 ;;53489046888
 ;;9002226.02101,"830,53489046901 ",.01)
 ;;53489046901
 ;;9002226.02101,"830,53489046901 ",.02)
 ;;53489046901
 ;;9002226.02101,"830,53489046903 ",.01)
 ;;53489046903
 ;;9002226.02101,"830,53489046903 ",.02)
 ;;53489046903
 ;;9002226.02101,"830,53489046905 ",.01)
 ;;53489046905
 ;;9002226.02101,"830,53489046905 ",.02)
 ;;53489046905
 ;;9002226.02101,"830,53489046910 ",.01)
 ;;53489046910
 ;;9002226.02101,"830,53489046910 ",.02)
 ;;53489046910
 ;;9002226.02101,"830,53489046988 ",.01)
 ;;53489046988
 ;;9002226.02101,"830,53489046988 ",.02)
 ;;53489046988
 ;;9002226.02101,"830,53489058501 ",.01)
 ;;53489058501
 ;;9002226.02101,"830,53489058501 ",.02)
 ;;53489058501
 ;;9002226.02101,"830,53489058503 ",.01)
 ;;53489058503
 ;;9002226.02101,"830,53489058503 ",.02)
 ;;53489058503
 ;;9002226.02101,"830,53489058505 ",.01)
 ;;53489058505
 ;;9002226.02101,"830,53489058505 ",.02)
 ;;53489058505
 ;;9002226.02101,"830,53489058506 ",.01)
 ;;53489058506
 ;;9002226.02101,"830,53489058506 ",.02)
 ;;53489058506
 ;;9002226.02101,"830,53489058507 ",.01)
 ;;53489058507
 ;;9002226.02101,"830,53489058507 ",.02)
 ;;53489058507
 ;;9002226.02101,"830,53489058510 ",.01)
 ;;53489058510
 ;;9002226.02101,"830,53489058510 ",.02)
 ;;53489058510
 ;;9002226.02101,"830,53746017801 ",.01)
 ;;53746017801
 ;;9002226.02101,"830,53746017801 ",.02)
 ;;53746017801
 ;;9002226.02101,"830,53746017805 ",.01)
 ;;53746017805
 ;;9002226.02101,"830,53746017805 ",.02)
 ;;53746017805
 ;;9002226.02101,"830,53746017810 ",.01)
 ;;53746017810
 ;;9002226.02101,"830,53746017810 ",.02)
 ;;53746017810
 ;;9002226.02101,"830,53746017890 ",.01)
 ;;53746017890
 ;;9002226.02101,"830,53746017890 ",.02)
 ;;53746017890
 ;;9002226.02101,"830,53746017901 ",.01)
 ;;53746017901
 ;;9002226.02101,"830,53746017901 ",.02)
 ;;53746017901
 ;;9002226.02101,"830,53746017905 ",.01)
 ;;53746017905
 ;;9002226.02101,"830,53746017905 ",.02)
 ;;53746017905
 ;;9002226.02101,"830,53746017910 ",.01)
 ;;53746017910
 ;;9002226.02101,"830,53746017910 ",.02)
 ;;53746017910
 ;;9002226.02101,"830,53808018301 ",.01)
 ;;53808018301
 ;;9002226.02101,"830,53808018301 ",.02)
 ;;53808018301
 ;;9002226.02101,"830,53808018401 ",.01)
 ;;53808018401
 ;;9002226.02101,"830,53808018401 ",.02)
 ;;53808018401
 ;;9002226.02101,"830,53808018501 ",.01)
 ;;53808018501
 ;;9002226.02101,"830,53808018501 ",.02)
 ;;53808018501
 ;;9002226.02101,"830,53808038101 ",.01)
 ;;53808038101
 ;;9002226.02101,"830,53808038101 ",.02)
 ;;53808038101
 ;;9002226.02101,"830,53808045901 ",.01)
 ;;53808045901
 ;;9002226.02101,"830,53808045901 ",.02)
 ;;53808045901
 ;;9002226.02101,"830,53808061301 ",.01)
 ;;53808061301
 ;;9002226.02101,"830,53808061301 ",.02)
 ;;53808061301
 ;;9002226.02101,"830,53808071201 ",.01)
 ;;53808071201
 ;;9002226.02101,"830,53808071201 ",.02)
 ;;53808071201
 ;;9002226.02101,"830,53808071301 ",.01)
 ;;53808071301
 ;;9002226.02101,"830,53808071301 ",.02)
 ;;53808071301
 ;;9002226.02101,"830,53808071701 ",.01)
 ;;53808071701
 ;;9002226.02101,"830,53808071701 ",.02)
 ;;53808071701
 ;;9002226.02101,"830,53808071801 ",.01)
 ;;53808071801
 ;;9002226.02101,"830,53808071801 ",.02)
 ;;53808071801
 ;;9002226.02101,"830,53808072001 ",.01)
 ;;53808072001
 ;;9002226.02101,"830,53808072001 ",.02)
 ;;53808072001
 ;;9002226.02101,"830,54569535300 ",.01)
 ;;54569535300
 ;;9002226.02101,"830,54569535300 ",.02)
 ;;54569535300
 ;;9002226.02101,"830,54569535302 ",.01)
 ;;54569535302
 ;;9002226.02101,"830,54569535302 ",.02)
 ;;54569535302
 ;;9002226.02101,"830,54569535303 ",.01)
 ;;54569535303
 ;;9002226.02101,"830,54569535303 ",.02)
 ;;54569535303
 ;;9002226.02101,"830,54569536000 ",.01)
 ;;54569536000
 ;;9002226.02101,"830,54569536000 ",.02)
 ;;54569536000
 ;;9002226.02101,"830,54569536003 ",.01)
 ;;54569536003
 ;;9002226.02101,"830,54569536003 ",.02)
 ;;54569536003
 ;;9002226.02101,"830,54569537300 ",.01)
 ;;54569537300
 ;;9002226.02101,"830,54569537300 ",.02)
 ;;54569537300
 ;;9002226.02101,"830,54569537302 ",.01)
 ;;54569537302
 ;;9002226.02101,"830,54569537302 ",.02)
 ;;54569537302
 ;;9002226.02101,"830,54569554600 ",.01)
 ;;54569554600
 ;;9002226.02101,"830,54569554600 ",.02)
 ;;54569554600
 ;;9002226.02101,"830,54569554601 ",.01)
 ;;54569554601
 ;;9002226.02101,"830,54569554601 ",.02)
 ;;54569554601
 ;;9002226.02101,"830,54569554602 ",.01)
 ;;54569554602
 ;;9002226.02101,"830,54569554602 ",.02)
 ;;54569554602
 ;;9002226.02101,"830,54569561800 ",.01)
 ;;54569561800
 ;;9002226.02101,"830,54569561800 ",.02)
 ;;54569561800
 ;;9002226.02101,"830,54569561801 ",.01)
 ;;54569561801
 ;;9002226.02101,"830,54569561801 ",.02)
 ;;54569561801
 ;;9002226.02101,"830,54569561900 ",.01)
 ;;54569561900
 ;;9002226.02101,"830,54569561900 ",.02)
 ;;54569561900
 ;;9002226.02101,"830,54569561901 ",.01)
 ;;54569561901
 ;;9002226.02101,"830,54569561901 ",.02)
 ;;54569561901
 ;;9002226.02101,"830,54569599100 ",.01)
 ;;54569599100
 ;;9002226.02101,"830,54569599100 ",.02)
 ;;54569599100
 ;;9002226.02101,"830,54569599200 ",.01)
 ;;54569599200
 ;;9002226.02101,"830,54569599200 ",.02)
 ;;54569599200
 ;;9002226.02101,"830,54569599300 ",.01)
 ;;54569599300
 ;;9002226.02101,"830,54569599300 ",.02)
 ;;54569599300
 ;;9002226.02101,"830,54569599301 ",.01)
 ;;54569599301
 ;;9002226.02101,"830,54569599301 ",.02)
 ;;54569599301
 ;;9002226.02101,"830,54868079500 ",.01)
 ;;54868079500
 ;;9002226.02101,"830,54868079500 ",.02)
 ;;54868079500
 ;;9002226.02101,"830,54868456100 ",.01)
 ;;54868456100
 ;;9002226.02101,"830,54868456100 ",.02)
 ;;54868456100
 ;;9002226.02101,"830,54868456101 ",.01)
 ;;54868456101
 ;;9002226.02101,"830,54868456101 ",.02)
 ;;54868456101
 ;;9002226.02101,"830,54868456102 ",.01)
 ;;54868456102
 ;;9002226.02101,"830,54868456102 ",.02)
 ;;54868456102
 ;;9002226.02101,"830,54868456103 ",.01)
 ;;54868456103
 ;;9002226.02101,"830,54868456103 ",.02)
 ;;54868456103
 ;;9002226.02101,"830,54868456104 ",.01)
 ;;54868456104
 ;;9002226.02101,"830,54868456104 ",.02)
 ;;54868456104
 ;;9002226.02101,"830,54868456400 ",.01)
 ;;54868456400
 ;;9002226.02101,"830,54868456400 ",.02)
 ;;54868456400
 ;;9002226.02101,"830,54868456401 ",.01)
 ;;54868456401
 ;;9002226.02101,"830,54868456401 ",.02)
 ;;54868456401
 ;;9002226.02101,"830,54868456402 ",.01)
 ;;54868456402
 ;;9002226.02101,"830,54868456402 ",.02)
 ;;54868456402
 ;;9002226.02101,"830,54868456403 ",.01)
 ;;54868456403
 ;;9002226.02101,"830,54868456403 ",.02)
 ;;54868456403
 ;;9002226.02101,"830,54868456404 ",.01)
 ;;54868456404
 ;;9002226.02101,"830,54868456404 ",.02)
 ;;54868456404
 ;;9002226.02101,"830,54868456405 ",.01)
 ;;54868456405
 ;;9002226.02101,"830,54868456405 ",.02)
 ;;54868456405
 ;;9002226.02101,"830,54868456600 ",.01)
 ;;54868456600
 ;;9002226.02101,"830,54868456600 ",.02)
 ;;54868456600
 ;;9002226.02101,"830,54868456601 ",.01)
 ;;54868456601
 ;;9002226.02101,"830,54868456601 ",.02)
 ;;54868456601
 ;;9002226.02101,"830,54868456602 ",.01)
 ;;54868456602
 ;;9002226.02101,"830,54868456602 ",.02)
 ;;54868456602
 ;;9002226.02101,"830,54868456603 ",.01)
 ;;54868456603
 ;;9002226.02101,"830,54868456603 ",.02)
 ;;54868456603
 ;;9002226.02101,"830,54868456604 ",.01)
 ;;54868456604
 ;;9002226.02101,"830,54868456604 ",.02)
 ;;54868456604
 ;;9002226.02101,"830,54868514800 ",.01)
 ;;54868514800
 ;;9002226.02101,"830,54868514800 ",.02)
 ;;54868514800
 ;;9002226.02101,"830,54868514801 ",.01)
 ;;54868514801
 ;;9002226.02101,"830,54868514801 ",.02)
 ;;54868514801
 ;;9002226.02101,"830,54868514802 ",.01)
 ;;54868514802
 ;;9002226.02101,"830,54868514802 ",.02)
 ;;54868514802
 ;;9002226.02101,"830,54868514803 ",.01)
 ;;54868514803
 ;;9002226.02101,"830,54868514803 ",.02)
 ;;54868514803
 ;;9002226.02101,"830,54868514804 ",.01)
 ;;54868514804
 ;;9002226.02101,"830,54868514804 ",.02)
 ;;54868514804
 ;;9002226.02101,"830,54868518500 ",.01)
 ;;54868518500
 ;;9002226.02101,"830,54868518500 ",.02)
 ;;54868518500
 ;;9002226.02101,"830,54868518501 ",.01)
 ;;54868518501
 ;;9002226.02101,"830,54868518501 ",.02)
 ;;54868518501
 ;;9002226.02101,"830,54868518502 ",.01)
 ;;54868518502
 ;;9002226.02101,"830,54868518502 ",.02)
 ;;54868518502
 ;;9002226.02101,"830,54868518503 ",.01)
 ;;54868518503
 ;;9002226.02101,"830,54868518503 ",.02)
 ;;54868518503
 ;;9002226.02101,"830,54868518800 ",.01)
 ;;54868518800
 ;;9002226.02101,"830,54868518800 ",.02)
 ;;54868518800
 ;;9002226.02101,"830,54868518801 ",.01)
 ;;54868518801
 ;;9002226.02101,"830,54868518801 ",.02)
 ;;54868518801
 ;;9002226.02101,"830,54868518802 ",.01)
 ;;54868518802
 ;;9002226.02101,"830,54868518802 ",.02)
 ;;54868518802
 ;;9002226.02101,"830,54868521700 ",.01)
 ;;54868521700
 ;;9002226.02101,"830,54868521700 ",.02)
 ;;54868521700
 ;;9002226.02101,"830,54868521701 ",.01)
 ;;54868521701
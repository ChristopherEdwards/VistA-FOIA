BGPM5AKI ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"889,66267056710 ",.01)
 ;;66267056710
 ;;9002226.02101,"889,66267056710 ",.02)
 ;;66267056710
 ;;9002226.02101,"889,66267056720 ",.01)
 ;;66267056720
 ;;9002226.02101,"889,66267056720 ",.02)
 ;;66267056720
 ;;9002226.02101,"889,66267056730 ",.01)
 ;;66267056730
 ;;9002226.02101,"889,66267056730 ",.02)
 ;;66267056730
 ;;9002226.02101,"889,66267056740 ",.01)
 ;;66267056740
 ;;9002226.02101,"889,66267056740 ",.02)
 ;;66267056740
 ;;9002226.02101,"889,66267056760 ",.01)
 ;;66267056760
 ;;9002226.02101,"889,66267056760 ",.02)
 ;;66267056760
 ;;9002226.02101,"889,66267056910 ",.01)
 ;;66267056910
 ;;9002226.02101,"889,66267056910 ",.02)
 ;;66267056910
 ;;9002226.02101,"889,66267056920 ",.01)
 ;;66267056920
 ;;9002226.02101,"889,66267056920 ",.02)
 ;;66267056920
 ;;9002226.02101,"889,66267056930 ",.01)
 ;;66267056930
 ;;9002226.02101,"889,66267056930 ",.02)
 ;;66267056930
 ;;9002226.02101,"889,66267056940 ",.01)
 ;;66267056940
 ;;9002226.02101,"889,66267056940 ",.02)
 ;;66267056940
 ;;9002226.02101,"889,66267056960 ",.01)
 ;;66267056960
 ;;9002226.02101,"889,66267056960 ",.02)
 ;;66267056960
 ;;9002226.02101,"889,66267058010 ",.01)
 ;;66267058010
 ;;9002226.02101,"889,66267058010 ",.02)
 ;;66267058010
 ;;9002226.02101,"889,66267058020 ",.01)
 ;;66267058020
 ;;9002226.02101,"889,66267058020 ",.02)
 ;;66267058020
 ;;9002226.02101,"889,66267058030 ",.01)
 ;;66267058030
 ;;9002226.02101,"889,66267058030 ",.02)
 ;;66267058030
 ;;9002226.02101,"889,66267058040 ",.01)
 ;;66267058040
 ;;9002226.02101,"889,66267058040 ",.02)
 ;;66267058040
 ;;9002226.02101,"889,66267058060 ",.01)
 ;;66267058060
 ;;9002226.02101,"889,66267058060 ",.02)
 ;;66267058060
 ;;9002226.02101,"889,66267082206 ",.01)
 ;;66267082206
 ;;9002226.02101,"889,66267082206 ",.02)
 ;;66267082206
 ;;9002226.02101,"889,66336012560 ",.01)
 ;;66336012560
 ;;9002226.02101,"889,66336012560 ",.02)
 ;;66336012560
 ;;9002226.02101,"889,66336012660 ",.01)
 ;;66336012660
 ;;9002226.02101,"889,66336012660 ",.02)
 ;;66336012660
 ;;9002226.02101,"889,66336051430 ",.01)
 ;;66336051430
 ;;9002226.02101,"889,66336051430 ",.02)
 ;;66336051430
 ;;9002226.02101,"889,66336051460 ",.01)
 ;;66336051460
 ;;9002226.02101,"889,66336051460 ",.02)
 ;;66336051460
 ;;9002226.02101,"889,66336052330 ",.01)
 ;;66336052330
 ;;9002226.02101,"889,66336052330 ",.02)
 ;;66336052330
 ;;9002226.02101,"889,66336052360 ",.01)
 ;;66336052360
 ;;9002226.02101,"889,66336052360 ",.02)
 ;;66336052360
 ;;9002226.02101,"889,66336058700 ",.01)
 ;;66336058700
 ;;9002226.02101,"889,66336058700 ",.02)
 ;;66336058700
 ;;9002226.02101,"889,66336058730 ",.01)
 ;;66336058730
 ;;9002226.02101,"889,66336058730 ",.02)
 ;;66336058730
 ;;9002226.02101,"889,66336058760 ",.01)
 ;;66336058760
 ;;9002226.02101,"889,66336058760 ",.02)
 ;;66336058760
 ;;9002226.02101,"889,66336058790 ",.01)
 ;;66336058790
 ;;9002226.02101,"889,66336058790 ",.02)
 ;;66336058790
 ;;9002226.02101,"889,66336061290 ",.01)
 ;;66336061290
 ;;9002226.02101,"889,66336061290 ",.02)
 ;;66336061290
 ;;9002226.02101,"889,66336071930 ",.01)
 ;;66336071930
 ;;9002226.02101,"889,66336071930 ",.02)
 ;;66336071930
 ;;9002226.02101,"889,66336071960 ",.01)
 ;;66336071960
 ;;9002226.02101,"889,66336071960 ",.02)
 ;;66336071960
 ;;9002226.02101,"889,66336071990 ",.01)
 ;;66336071990
 ;;9002226.02101,"889,66336071990 ",.02)
 ;;66336071990
 ;;9002226.02101,"889,66336081130 ",.01)
 ;;66336081130
 ;;9002226.02101,"889,66336081130 ",.02)
 ;;66336081130
 ;;9002226.02101,"889,66336081160 ",.01)
 ;;66336081160
 ;;9002226.02101,"889,66336081160 ",.02)
 ;;66336081160
 ;;9002226.02101,"889,66336081190 ",.01)
 ;;66336081190
 ;;9002226.02101,"889,66336081190 ",.02)
 ;;66336081190
 ;;9002226.02101,"889,66336091430 ",.01)
 ;;66336091430
 ;;9002226.02101,"889,66336091430 ",.02)
 ;;66336091430
 ;;9002226.02101,"889,66336091460 ",.01)
 ;;66336091460
 ;;9002226.02101,"889,66336091460 ",.02)
 ;;66336091460
 ;;9002226.02101,"889,66336091490 ",.01)
 ;;66336091490
 ;;9002226.02101,"889,66336091490 ",.02)
 ;;66336091490
 ;;9002226.02101,"889,66467333001 ",.01)
 ;;66467333001
 ;;9002226.02101,"889,66467333001 ",.02)
 ;;66467333001
 ;;9002226.02101,"889,66484042000 ",.01)
 ;;66484042000
 ;;9002226.02101,"889,66484042000 ",.02)
 ;;66484042000
 ;;9002226.02101,"889,66484042001 ",.01)
 ;;66484042001
 ;;9002226.02101,"889,66484042001 ",.02)
 ;;66484042001
 ;;9002226.02101,"889,66484042100 ",.01)
 ;;66484042100
 ;;9002226.02101,"889,66484042100 ",.02)
 ;;66484042100
 ;;9002226.02101,"889,66484042101 ",.01)
 ;;66484042101
 ;;9002226.02101,"889,66484042101 ",.02)
 ;;66484042101
 ;;9002226.02101,"889,66484042200 ",.01)
 ;;66484042200
 ;;9002226.02101,"889,66484042200 ",.02)
 ;;66484042200
 ;;9002226.02101,"889,66484042201 ",.01)
 ;;66484042201
 ;;9002226.02101,"889,66484042201 ",.02)
 ;;66484042201
 ;;9002226.02101,"889,66860009002 ",.01)
 ;;66860009002
 ;;9002226.02101,"889,66860009002 ",.02)
 ;;66860009002
 ;;9002226.02101,"889,67046003030 ",.01)
 ;;67046003030
 ;;9002226.02101,"889,67046003030 ",.02)
 ;;67046003030
 ;;9002226.02101,"889,67046003130 ",.01)
 ;;67046003130
 ;;9002226.02101,"889,67046003130 ",.02)
 ;;67046003130
 ;;9002226.02101,"889,67046047430 ",.01)
 ;;67046047430
 ;;9002226.02101,"889,67046047430 ",.02)
 ;;67046047430
 ;;9002226.02101,"889,67046047530 ",.01)
 ;;67046047530
 ;;9002226.02101,"889,67046047530 ",.02)
 ;;67046047530
 ;;9002226.02101,"889,67046047630 ",.01)
 ;;67046047630
 ;;9002226.02101,"889,67046047630 ",.02)
 ;;67046047630
 ;;9002226.02101,"889,67046047730 ",.01)
 ;;67046047730
 ;;9002226.02101,"889,67046047730 ",.02)
 ;;67046047730
 ;;9002226.02101,"889,67209039110 ",.01)
 ;;67209039110
 ;;9002226.02101,"889,67209039110 ",.02)
 ;;67209039110
 ;;9002226.02101,"889,67209039150 ",.01)
 ;;67209039150
 ;;9002226.02101,"889,67209039150 ",.02)
 ;;67209039150
 ;;9002226.02101,"889,67209039210 ",.01)
 ;;67209039210
 ;;9002226.02101,"889,67209039210 ",.02)
 ;;67209039210
 ;;9002226.02101,"889,67209039250 ",.01)
 ;;67209039250
 ;;9002226.02101,"889,67209039250 ",.02)
 ;;67209039250
 ;;9002226.02101,"889,67209039310 ",.01)
 ;;67209039310
 ;;9002226.02101,"889,67209039310 ",.02)
 ;;67209039310
 ;;9002226.02101,"889,67209039350 ",.01)
 ;;67209039350
 ;;9002226.02101,"889,67209039350 ",.02)
 ;;67209039350
 ;;9002226.02101,"889,67228001603 ",.01)
 ;;67228001603
 ;;9002226.02101,"889,67228001603 ",.02)
 ;;67228001603
 ;;9002226.02101,"889,67228001606 ",.01)
 ;;67228001606
 ;;9002226.02101,"889,67228001606 ",.02)
 ;;67228001606
 ;;9002226.02101,"889,67228007403 ",.01)
 ;;67228007403
 ;;9002226.02101,"889,67228007403 ",.02)
 ;;67228007403
 ;;9002226.02101,"889,67228007406 ",.01)
 ;;67228007406
 ;;9002226.02101,"889,67228007406 ",.02)
 ;;67228007406
 ;;9002226.02101,"889,67228007503 ",.01)
 ;;67228007503
 ;;9002226.02101,"889,67228007503 ",.02)
 ;;67228007503
 ;;9002226.02101,"889,67228007506 ",.01)
 ;;67228007506
 ;;9002226.02101,"889,67228007506 ",.02)
 ;;67228007506
 ;;9002226.02101,"889,67228009503 ",.01)
 ;;67228009503
 ;;9002226.02101,"889,67228009503 ",.02)
 ;;67228009503
 ;;9002226.02101,"889,67228009506 ",.01)
 ;;67228009506
 ;;9002226.02101,"889,67228009506 ",.02)
 ;;67228009506
 ;;9002226.02101,"889,67228028303 ",.01)
 ;;67228028303
 ;;9002226.02101,"889,67228028303 ",.02)
 ;;67228028303
 ;;9002226.02101,"889,67228028306 ",.01)
 ;;67228028306
 ;;9002226.02101,"889,67228028306 ",.02)
 ;;67228028306
 ;;9002226.02101,"889,67228028403 ",.01)
 ;;67228028403
 ;;9002226.02101,"889,67228028403 ",.02)
 ;;67228028403
 ;;9002226.02101,"889,67228028406 ",.01)
 ;;67228028406
 ;;9002226.02101,"889,67228028406 ",.02)
 ;;67228028406
 ;;9002226.02101,"889,67228028503 ",.01)
 ;;67228028503
 ;;9002226.02101,"889,67228028503 ",.02)
 ;;67228028503
 ;;9002226.02101,"889,67228028506 ",.01)
 ;;67228028506
 ;;9002226.02101,"889,67228028506 ",.02)
 ;;67228028506
 ;;9002226.02101,"889,67228028903 ",.01)
 ;;67228028903
 ;;9002226.02101,"889,67228028903 ",.02)
 ;;67228028903
 ;;9002226.02101,"889,67228028906 ",.01)
 ;;67228028906
 ;;9002226.02101,"889,67228028906 ",.02)
 ;;67228028906
 ;;9002226.02101,"889,67228031103 ",.01)
 ;;67228031103
 ;;9002226.02101,"889,67228031103 ",.02)
 ;;67228031103
 ;;9002226.02101,"889,67228031106 ",.01)
 ;;67228031106
 ;;9002226.02101,"889,67228031106 ",.02)
 ;;67228031106
 ;;9002226.02101,"889,67228034403 ",.01)
 ;;67228034403
 ;;9002226.02101,"889,67228034403 ",.02)
 ;;67228034403
 ;;9002226.02101,"889,67228034406 ",.01)
 ;;67228034406
 ;;9002226.02101,"889,67228034406 ",.02)
 ;;67228034406
 ;;9002226.02101,"889,67228036603 ",.01)
 ;;67228036603
 ;;9002226.02101,"889,67228036603 ",.02)
 ;;67228036603
 ;;9002226.02101,"889,67228036606 ",.01)
 ;;67228036606
 ;;9002226.02101,"889,67228036606 ",.02)
 ;;67228036606
 ;;9002226.02101,"889,67228037503 ",.01)
 ;;67228037503
 ;;9002226.02101,"889,67228037503 ",.02)
 ;;67228037503
 ;;9002226.02101,"889,67228037506 ",.01)
 ;;67228037506
 ;;9002226.02101,"889,67228037506 ",.02)
 ;;67228037506
 ;;9002226.02101,"889,67228041403 ",.01)
 ;;67228041403
 ;;9002226.02101,"889,67228041403 ",.02)
 ;;67228041403
 ;;9002226.02101,"889,67228041406 ",.01)
 ;;67228041406
 ;;9002226.02101,"889,67228041406 ",.02)
 ;;67228041406
 ;;9002226.02101,"889,67228042103 ",.01)
 ;;67228042103
 ;;9002226.02101,"889,67228042103 ",.02)
 ;;67228042103
 ;;9002226.02101,"889,67228042106 ",.01)
 ;;67228042106
 ;;9002226.02101,"889,67228042106 ",.02)
 ;;67228042106
 ;;9002226.02101,"889,67228043603 ",.01)
 ;;67228043603
 ;;9002226.02101,"889,67228043603 ",.02)
 ;;67228043603
 ;;9002226.02101,"889,67228043606 ",.01)
 ;;67228043606
 ;;9002226.02101,"889,67228043606 ",.02)
 ;;67228043606
 ;;9002226.02101,"889,67253042009 ",.01)
 ;;67253042009
 ;;9002226.02101,"889,67253042009 ",.02)
 ;;67253042009
 ;;9002226.02101,"889,67253042010 ",.01)
 ;;67253042010
 ;;9002226.02101,"889,67253042010 ",.02)
 ;;67253042010
 ;;9002226.02101,"889,67253042011 ",.01)
 ;;67253042011
 ;;9002226.02101,"889,67253042011 ",.02)
 ;;67253042011
 ;;9002226.02101,"889,67253042109 ",.01)
 ;;67253042109
 ;;9002226.02101,"889,67253042109 ",.02)
 ;;67253042109
 ;;9002226.02101,"889,67253042110 ",.01)
 ;;67253042110
 ;;9002226.02101,"889,67253042110 ",.02)
 ;;67253042110
 ;;9002226.02101,"889,67253042111 ",.01)
 ;;67253042111
 ;;9002226.02101,"889,67253042111 ",.02)
 ;;67253042111
 ;;9002226.02101,"889,67253042209 ",.01)
 ;;67253042209
 ;;9002226.02101,"889,67253042209 ",.02)
 ;;67253042209
 ;;9002226.02101,"889,67253042210 ",.01)
 ;;67253042210
 ;;9002226.02101,"889,67253042210 ",.02)
 ;;67253042210
 ;;9002226.02101,"889,67253042211 ",.01)
 ;;67253042211
 ;;9002226.02101,"889,67253042211 ",.02)
 ;;67253042211
 ;;9002226.02101,"889,67263039901 ",.01)
 ;;67263039901
 ;;9002226.02101,"889,67263039901 ",.02)
 ;;67263039901
 ;;9002226.02101,"889,67296012101 ",.01)
 ;;67296012101
 ;;9002226.02101,"889,67296012101 ",.02)
 ;;67296012101
 ;;9002226.02101,"889,67296022901 ",.01)
 ;;67296022901
 ;;9002226.02101,"889,67296022901 ",.02)
 ;;67296022901
 ;;9002226.02101,"889,67296025901 ",.01)
 ;;67296025901
 ;;9002226.02101,"889,67296025901 ",.02)
 ;;67296025901
 ;;9002226.02101,"889,67544004330 ",.01)
 ;;67544004330
 ;;9002226.02101,"889,67544004330 ",.02)
 ;;67544004330
 ;;9002226.02101,"889,67544004332 ",.01)
 ;;67544004332
 ;;9002226.02101,"889,67544004332 ",.02)
 ;;67544004332
 ;;9002226.02101,"889,67544004353 ",.01)
 ;;67544004353
 ;;9002226.02101,"889,67544004353 ",.02)
 ;;67544004353
BGPM5AZE ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON SEP 02, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1050,62037096530 ",.02)
 ;;62037096530
 ;;9002226.02101,"1050,62037096590 ",.01)
 ;;62037096590
 ;;9002226.02101,"1050,62037096590 ",.02)
 ;;62037096590
 ;;9002226.02101,"1050,62175071032 ",.01)
 ;;62175071032
 ;;9002226.02101,"1050,62175071032 ",.02)
 ;;62175071032
 ;;9002226.02101,"1050,62175088832 ",.01)
 ;;62175088832
 ;;9002226.02101,"1050,62175088832 ",.02)
 ;;62175088832
 ;;9002226.02101,"1050,62540565600 ",.01)
 ;;62540565600
 ;;9002226.02101,"1050,62540565600 ",.02)
 ;;62540565600
 ;;9002226.02101,"1050,62540565602 ",.01)
 ;;62540565602
 ;;9002226.02101,"1050,62540565602 ",.02)
 ;;62540565602
 ;;9002226.02101,"1050,62540565603 ",.01)
 ;;62540565603
 ;;9002226.02101,"1050,62540565603 ",.02)
 ;;62540565603
 ;;9002226.02101,"1050,62540565609 ",.01)
 ;;62540565609
 ;;9002226.02101,"1050,62540565609 ",.02)
 ;;62540565609
 ;;9002226.02101,"1050,62540565701 ",.01)
 ;;62540565701
 ;;9002226.02101,"1050,62540565701 ",.02)
 ;;62540565701
 ;;9002226.02101,"1050,62540565702 ",.01)
 ;;62540565702
 ;;9002226.02101,"1050,62540565702 ",.02)
 ;;62540565702
 ;;9002226.02101,"1050,62756025013 ",.01)
 ;;62756025013
 ;;9002226.02101,"1050,62756025013 ",.02)
 ;;62756025013
 ;;9002226.02101,"1050,62756025018 ",.01)
 ;;62756025018
 ;;9002226.02101,"1050,62756025018 ",.02)
 ;;62756025018
 ;;9002226.02101,"1050,62756025083 ",.01)
 ;;62756025083
 ;;9002226.02101,"1050,62756025083 ",.02)
 ;;62756025083
 ;;9002226.02101,"1050,62756025088 ",.01)
 ;;62756025088
 ;;9002226.02101,"1050,62756025088 ",.02)
 ;;62756025088
 ;;9002226.02101,"1050,62756051108 ",.01)
 ;;62756051108
 ;;9002226.02101,"1050,62756051108 ",.02)
 ;;62756051108
 ;;9002226.02101,"1050,62756051118 ",.01)
 ;;62756051118
 ;;9002226.02101,"1050,62756051118 ",.02)
 ;;62756051118
 ;;9002226.02101,"1050,62756051183 ",.01)
 ;;62756051183
 ;;9002226.02101,"1050,62756051183 ",.02)
 ;;62756051183
 ;;9002226.02101,"1050,62756051188 ",.01)
 ;;62756051188
 ;;9002226.02101,"1050,62756051188 ",.02)
 ;;62756051188
 ;;9002226.02101,"1050,63304060028 ",.01)
 ;;63304060028
 ;;9002226.02101,"1050,63304060028 ",.02)
 ;;63304060028
 ;;9002226.02101,"1050,63304060060 ",.01)
 ;;63304060060
 ;;9002226.02101,"1050,63304060060 ",.02)
 ;;63304060060
 ;;9002226.02101,"1050,63304060130 ",.01)
 ;;63304060130
 ;;9002226.02101,"1050,63304060130 ",.02)
 ;;63304060130
 ;;9002226.02101,"1050,63304060190 ",.01)
 ;;63304060190
 ;;9002226.02101,"1050,63304060190 ",.02)
 ;;63304060190
 ;;9002226.02101,"1050,63323012930 ",.01)
 ;;63323012930
 ;;9002226.02101,"1050,63323012930 ",.02)
 ;;63323012930
 ;;9002226.02101,"1050,63323077230 ",.01)
 ;;63323077230
 ;;9002226.02101,"1050,63323077230 ",.02)
 ;;63323077230
 ;;9002226.02101,"1050,63629441301 ",.01)
 ;;63629441301
 ;;9002226.02101,"1050,63629441301 ",.02)
 ;;63629441301
 ;;9002226.02101,"1050,63672001500 ",.01)
 ;;63672001500
 ;;9002226.02101,"1050,63672001500 ",.02)
 ;;63672001500
 ;;9002226.02101,"1050,63739026910 ",.01)
 ;;63739026910
 ;;9002226.02101,"1050,63739026910 ",.02)
 ;;63739026910
 ;;9002226.02101,"1050,65841074306 ",.01)
 ;;65841074306
 ;;9002226.02101,"1050,65841074306 ",.02)
 ;;65841074306
 ;;9002226.02101,"1050,65841074310 ",.01)
 ;;65841074310
 ;;9002226.02101,"1050,65841074310 ",.02)
 ;;65841074310
 ;;9002226.02101,"1050,66267087360 ",.01)
 ;;66267087360
 ;;9002226.02101,"1050,66267087360 ",.02)
 ;;66267087360
 ;;9002226.02101,"1050,66435041530 ",.01)
 ;;66435041530
 ;;9002226.02101,"1050,66435041530 ",.02)
 ;;66435041530
 ;;9002226.02101,"1050,67877017110 ",.01)
 ;;67877017110
 ;;9002226.02101,"1050,67877017110 ",.02)
 ;;67877017110
 ;;9002226.02101,"1050,67877017130 ",.01)
 ;;67877017130
 ;;9002226.02101,"1050,67877017130 ",.02)
 ;;67877017130
 ;;9002226.02101,"1050,68084044811 ",.01)
 ;;68084044811
 ;;9002226.02101,"1050,68084044811 ",.02)
 ;;68084044811
 ;;9002226.02101,"1050,68084044821 ",.01)
 ;;68084044821
 ;;9002226.02101,"1050,68084044821 ",.02)
 ;;68084044821
 ;;9002226.02101,"1050,68382020906 ",.01)
 ;;68382020906
 ;;9002226.02101,"1050,68382020906 ",.02)
 ;;68382020906
 ;;9002226.02101,"1050,68382020910 ",.01)
 ;;68382020910
 ;;9002226.02101,"1050,68382020910 ",.02)
 ;;68382020910
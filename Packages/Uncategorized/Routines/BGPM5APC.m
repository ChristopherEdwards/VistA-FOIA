BGPM5APC ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON AUG 09, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"63629176204 ")
 ;;559
 ;;21,"63629282501 ")
 ;;560
 ;;21,"63629282502 ")
 ;;561
 ;;21,"63629282503 ")
 ;;562
 ;;21,"63739002301 ")
 ;;563
 ;;21,"63739002303 ")
 ;;564
 ;;21,"63739002401 ")
 ;;565
 ;;21,"63739002501 ")
 ;;566
 ;;21,"63739027201 ")
 ;;567
 ;;21,"63739027203 ")
 ;;568
 ;;21,"63739027210 ")
 ;;569
 ;;21,"63739043301 ")
 ;;570
 ;;21,"63739043303 ")
 ;;571
 ;;21,"63739043310 ")
 ;;572
 ;;21,"63739043401 ")
 ;;573
 ;;21,"63739043403 ")
 ;;574
 ;;21,"63874000101 ")
 ;;575
 ;;21,"63874000115 ")
 ;;576
 ;;21,"63874000120 ")
 ;;577
 ;;21,"63874000125 ")
 ;;578
 ;;21,"63874000130 ")
 ;;579
 ;;21,"63874000150 ")
 ;;580
 ;;21,"63874099701 ")
 ;;581
 ;;21,"63874099702 ")
 ;;582
 ;;21,"63874099730 ")
 ;;583
 ;;21,"63981022714 ")
 ;;584
 ;;21,"64092014115 ")
 ;;585
 ;;21,"64092021807 ")
 ;;586
 ;;21,"64125010601 ")
 ;;587
 ;;21,"65162024111 ")
 ;;588
 ;;21,"65162024116 ")
 ;;589
 ;;21,"65162038010 ")
 ;;590
 ;;21,"65162038011 ")
 ;;591
 ;;21,"65162038211 ")
 ;;592
 ;;21,"65437003805 ")
 ;;593
 ;;21,"65437003807 ")
 ;;594
 ;;21,"65437003810 ")
 ;;595
 ;;21,"66267002630 ")
 ;;596
 ;;21,"66267002660 ")
 ;;597
 ;;21,"66267002730 ")
 ;;598
 ;;21,"66267002830 ")
 ;;599
 ;;21,"66553000101 ")
 ;;600
 ;;21,"66553000201 ")
 ;;601
 ;;21,"66553000301 ")
 ;;602
 ;;21,"67046016230 ")
 ;;603
 ;;21,"67046016430 ")
 ;;604
 ;;21,"67046016530 ")
 ;;605
 ;;21,"67046016830 ")
 ;;606
 ;;21,"67228026103 ")
 ;;607
 ;;21,"67228026106 ")
 ;;608
 ;;21,"67544065131 ")
 ;;609
 ;;21,"68115043320 ")
 ;;610
 ;;21,"68391041690 ")
 ;;611
 ;;21,"68752000336 ")
 ;;612
 ;;21,"68788018602 ")
 ;;613
 ;;21,"70030041190 ")
 ;;614
 ;;21,"70253021807 ")
 ;;615
 ;;21,"75942000110 ")
 ;;616
 ;;21,"75942000112 ")
 ;;617
 ;;21,"75942000136 ")
 ;;618
 ;;21,"75942000150 ")
 ;;619
 ;;21,"75942000175 ")
 ;;620
 ;;9002226,998,.01)
 ;;BGPMU IVD ANTIPLATELET NDCS
 ;;9002226,998,.02)
 ;;Antiplatelet NDCs for IVD
 ;;9002226,998,.04)
 ;;@
 ;;9002226,998,.06)
 ;;@
 ;;9002226,998,.08)
 ;;@
 ;;9002226,998,.09)
 ;;@
 ;;9002226,998,.11)
 ;;@
 ;;9002226,998,.12)
 ;;@
 ;;9002226,998,.13)
 ;;@
 ;;9002226,998,.14)
 ;;@
 ;;9002226,998,.15)
 ;;50.67
 ;;9002226,998,.16)
 ;;@
 ;;9002226,998,.17)
 ;;@
 ;;9002226,998,3101)
 ;;@
 ;;9002226.02101,"998,00084004615 ",.01)
 ;;00084004615
 ;;9002226.02101,"998,00084004615 ",.02)
 ;;00084004615
 ;;9002226.02101,"998,00084005701 ",.01)
 ;;00084005701
 ;;9002226.02101,"998,00084005701 ",.02)
 ;;00084005701
 ;;9002226.02101,"998,00084005718 ",.01)
 ;;00084005718
 ;;9002226.02101,"998,00084005718 ",.02)
 ;;00084005718
 ;;9002226.02101,"998,00084007314 ",.01)
 ;;00084007314
 ;;9002226.02101,"998,00084007314 ",.02)
 ;;00084007314
 ;;9002226.02101,"998,00084040803 ",.01)
 ;;00084040803
 ;;9002226.02101,"998,00084040803 ",.02)
 ;;00084040803
 ;;9002226.02101,"998,00084040814 ",.01)
 ;;00084040814
 ;;9002226.02101,"998,00084040814 ",.02)
 ;;00084040814
 ;;9002226.02101,"998,00084040816 ",.01)
 ;;00084040816
 ;;9002226.02101,"998,00084040816 ",.02)
 ;;00084040816
 ;;9002226.02101,"998,00093015401 ",.01)
 ;;00093015401
 ;;9002226.02101,"998,00093015401 ",.02)
 ;;00093015401
 ;;9002226.02101,"998,00093015405 ",.01)
 ;;00093015405
 ;;9002226.02101,"998,00093015405 ",.02)
 ;;00093015405
 ;;9002226.02101,"998,00113025968 ",.01)
 ;;00113025968
 ;;9002226.02101,"998,00113025968 ",.02)
 ;;00113025968
 ;;9002226.02101,"998,00113027468 ",.01)
 ;;00113027468
 ;;9002226.02101,"998,00113027468 ",.02)
 ;;00113027468
 ;;9002226.02101,"998,00113027748 ",.01)
 ;;00113027748
 ;;9002226.02101,"998,00113027748 ",.02)
 ;;00113027748
 ;;9002226.02101,"998,00113041178 ",.01)
 ;;00113041178
 ;;9002226.02101,"998,00113041178 ",.02)
 ;;00113041178
 ;;9002226.02101,"998,00113041187 ",.01)
 ;;00113041187
 ;;9002226.02101,"998,00113041187 ",.02)
 ;;00113041187
 ;;9002226.02101,"998,00113041190 ",.01)
 ;;00113041190
 ;;9002226.02101,"998,00113041190 ",.02)
 ;;00113041190
 ;;9002226.02101,"998,00113041660 ",.01)
 ;;00113041660
 ;;9002226.02101,"998,00113041660 ",.02)
 ;;00113041660
 ;;9002226.02101,"998,00113041678 ",.01)
 ;;00113041678
 ;;9002226.02101,"998,00113041678 ",.02)
 ;;00113041678
 ;;9002226.02101,"998,00113041687 ",.01)
 ;;00113041687
 ;;9002226.02101,"998,00113041687 ",.02)
 ;;00113041687
 ;;9002226.02101,"998,00113041693 ",.01)
 ;;00113041693
 ;;9002226.02101,"998,00113041693 ",.02)
 ;;00113041693
 ;;9002226.02101,"998,00113046708 ",.01)
 ;;00113046708
 ;;9002226.02101,"998,00113046708 ",.02)
 ;;00113046708
 ;;9002226.02101,"998,00113046768 ",.01)
 ;;00113046768
 ;;9002226.02101,"998,00113046768 ",.02)
 ;;00113046768
 ;;9002226.02101,"998,00113053576 ",.01)
 ;;00113053576
 ;;9002226.02101,"998,00113053576 ",.02)
 ;;00113053576
 ;;9002226.02101,"998,00113141182 ",.01)
 ;;00113141182
 ;;9002226.02101,"998,00113141182 ",.02)
 ;;00113141182
 ;;9002226.02101,"998,00122080166 ",.01)
 ;;00122080166
 ;;9002226.02101,"998,00122080166 ",.02)
 ;;00122080166
 ;;9002226.02101,"998,00122082166 ",.01)
 ;;00122082166
 ;;9002226.02101,"998,00122082166 ",.02)
 ;;00122082166
 ;;9002226.02101,"998,00122085066 ",.01)
 ;;00122085066
 ;;9002226.02101,"998,00122085066 ",.02)
 ;;00122085066
 ;;9002226.02101,"998,00122086266 ",.01)
 ;;00122086266
 ;;9002226.02101,"998,00122086266 ",.02)
 ;;00122086266
 ;;9002226.02101,"998,00149009311 ",.01)
 ;;00149009311
 ;;9002226.02101,"998,00149009311 ",.02)
 ;;00149009311
 ;;9002226.02101,"998,00182044401 ",.01)
 ;;00182044401
 ;;9002226.02101,"998,00182044401 ",.02)
 ;;00182044401
 ;;9002226.02101,"998,00182044410 ",.01)
 ;;00182044410
 ;;9002226.02101,"998,00182044410 ",.02)
 ;;00182044410
 ;;9002226.02101,"998,00182044801 ",.01)
 ;;00182044801
 ;;9002226.02101,"998,00182044801 ",.02)
 ;;00182044801
 ;;9002226.02101,"998,00182044810 ",.01)
 ;;00182044810
 ;;9002226.02101,"998,00182044810 ",.02)
 ;;00182044810
 ;;9002226.02101,"998,00182044901 ",.01)
 ;;00182044901
 ;;9002226.02101,"998,00182044901 ",.02)
 ;;00182044901
 ;;9002226.02101,"998,00182105801 ",.01)
 ;;00182105801
 ;;9002226.02101,"998,00182105801 ",.02)
 ;;00182105801
 ;;9002226.02101,"998,00182106105 ",.01)
 ;;00182106105
 ;;9002226.02101,"998,00182106105 ",.02)
 ;;00182106105
 ;;9002226.02101,"998,00182106107 ",.01)
 ;;00182106107
 ;;9002226.02101,"998,00182106107 ",.02)
 ;;00182106107
 ;;9002226.02101,"998,00182142095 ",.01)
 ;;00182142095
 ;;9002226.02101,"998,00182142095 ",.02)
 ;;00182142095
 ;;9002226.02101,"998,00182190901 ",.01)
 ;;00182190901
 ;;9002226.02101,"998,00182190901 ",.02)
 ;;00182190901
 ;;9002226.02101,"998,00182190910 ",.01)
 ;;00182190910
 ;;9002226.02101,"998,00182190910 ",.02)
 ;;00182190910
 ;;9002226.02101,"998,00182821789 ",.01)
 ;;00182821789
 ;;9002226.02101,"998,00182821789 ",.02)
 ;;00182821789
 ;;9002226.02101,"998,00185011505 ",.01)
 ;;00185011505
 ;;9002226.02101,"998,00185011505 ",.02)
 ;;00185011505
 ;;9002226.02101,"998,00185011530 ",.01)
 ;;00185011530
 ;;9002226.02101,"998,00185011530 ",.02)
 ;;00185011530
 ;;9002226.02101,"998,00185011560 ",.01)
 ;;00185011560
 ;;9002226.02101,"998,00185011560 ",.02)
 ;;00185011560
 ;;9002226.02101,"998,00228261303 ",.01)
 ;;00228261303
 ;;9002226.02101,"998,00228261303 ",.02)
 ;;00228261303
 ;;9002226.02101,"998,00228261306 ",.01)
 ;;00228261306
 ;;9002226.02101,"998,00228261306 ",.02)
 ;;00228261306
 ;;9002226.02101,"998,00228261311 ",.01)
 ;;00228261311
 ;;9002226.02101,"998,00228261311 ",.02)
 ;;00228261311
 ;;9002226.02101,"998,00247060601 ",.01)
 ;;00247060601
 ;;9002226.02101,"998,00247060601 ",.02)
 ;;00247060601
 ;;9002226.02101,"998,00247060610 ",.01)
 ;;00247060610
 ;;9002226.02101,"998,00247060610 ",.02)
 ;;00247060610
 ;;9002226.02101,"998,00247060625 ",.01)
 ;;00247060625
 ;;9002226.02101,"998,00247060625 ",.02)
 ;;00247060625
 ;;9002226.02101,"998,00247060640 ",.01)
 ;;00247060640
 ;;9002226.02101,"998,00247060640 ",.02)
 ;;00247060640
 ;;9002226.02101,"998,00247082700 ",.01)
 ;;00247082700
 ;;9002226.02101,"998,00247082700 ",.02)
 ;;00247082700
 ;;9002226.02101,"998,00247082712 ",.01)
 ;;00247082712
 ;;9002226.02101,"998,00247082712 ",.02)
 ;;00247082712
 ;;9002226.02101,"998,00247082725 ",.01)
 ;;00247082725
 ;;9002226.02101,"998,00247082725 ",.02)
 ;;00247082725
 ;;9002226.02101,"998,00247119100 ",.01)
 ;;00247119100
 ;;9002226.02101,"998,00247119100 ",.02)
 ;;00247119100
 ;;9002226.02101,"998,00247119101 ",.01)
 ;;00247119101
 ;;9002226.02101,"998,00247119101 ",.02)
 ;;00247119101
 ;;9002226.02101,"998,00247119103 ",.01)
 ;;00247119103
 ;;9002226.02101,"998,00247119103 ",.02)
 ;;00247119103
 ;;9002226.02101,"998,00247119124 ",.01)
 ;;00247119124
 ;;9002226.02101,"998,00247119124 ",.02)
 ;;00247119124
 ;;9002226.02101,"998,00247119130 ",.01)
 ;;00247119130
 ;;9002226.02101,"998,00247119130 ",.02)
 ;;00247119130
 ;;9002226.02101,"998,00247127530 ",.01)
 ;;00247127530
 ;;9002226.02101,"998,00247127530 ",.02)
 ;;00247127530
 ;;9002226.02101,"998,00247127560 ",.01)
 ;;00247127560
 ;;9002226.02101,"998,00247127560 ",.02)
 ;;00247127560
 ;;9002226.02101,"998,00247215000 ",.01)
 ;;00247215000
 ;;9002226.02101,"998,00247215000 ",.02)
 ;;00247215000
 ;;9002226.02101,"998,00247215030 ",.01)
 ;;00247215030
 ;;9002226.02101,"998,00247215030 ",.02)
 ;;00247215030
 ;;9002226.02101,"998,00280200051 ",.01)
 ;;00280200051
 ;;9002226.02101,"998,00280200051 ",.02)
 ;;00280200051
 ;;9002226.02101,"998,00280210012 ",.01)
 ;;00280210012
 ;;9002226.02101,"998,00280210012 ",.02)
 ;;00280210012
 ;;9002226.02101,"998,00280210032 ",.01)
 ;;00280210032
 ;;9002226.02101,"998,00280210032 ",.02)
 ;;00280210032
 ;;9002226.02101,"998,00280210040 ",.01)
 ;;00280210040
 ;;9002226.02101,"998,00280210040 ",.02)
 ;;00280210040
 ;;9002226.02101,"998,00280211010 ",.01)
 ;;00280211010
 ;;9002226.02101,"998,00280211010 ",.02)
 ;;00280211010
 ;;9002226.02101,"998,00280261001 ",.01)
 ;;00280261001
 ;;9002226.02101,"998,00280261001 ",.02)
 ;;00280261001
 ;;9002226.02101,"998,00280261020 ",.01)
 ;;00280261020
 ;;9002226.02101,"998,00280261020 ",.02)
 ;;00280261020
 ;;9002226.02101,"998,00280261040 ",.01)
 ;;00280261040
 ;;9002226.02101,"998,00280261040 ",.02)
 ;;00280261040
 ;;9002226.02101,"998,00280261080 ",.01)
 ;;00280261080
 ;;9002226.02101,"998,00280261080 ",.02)
 ;;00280261080
 ;;9002226.02101,"998,00295123601 ",.01)
 ;;00295123601
 ;;9002226.02101,"998,00295123601 ",.02)
 ;;00295123601
 ;;9002226.02101,"998,00295123625 ",.01)
 ;;00295123625
 ;;9002226.02101,"998,00295123625 ",.02)
 ;;00295123625
 ;;9002226.02101,"998,00363015712 ",.01)
 ;;00363015712
 ;;9002226.02101,"998,00363015712 ",.02)
 ;;00363015712
 ;;9002226.02101,"998,00363015714 ",.01)
 ;;00363015714
 ;;9002226.02101,"998,00363015714 ",.02)
 ;;00363015714
 ;;9002226.02101,"998,00363015716 ",.01)
 ;;00363015716
 ;;9002226.02101,"998,00363015716 ",.02)
 ;;00363015716
 ;;9002226.02101,"998,00363015717 ",.01)
 ;;00363015717
 ;;9002226.02101,"998,00363015717 ",.02)
 ;;00363015717
 ;;9002226.02101,"998,00363018330 ",.01)
 ;;00363018330
 ;;9002226.02101,"998,00363018330 ",.02)
 ;;00363018330
 ;;9002226.02101,"998,00363021807 ",.01)
 ;;00363021807
 ;;9002226.02101,"998,00363021807 ",.02)
 ;;00363021807
 ;;9002226.02101,"998,00363022713 ",.01)
 ;;00363022713
 ;;9002226.02101,"998,00363022713 ",.02)
 ;;00363022713
 ;;9002226.02101,"998,00363022714 ",.01)
 ;;00363022714
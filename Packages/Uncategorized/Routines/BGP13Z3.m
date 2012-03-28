BGP13Z3 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"57866-9056-05 ")
 ;;383
 ;;21,"57866-9056-06 ")
 ;;384
 ;;21,"57866-9059-01 ")
 ;;385
 ;;21,"58016-0058-00 ")
 ;;946
 ;;21,"58016-0058-30 ")
 ;;947
 ;;21,"58016-0058-60 ")
 ;;948
 ;;21,"58016-0058-90 ")
 ;;949
 ;;21,"58016-0213-00 ")
 ;;386
 ;;21,"58016-0213-10 ")
 ;;387
 ;;21,"58016-0213-30 ")
 ;;388
 ;;21,"58016-0213-60 ")
 ;;389
 ;;21,"58016-0411-00 ")
 ;;1071
 ;;21,"58016-0411-02 ")
 ;;1002
 ;;21,"58016-0411-30 ")
 ;;1003
 ;;21,"58016-0411-60 ")
 ;;1004
 ;;21,"58016-0411-90 ")
 ;;1005
 ;;21,"58016-0457-00 ")
 ;;643
 ;;21,"58016-0457-10 ")
 ;;644
 ;;21,"58016-0457-30 ")
 ;;645
 ;;21,"58016-0457-60 ")
 ;;646
 ;;21,"58016-0466-00 ")
 ;;125
 ;;21,"58016-0466-30 ")
 ;;126
 ;;21,"58016-0466-60 ")
 ;;127
 ;;21,"58016-0466-90 ")
 ;;128
 ;;21,"58016-0536-00 ")
 ;;647
 ;;21,"58016-0536-30 ")
 ;;648
 ;;21,"58016-0536-60 ")
 ;;649
 ;;21,"58016-0536-90 ")
 ;;650
 ;;21,"58016-0553-00 ")
 ;;129
 ;;21,"58016-0553-10 ")
 ;;130
 ;;21,"58016-0553-30 ")
 ;;131
 ;;21,"58016-0553-60 ")
 ;;132
 ;;21,"58016-0772-00 ")
 ;;390
 ;;21,"58016-0772-30 ")
 ;;391
 ;;21,"58016-0772-60 ")
 ;;392
 ;;21,"58016-0772-90 ")
 ;;393
 ;;21,"58016-0883-00 ")
 ;;778
 ;;21,"58016-0883-30 ")
 ;;779
 ;;21,"58016-0883-60 ")
 ;;780
 ;;21,"58016-0883-90 ")
 ;;781
 ;;21,"58864-0015-28 ")
 ;;394
 ;;21,"58864-0015-30 ")
 ;;395
 ;;21,"58864-0015-60 ")
 ;;396
 ;;21,"58864-0015-90 ")
 ;;397
 ;;21,"58864-0507-30 ")
 ;;782
 ;;21,"58864-0693-30 ")
 ;;133
 ;;21,"58864-0693-60 ")
 ;;134
 ;;21,"58864-0711-30 ")
 ;;988
 ;;21,"58864-0789-30 ")
 ;;651
 ;;21,"58864-0851-30 ")
 ;;783
 ;;21,"58864-0952-30 ")
 ;;989
 ;;21,"58864-0953-30 ")
 ;;1006
 ;;21,"59630-0574-60 ")
 ;;863
 ;;21,"59630-0575-60 ")
 ;;858
 ;;21,"59762-2330-07 ")
 ;;953
 ;;21,"59762-2331-06 ")
 ;;996
 ;;21,"59762-2331-08 ")
 ;;997
 ;;21,"59762-2332-06 ")
 ;;1072
 ;;21,"59762-2332-08 ")
 ;;1073
 ;;21,"59762-4320-00 ")
 ;;398
 ;;21,"59762-4320-02 ")
 ;;399
 ;;21,"59762-4320-06 ")
 ;;400
 ;;21,"59762-4321-00 ")
 ;;652
 ;;21,"59762-4321-02 ")
 ;;653
 ;;21,"59762-4321-06 ")
 ;;654
 ;;21,"59762-4322-00 ")
 ;;135
 ;;21,"59762-4322-02 ")
 ;;136
 ;;21,"59762-4322-06 ")
 ;;137
 ;;21,"60429-0722-18 ")
 ;;138
 ;;21,"60429-0722-60 ")
 ;;139
 ;;21,"60429-0723-12 ")
 ;;401
 ;;21,"60429-0723-18 ")
 ;;402
 ;;21,"60429-0723-60 ")
 ;;403
 ;;21,"60429-0724-18 ")
 ;;655
 ;;21,"60429-0724-60 ")
 ;;656
 ;;21,"60429-0725-05 ")
 ;;784
 ;;21,"60429-0725-18 ")
 ;;785
 ;;21,"60429-0725-60 ")
 ;;786
 ;;21,"60429-0725-90 ")
 ;;787
 ;;21,"60505-0190-00 ")
 ;;404
 ;;21,"60505-0190-01 ")
 ;;405
 ;;21,"60505-0190-04 ")
 ;;406
 ;;21,"60505-0190-08 ")
 ;;407
 ;;21,"60505-0191-00 ")
 ;;657
 ;;21,"60505-0191-01 ")
 ;;658
 ;;21,"60505-0191-04 ")
 ;;659
 ;;21,"60505-0191-08 ")
 ;;660
 ;;21,"60505-0192-00 ")
 ;;140
 ;;21,"60505-0192-01 ")
 ;;141
 ;;21,"60505-0192-04 ")
 ;;142
 ;;21,"60505-0192-08 ")
 ;;143
 ;;21,"60505-0260-01 ")
 ;;788
 ;;21,"60505-0260-02 ")
 ;;789
 ;;21,"60505-0260-07 ")
 ;;790
 ;;21,"60505-1329-01 ")
 ;;846
 ;;21,"62022-0574-60 ")
 ;;864
 ;;21,"62022-0575-60 ")
 ;;859
 ;;21,"62037-0571-01 ")
 ;;791
 ;;21,"62037-0571-10 ")
 ;;792
 ;;21,"62037-0577-01 ")
 ;;847
 ;;21,"62037-0577-10 ")
 ;;848
 ;;21,"62037-0674-01 ")
 ;;408
 ;;21,"62037-0674-10 ")
 ;;409
 ;;21,"62037-0675-01 ")
 ;;661
 ;;21,"62037-0675-10 ")
 ;;662
 ;;21,"62037-0676-01 ")
 ;;144
 ;;21,"62037-0676-10 ")
 ;;145
 ;;21,"62584-0182-08 ")
 ;;410
 ;;21,"62584-0259-01 ")
 ;;411
 ;;21,"62584-0259-11 ")
 ;;412
 ;;21,"62584-0259-80 ")
 ;;413
 ;;21,"62584-0259-85 ")
 ;;414
 ;;21,"62584-0332-01 ")
 ;;663
 ;;21,"62584-0332-11 ")
 ;;664
 ;;21,"62584-0452-01 ")
 ;;146
 ;;21,"62584-0452-11 ")
 ;;147
 ;;21,"62584-0452-80 ")
 ;;148
 ;;21,"62584-0452-85 ")
 ;;149
 ;;21,"62682-5005-06 ")
 ;;415
 ;;21,"62756-0142-01 ")
 ;;793
 ;;21,"62756-0142-02 ")
 ;;794
 ;;21,"62756-0143-01 ")
 ;;849
 ;;21,"63304-0206-01 ")
 ;;3
 ;;21,"63304-0206-02 ")
 ;;4
 ;;21,"63304-0767-01 ")
 ;;850
 ;;21,"63304-0860-01 ")
 ;;795
 ;;21,"63304-0860-05 ")
 ;;796
 ;;21,"63304-0860-30 ")
 ;;797
 ;;21,"63629-1392-01 ")
 ;;998
 ;;21,"63629-1392-02 ")
 ;;999
 ;;21,"63629-1392-03 ")
 ;;1000
 ;;21,"63629-1395-01 ")
 ;;416
 ;;21,"63629-1395-02 ")
 ;;417
 ;;21,"63629-1395-03 ")
 ;;418
 ;;21,"63629-1396-01 ")
 ;;665
 ;;21,"63629-1396-02 ")
 ;;666
 ;;21,"63629-1397-01 ")
 ;;150
 ;;21,"63629-1397-02 ")
 ;;211
 ;;21,"63629-1397-03 ")
 ;;151
 ;;21,"63629-1397-04 ")
 ;;212
 ;;21,"63629-1397-05 ")
 ;;213
 ;;21,"63629-2793-01 ")
 ;;1074
 ;;21,"63629-2793-03 ")
 ;;1007
 ;;21,"63629-2793-04 ")
 ;;1075
 ;;21,"63629-2793-05 ")
 ;;1076
 ;;21,"63629-2883-01 ")
 ;;798
 ;;21,"63629-2883-02 ")
 ;;827
 ;;21,"63629-2883-03 ")
 ;;828
 ;;21,"63629-3998-01 ")
 ;;954
 ;;21,"63739-0299-10 ")
 ;;419
 ;;21,"63739-0300-10 ")
 ;;667
 ;;21,"63739-0301-10 ")
 ;;152
 ;;21,"63874-0501-01 ")
 ;;420
 ;;21,"63874-0501-04 ")
 ;;421
 ;;21,"63874-0501-10 ")
 ;;422
 ;;21,"63874-0501-14 ")
 ;;423
 ;;21,"63874-0501-20 ")
 ;;424
 ;;21,"63874-0501-24 ")
 ;;425
 ;;21,"63874-0501-28 ")
 ;;426
 ;;21,"63874-0501-30 ")
 ;;427
 ;;21,"63874-0501-60 ")
 ;;428
 ;;21,"63874-0501-90 ")
 ;;429
 ;;21,"63874-0635-01 ")
 ;;668
 ;;21,"63874-0635-10 ")
 ;;669
 ;;21,"63874-0635-20 ")
 ;;670
 ;;21,"63874-0635-28 ")
 ;;671
 ;;21,"63874-0635-30 ")
 ;;672
 ;;21,"63874-0635-60 ")
 ;;673
 ;;21,"63874-0635-90 ")
 ;;674
 ;;21,"63874-0974-01 ")
 ;;153
 ;;21,"63874-0974-30 ")
 ;;154
 ;;21,"63874-0974-60 ")
 ;;155
 ;;21,"64679-0528-04 ")
 ;;430
 ;;21,"64679-0528-05 ")
 ;;431
 ;;21,"64679-0529-04 ")
 ;;675
 ;;21,"64679-0529-05 ")
 ;;676
 ;;21,"64679-0530-04 ")
 ;;156
 ;;21,"64679-0530-05 ")
 ;;157
 ;;21,"64764-0155-18 ")
 ;;1082
 ;;21,"64764-0155-60 ")
 ;;1083
 ;;21,"64764-0158-18 ")
 ;;1088
 ;;21,"64764-0158-60 ")
 ;;1089
 ;;21,"64764-0310-30 ")
 ;;1091
 ;;21,"64764-0510-30 ")
 ;;1090
 ;;21,"65162-0174-10 ")
 ;;677
 ;;21,"65162-0174-11 ")
 ;;720
 ;;21,"65162-0174-50 ")
 ;;678
 ;;21,"65162-0175-10 ")
 ;;432
 ;;21,"65162-0175-11 ")
 ;;523
 ;;21,"65162-0175-50 ")
 ;;433
 ;;21,"65162-0177-10 ")
 ;;799
 ;;21,"65162-0177-11 ")
 ;;214
 ;;21,"65162-0177-50 ")
 ;;800
 ;;21,"65162-0179-10 ")
 ;;851
 ;;21,"65243-0239-09 ")
 ;;679
 ;;21,"65243-0239-18 ")
 ;;680
 ;;21,"65243-0239-27 ")
 ;;681
 ;;21,"65243-0288-06 ")
 ;;434
 ;;21,"65243-0288-09 ")
 ;;435
 ;;21,"65243-0288-12 ")
 ;;436
 ;;21,"65243-0288-18 ")
 ;;437
 ;;21,"65243-0289-06 ")
 ;;158
 ;;21,"65243-0289-09 ")
 ;;159
 ;;21,"65243-0289-12 ")
 ;;160
 ;;21,"65243-0289-18 ")
 ;;161
 ;;21,"65243-0371-06 ")
 ;;162
 ;;21,"65243-0371-09 ")
 ;;163
 ;;21,"65243-0372-06 ")
 ;;438
 ;;21,"65243-0372-09 ")
 ;;439
 ;;21,"65243-0372-18 ")
 ;;440
 ;;21,"65243-0373-09 ")
 ;;682
 ;;21,"65862-0008-01 ")
 ;;441
 ;;21,"65862-0008-05 ")
 ;;442
 ;;21,"65862-0008-90 ")
 ;;443
 ;;21,"65862-0009-01 ")
 ;;683
 ;;21,"65862-0009-05 ")
 ;;684
 ;;21,"65862-0009-90 ")
 ;;685
 ;;21,"65862-0010-01 ")
 ;;164
 ;;21,"65862-0010-05 ")
 ;;165
 ;;21,"65862-0010-90 ")
 ;;166
 ;;21,"65862-0080-01 ")
 ;;950
 ;;21,"65862-0080-05 ")
 ;;955
 ;;21,"65862-0081-01 ")
 ;;990
 ;;21,"65862-0081-05 ")
 ;;1001
 ;;21,"65862-0082-01 ")
 ;;1008
 ;;21,"65862-0082-05 ")
 ;;1077
 ;;21,"66116-0233-30 ")
 ;;991
 ;;21,"66116-0282-60 ")
 ;;444
 ;;21,"66116-0293-30 ")
 ;;167
 ;;21,"66116-0454-30 ")
 ;;445
 ;;21,"66116-0695-60 ")
 ;;446
 ;;21,"66267-0493-14 ")
 ;;447
 ;;21,"66267-0493-30 ")
 ;;448
 ;;21,"66267-0493-60 ")
 ;;449
 ;;21,"66267-0493-90 ")
 ;;450
 ;;21,"66267-0493-91 ")
 ;;451
 ;;21,"66267-0493-92 ")
 ;;452
 ;;21,"66267-0493-93 ")
 ;;453
 ;;21,"66336-0270-30 ")
 ;;801
 ;;21,"66336-0270-60 ")
 ;;802
 ;;21,"66336-0270-90 ")
 ;;803
 ;;21,"66336-0292-60 ")
 ;;804
 ;;21,"66336-0319-30 ")
 ;;1009
 ;;21,"66336-0358-30 ")
 ;;168
 ;;21,"66336-0358-60 ")
 ;;169
 ;;21,"66336-0358-90 ")
 ;;170
 ;;21,"66336-0784-30 ")
 ;;1010
 ;;21,"66336-0784-60 ")
 ;;1011
 ;;21,"66336-0784-90 ")
 ;;1012
 ;;21,"66336-0883-30 ")
 ;;686
 ;;21,"66336-0883-60 ")
 ;;687
 ;;21,"66336-0884-14 ")
 ;;454
 ;;21,"66336-0884-28 ")
 ;;455
 ;;21,"66336-0884-30 ")
 ;;456
 ;;21,"66336-0884-60 ")
 ;;457
 ;;21,"66336-0884-62 ")
 ;;458
 ;;21,"66336-0884-90 ")
 ;;459
 ;;21,"66689-0011-60 ")
 ;;460
 ;;21,"67544-0047-30 ")
 ;;461
 ;;21,"67544-0047-53 ")
 ;;462
 ;;21,"67544-0047-60 ")
 ;;463
 ;;21,"67544-0047-70 ")
 ;;464
 ;;21,"67544-0047-75 ")
 ;;465
 ;;21,"67544-0047-80 ")
 ;;466
 ;;21,"67544-0047-90 ")
 ;;467
 ;;21,"67544-0047-92 ")
 ;;468
 ;;21,"67544-0047-94 ")
 ;;469
 ;;21,"67544-0047-96 ")
 ;;470
 ;;21,"67544-0107-53 ")
 ;;688
 ;;21,"67544-0107-60 ")
 ;;689
 ;;21,"67544-0107-80 ")
 ;;690
 ;;21,"67544-0107-92 ")
 ;;691
 ;;21,"67544-0163-30 ")
 ;;171
 ;;21,"67544-0163-45 ")
 ;;172
 ;;21,"67544-0163-53 ")
 ;;173
 ;;21,"67544-0163-60 ")
 ;;174
 ;;21,"67544-0163-80 ")
 ;;175
 ;;21,"67544-0296-70 ")
 ;;1013
 ;;21,"67544-0364-70 ")
 ;;1014
 ;;21,"67544-0417-70 ")
 ;;1015
 ;;21,"67544-0421-60 ")
 ;;692
 ;;21,"67544-0421-80 ")
 ;;693
 ;;21,"67544-0421-92 ")
 ;;694
 ;;21,"67544-0422-30 ")
 ;;805
 ;;21,"67544-0422-53 ")
 ;;806
 ;;21,"67544-0422-60 ")
 ;;807
 ;;21,"67544-0422-70 ")
 ;;808
 ;;21,"67544-0422-75 ")
 ;;809
 ;;21,"67544-0422-80 ")
 ;;810
 ;;21,"67544-0422-90 ")
 ;;811
 ;;21,"67544-0422-92 ")
 ;;812
 ;;21,"67544-0422-94 ")
 ;;813
 ;;21,"67544-0422-96 ")
 ;;814
 ;;21,"67544-0424-30 ")
 ;;471
 ;;21,"67544-0424-53 ")
 ;;472
 ;;21,"67544-0424-60 ")
 ;;473
 ;;21,"67544-0424-70 ")
 ;;474
 ;;21,"67544-0424-75 ")
 ;;475
 ;;21,"67544-0424-80 ")
 ;;476
 ;;21,"67544-0424-90 ")
 ;;477
 ;;21,"67544-0424-92 ")
 ;;478
 ;;21,"67544-0424-94 ")
 ;;479
 ;;21,"67544-0424-96 ")
 ;;480
 ;;21,"67544-0428-45 ")
 ;;176
 ;;21,"67544-0428-53 ")
 ;;177
 ;;21,"67544-0428-60 ")
 ;;178
 ;;21,"67544-0428-73 ")
 ;;179
 ;;21,"67544-0428-80 ")
 ;;180
 ;;21,"67544-0486-53 ")
 ;;481
 ;;21,"67544-0511-70 ")
 ;;1016
 ;;21,"67544-0596-53 ")
 ;;482
 ;;21,"67544-0596-60 ")
 ;;483
 ;;21,"67544-0596-80 ")
 ;;484
 ;;21,"67544-0596-96 ")
 ;;485
 ;;21,"67544-1081-80 ")
 ;;815
 ;;21,"67544-1081-94 ")
 ;;816
 ;;21,"67544-1129-70 ")
 ;;1017
 ;;21,"67544-1198-53 ")
 ;;181
 ;;21,"67544-1198-60 ")
 ;;182
 ;;21,"67544-1198-80 ")
 ;;183
 ;;21,"67544-1216-53 ")
 ;;695
 ;;21,"67544-1216-60 ")
 ;;696
 ;;21,"67544-1216-80 ")
 ;;697
 ;;21,"67544-1216-92 ")
 ;;698
 ;;21,"67544-1379-80 ")
 ;;486
 ;;21,"67544-1383-60 ")
 ;;699
 ;;21,"67544-1383-80 ")
 ;;700
 ;;21,"67767-0115-01 ")
 ;;817
 ;;21,"68071-0028-30 ")
 ;;1078
 ;;21,"68071-0028-60 ")
 ;;1079
 ;;21,"68084-0072-01 ")
 ;;829
 ;;21,"68084-0072-11 ")
 ;;830
 ;;21,"68084-0136-01 ")
 ;;951
 ;;21,"68084-0136-11 ")
 ;;952
 ;;21,"68084-0137-01 ")
 ;;992
 ;;21,"68084-0137-11 ")
 ;;993
 ;;21,"68084-0138-01 ")
 ;;1018
 ;;21,"68084-0138-11 ")
 ;;1019
 ;;21,"68115-0158-30 ")
 ;;994
 ;;21,"68115-0158-60 ")
 ;;995
 ;;21,"68115-0159-30 ")
 ;;1020
 ;;21,"68115-0159-60 ")
 ;;1021
 ;;21,"68115-0230-30 ")
 ;;184
 ;;21,"68115-0230-60 ")
 ;;185
 ;;21,"68115-0231-00 ")
 ;;487
 ;;21,"68115-0231-30 ")
 ;;488
 ;;21,"68115-0231-60 ")
 ;;489
 ;;21,"68115-0231-90 ")
 ;;490
 ;;21,"68115-0232-30 ")
 ;;701
 ;;21,"68115-0232-45 ")
 ;;702
 ;;21,"68115-0232-60 ")
 ;;703
 ;;21,"68115-0891-60 ")
 ;;1103
 ;;21,"68258-1016-01 ")
 ;;491
 ;;21,"68258-1077-01 ")
 ;;186
 ;;21,"68382-0028-01 ")
 ;;492
 ;;21,"68382-0028-05 ")
 ;;493
 ;;21,"68382-0028-10 ")
 ;;494
 ;;21,"68382-0029-01 ")
 ;;704
 ;;21,"68382-0029-05 ")
 ;;705
 ;;21,"68382-0029-10 ")
 ;;706
 ;;21,"68382-0030-01 ")
 ;;187
 ;;21,"68382-0030-05 ")
 ;;188
 ;;21,"68382-0030-10 ")
 ;;189
 ;;21,"68462-0159-01 ")
 ;;495
 ;;21,"68462-0159-05 ")
 ;;496
 ;;21,"68462-0159-10 ")
 ;;497
 ;;21,"68462-0159-18 ")
 ;;498
 ;;21,"68462-0159-90 ")
 ;;499
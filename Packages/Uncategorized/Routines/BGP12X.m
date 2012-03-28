BGP12X ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;;BGP HEDIS AMPHETAMINE NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS AMPHETAMINE NDC
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
 ;;21,"00007-3512-20 ")
 ;;246
 ;;21,"00007-3512-59 ")
 ;;247
 ;;21,"00007-3513-20 ")
 ;;248
 ;;21,"00007-3513-59 ")
 ;;249
 ;;21,"00007-3514-20 ")
 ;;250
 ;;21,"00007-3514-59 ")
 ;;251
 ;;21,"00007-3519-20 ")
 ;;244
 ;;21,"00009-0024-01 ")
 ;;278
 ;;21,"00009-0024-02 ")
 ;;279
 ;;21,"00068-0697-61 ")
 ;;1080
 ;;21,"00068-0698-61 ")
 ;;1081
 ;;21,"00068-0698-62 ")
 ;;1082
 ;;21,"00078-0370-05 ")
 ;;1059
 ;;21,"00078-0371-05 ")
 ;;1060
 ;;21,"00078-0372-05 ")
 ;;1061
 ;;21,"00078-0380-05 ")
 ;;394
 ;;21,"00078-0381-05 ")
 ;;395
 ;;21,"00078-0382-05 ")
 ;;396
 ;;21,"00078-0424-05 ")
 ;;1062
 ;;21,"00078-0430-05 ")
 ;;397
 ;;21,"00078-0431-05 ")
 ;;398
 ;;21,"00078-0432-05 ")
 ;;399
 ;;21,"00078-0433-05 ")
 ;;400
 ;;21,"00078-0434-05 ")
 ;;401
 ;;21,"00078-0439-05 ")
 ;;1048
 ;;21,"00078-0440-05 ")
 ;;1049
 ;;21,"00078-0441-05 ")
 ;;1050
 ;;21,"00078-0442-05 ")
 ;;1074
 ;;21,"00078-0493-05 ")
 ;;402
 ;;21,"00083-0003-30 ")
 ;;1051
 ;;21,"00083-0007-30 ")
 ;;1052
 ;;21,"00083-0016-30 ")
 ;;1075
 ;;21,"00083-0034-30 ")
 ;;1053
 ;;21,"00093-5275-01 ")
 ;;257
 ;;21,"00093-5276-01 ")
 ;;258
 ;;21,"00093-5277-01 ")
 ;;259
 ;;21,"00115-1205-01 ")
 ;;149
 ;;21,"00115-1328-01 ")
 ;;134
 ;;21,"00115-1329-01 ")
 ;;135
 ;;21,"00115-1330-01 ")
 ;;136
 ;;21,"00115-1331-01 ")
 ;;137
 ;;21,"00115-1332-01 ")
 ;;138
 ;;21,"00115-1333-01 ")
 ;;139
 ;;21,"00144-0740-01 ")
 ;;696
 ;;21,"00147-0102-20 ")
 ;;697
 ;;21,"00147-0109-10 ")
 ;;294
 ;;21,"00147-0109-20 ")
 ;;295
 ;;21,"00147-0135-20 ")
 ;;562
 ;;21,"00147-0136-10 ")
 ;;698
 ;;21,"00147-0136-20 ")
 ;;699
 ;;21,"00147-0198-10 ")
 ;;700
 ;;21,"00147-0198-20 ")
 ;;701
 ;;21,"00147-0201-10 ")
 ;;702
 ;;21,"00147-0201-20 ")
 ;;703
 ;;21,"00147-0202-10 ")
 ;;704
 ;;21,"00147-0202-20 ")
 ;;705
 ;;21,"00147-0231-10 ")
 ;;706
 ;;21,"00147-0231-20 ")
 ;;707
 ;;21,"00147-0232-10 ")
 ;;708
 ;;21,"00147-0232-20 ")
 ;;709
 ;;21,"00147-0234-10 ")
 ;;710
 ;;21,"00147-0234-20 ")
 ;;711
 ;;21,"00147-0235-10 ")
 ;;712
 ;;21,"00147-0235-20 ")
 ;;713
 ;;21,"00147-0237-10 ")
 ;;296
 ;;21,"00147-0237-20 ")
 ;;297
 ;;21,"00147-0248-10 ")
 ;;714
 ;;21,"00147-0248-20 ")
 ;;715
 ;;21,"00147-0249-10 ")
 ;;716
 ;;21,"00147-0249-20 ")
 ;;717
 ;;21,"00147-0251-10 ")
 ;;718
 ;;21,"00147-0251-20 ")
 ;;719
 ;;21,"00147-0253-10 ")
 ;;720
 ;;21,"00147-0253-20 ")
 ;;721
 ;;21,"00147-0254-10 ")
 ;;722
 ;;21,"00147-0254-20 ")
 ;;723
 ;;21,"00182-0205-01 ")
 ;;724
 ;;21,"00182-0205-10 ")
 ;;725
 ;;21,"00182-0870-01 ")
 ;;353
 ;;21,"00182-0870-02 ")
 ;;354
 ;;21,"00182-1066-01 ")
 ;;460
 ;;21,"00182-1066-10 ")
 ;;461
 ;;21,"00182-1173-01 ")
 ;;462
 ;;21,"00182-1173-10 ")
 ;;463
 ;;21,"00182-1174-01 ")
 ;;464
 ;;21,"00182-1436-01 ")
 ;;298
 ;;21,"00182-9147-01 ")
 ;;540
 ;;21,"00185-0084-01 ")
 ;;70
 ;;21,"00185-0111-01 ")
 ;;71
 ;;21,"00185-0401-01 ")
 ;;72
 ;;21,"00185-0404-01 ")
 ;;73
 ;;21,"00185-0644-01 ")
 ;;726
 ;;21,"00185-0644-10 ")
 ;;727
 ;;21,"00185-0647-01 ")
 ;;728
 ;;21,"00185-0647-10 ")
 ;;729
 ;;21,"00185-4057-01 ")
 ;;563
 ;;21,"00185-4057-10 ")
 ;;564
 ;;21,"00185-5000-01 ")
 ;;730
 ;;21,"00185-5000-10 ")
 ;;731
 ;;21,"00185-5254-01 ")
 ;;672
 ;;21,"00185-5254-10 ")
 ;;673
 ;;21,"00187-0497-01 ")
 ;;170
 ;;21,"00187-0497-02 ")
 ;;171
 ;;21,"00187-0498-01 ")
 ;;181
 ;;21,"00187-0498-02 ")
 ;;182
 ;;21,"00228-2089-10 ")
 ;;541
 ;;21,"00228-2091-10 ")
 ;;465
 ;;21,"00228-2092-10 ")
 ;;466
 ;;21,"00228-3016-11 ")
 ;;732
 ;;21,"00228-3016-96 ")
 ;;733
 ;;21,"00247-0625-00 ")
 ;;734
 ;;21,"00247-0625-07 ")
 ;;735
 ;;21,"00247-0625-14 ")
 ;;736
 ;;21,"00247-0625-15 ")
 ;;737
 ;;21,"00247-0625-28 ")
 ;;738
 ;;21,"00247-0625-30 ")
 ;;739
 ;;21,"00247-0625-33 ")
 ;;740
 ;;21,"00247-0948-07 ")
 ;;172
 ;;21,"00247-0948-14 ")
 ;;173
 ;;21,"00247-0948-28 ")
 ;;174
 ;;21,"00247-0948-30 ")
 ;;175
 ;;21,"00247-1315-14 ")
 ;;54
 ;;21,"00247-1316-30 ")
 ;;55
 ;;21,"00247-1355-30 ")
 ;;741
 ;;21,"00247-1492-07 ")
 ;;742
 ;;21,"00247-1492-14 ")
 ;;743
 ;;21,"00247-1492-28 ")
 ;;744
 ;;21,"00247-1492-30 ")
 ;;745
 ;;21,"00247-1493-07 ")
 ;;746
 ;;21,"00247-1493-14 ")
 ;;747
 ;;21,"00247-1493-28 ")
 ;;748
 ;;21,"00247-1493-30 ")
 ;;749
 ;;21,"00247-1494-30 ")
 ;;355
 ;;21,"00247-1495-21 ")
 ;;299
 ;;21,"00247-1495-30 ")
 ;;300
 ;;21,"00247-1717-30 ")
 ;;280
 ;;21,"00247-1718-30 ")
 ;;750
 ;;21,"00247-1719-30 ")
 ;;1046
 ;;21,"00247-1719-46 ")
 ;;1047
 ;;21,"00247-1896-00 ")
 ;;467
 ;;21,"00247-1896-30 ")
 ;;468
 ;;21,"00247-1896-60 ")
 ;;469
 ;;21,"00247-1896-77 ")
 ;;470
 ;;21,"00247-1896-90 ")
 ;;471
 ;;21,"00349-8834-01 ")
 ;;542
 ;;21,"00378-8115-01 ")
 ;;436
 ;;21,"00406-1121-01 ")
 ;;438
 ;;21,"00406-1121-10 ")
 ;;439
 ;;21,"00406-1122-01 ")
 ;;440
 ;;21,"00406-1122-10 ")
 ;;441
 ;;21,"00406-1124-01 ")
 ;;442
 ;;21,"00406-1124-10 ")
 ;;443
 ;;21,"00406-1423-01 ")
 ;;458
 ;;21,"00406-1451-01 ")
 ;;459
 ;;21,"00406-8884-01 ")
 ;;74
 ;;21,"00406-8885-01 ")
 ;;75
 ;;21,"00406-8886-01 ")
 ;;76
 ;;21,"00406-8891-01 ")
 ;;77
 ;;21,"00406-8892-01 ")
 ;;78
 ;;21,"00406-8893-01 ")
 ;;79
 ;;21,"00406-8894-01 ")
 ;;80
 ;;21,"00406-8958-01 ")
 ;;260
 ;;21,"00406-8959-01 ")
 ;;261
 ;;21,"00406-8960-01 ")
 ;;262
 ;;21,"00406-8961-01 ")
 ;;263
 ;;21,"00406-8962-01 ")
 ;;264
 ;;21,"00463-2043-10 ")
 ;;560
 ;;21,"00463-3029-10 ")
 ;;561
 ;;21,"00463-3036-10 ")
 ;;695
 ;;21,"00463-7500-01 ")
 ;;565
 ;;21,"00463-7500-10 ")
 ;;566
 ;;21,"00463-8000-01 ")
 ;;567
 ;;21,"00463-8000-10 ")
 ;;568
 ;;21,"00527-0597-01 ")
 ;;751
 ;;21,"00527-0597-10 ")
 ;;752
 ;;21,"00527-1143-01 ")
 ;;265
 ;;21,"00527-1219-01 ")
 ;;266
 ;;21,"00527-1308-01 ")
 ;;753
 ;;21,"00527-1308-10 ")
 ;;754
 ;;21,"00527-1310-01 ")
 ;;755
 ;;21,"00527-1310-10 ")
 ;;756
 ;;21,"00527-1317-01 ")
 ;;757
 ;;21,"00527-1317-10 ")
 ;;758
 ;;21,"00527-1445-01 ")
 ;;759
 ;;21,"00527-1445-10 ")
 ;;760
 ;;21,"00536-5925-01 ")
 ;;301
 ;;21,"00555-0762-02 ")
 ;;1
 ;;21,"00555-0763-02 ")
 ;;2
 ;;21,"00555-0764-02 ")
 ;;3
 ;;21,"00555-0765-02 ")
 ;;4
 ;;21,"00555-0766-02 ")
 ;;5
 ;;21,"00555-0767-02 ")
 ;;6
 ;;21,"00555-0768-02 ")
 ;;7
 ;;21,"00555-0775-02 ")
 ;;81
 ;;21,"00555-0776-02 ")
 ;;82
 ;;21,"00555-0777-02 ")
 ;;83
 ;;21,"00555-0787-02 ")
 ;;140
 ;;21,"00555-0788-02 ")
 ;;141
 ;;21,"00555-0789-02 ")
 ;;142
 ;;21,"00555-0790-02 ")
 ;;143
 ;;21,"00555-0791-02 ")
 ;;144
 ;;21,"00555-0792-02 ")
 ;;145
 ;;21,"00555-0952-02 ")
 ;;267
 ;;21,"00555-0953-02 ")
 ;;268
 ;;21,"00555-0954-02 ")
 ;;269
 ;;21,"00555-0955-02 ")
 ;;270
 ;;21,"00555-0956-02 ")
 ;;271
 ;;21,"00555-0971-02 ")
 ;;84
 ;;21,"00555-0972-02 ")
 ;;85
 ;;21,"00555-0973-02 ")
 ;;86
 ;;21,"00555-0974-02 ")
 ;;87
 ;;21,"00574-0116-01 ")
 ;;150
 ;;21,"00574-0116-05 ")
 ;;151
 ;;21,"00574-0116-30 ")
 ;;152
 ;;21,"00585-0903-71 ")
 ;;409
 ;;21,"00585-0904-84 ")
 ;;410
 ;;21,"00591-0782-01 ")
 ;;356
 ;;21,"00591-0783-01 ")
 ;;302
 ;;21,"00591-3111-01 ")
 ;;543
 ;;21,"00591-5882-01 ")
 ;;472
 ;;21,"00591-5882-10 ")
 ;;473
 ;;21,"00591-5883-01 ")
 ;;474
 ;;21,"00591-5883-10 ")
 ;;475
 ;;21,"00591-5884-01 ")
 ;;476
 ;;21,"00591-5884-10 ")
 ;;477
 ;;21,"00603-4569-21 ")
 ;;478
 ;;21,"00603-4569-32 ")
 ;;479
 ;;21,"00603-4570-21 ")
 ;;480
 ;;21,"00603-4570-32 ")
 ;;481
 ;;21,"00603-4571-21 ")
 ;;482
 ;;21,"00603-4571-32 ")
 ;;483
 ;;21,"00603-4572-21 ")
 ;;544
 ;;21,"00603-5192-16 ")
 ;;761
 ;;21,"00603-5192-21 ")
 ;;762
 ;;21,"00603-5192-32 ")
 ;;763
 ;;21,"00677-0460-01 ")
 ;;764
 ;;21,"00677-1823-01 ")
 ;;765
 ;;21,"00677-1823-10 ")
 ;;766
 ;;21,"00677-1824-01 ")
 ;;767
 ;;21,"00677-1824-10 ")
 ;;768
 ;;21,"00781-1097-01 ")
 ;;303
 ;;21,"00781-1605-01 ")
 ;;357
 ;;21,"00781-1748-01 ")
 ;;484
 ;;21,"00781-1748-10 ")
 ;;485
 ;;21,"00781-1749-01 ")
 ;;486
 ;;21,"00781-1749-10 ")
 ;;487
 ;;21,"00781-1753-01 ")
 ;;488
 ;;21,"00781-1753-10 ")
 ;;489
 ;;21,"00781-1754-01 ")
 ;;545
 ;;21,"00781-1754-10 ")
 ;;546
 ;;21,"00781-5748-01 ")
 ;;490
 ;;21,"00781-5749-01 ")
 ;;491
 ;;21,"00781-5753-01 ")
 ;;492
 ;;21,"00781-5754-01 ")
 ;;547
 ;;21,"00781-8840-01 ")
 ;;493
 ;;21,"00781-8841-01 ")
 ;;494
 ;;21,"00781-8842-01 ")
 ;;495
 ;;21,"00781-8842-10 ")
 ;;496
 ;;21,"00781-8843-01 ")
 ;;548
 ;;21,"00904-0614-60 ")
 ;;769
 ;;21,"00904-0614-80 ")
 ;;770
 ;;21,"00904-0618-60 ")
 ;;358
 ;;21,"00904-0618-70 ")
 ;;359
 ;;21,"00904-2768-60 ")
 ;;497
 ;;21,"00904-2768-80 ")
 ;;498
 ;;21,"00904-2769-60 ")
 ;;499
 ;;21,"00904-2769-80 ")
 ;;500
 ;;21,"00904-2770-60 ")
 ;;501
 ;;21,"00904-2770-80 ")
 ;;502
 ;;21,"00904-2773-60 ")
 ;;549
 ;;21,"00904-3921-60 ")
 ;;771
 ;;21,"00904-3921-80 ")
 ;;772
 ;;21,"00904-4270-80 ")
 ;;569
 ;;21,"10702-0025-01 ")
 ;;773
 ;;21,"10702-0025-03 ")
 ;;774
 ;;21,"10702-0025-10 ")
 ;;775
 ;;21,"10702-0026-01 ")
 ;;776
 ;;21,"10702-0026-10 ")
 ;;777
 ;;21,"10702-0027-01 ")
 ;;778
 ;;21,"10702-0027-10 ")
 ;;779
 ;;21,"10702-0028-01 ")
 ;;780
 ;;21,"10702-0028-10 ")
 ;;781
 ;;21,"10702-0029-01 ")
 ;;782
 ;;21,"10702-0029-10 ")
 ;;783
 ;;21,"10702-0040-01 ")
 ;;153
 ;;21,"10702-0040-03 ")
 ;;154
 ;;21,"10702-0040-50 ")
 ;;155
 ;;21,"11808-0555-01 ")
 ;;1084
 ;;21,"12280-0085-07 ")
 ;;674
 ;;21,"12280-0085-14 ")
 ;;675
 ;;21,"12280-0135-00 ")
 ;;784
 ;;21,"12280-0231-00 ")
 ;;785
 ;;21,"13551-0701-05 ")
 ;;1044
 ;;21,"14629-0117-16 ")
 ;;416
 ;;21,"16590-0185-30 ")
 ;;786
 ;;21,"16590-0185-60 ")
 ;;787
 ;;21,"16590-0186-30 ")
 ;;788
 ;;21,"16590-0186-60 ")
 ;;789
 ;;21,"17314-5850-02 ")
 ;;200
 ;;21,"17314-5851-02 ")
 ;;201
 ;;21,"17314-5852-02 ")
 ;;202
 ;;21,"17314-5853-02 ")
 ;;203
 ;;21,"21695-0509-00 ")
 ;;790
 ;;21,"21695-0510-30 ")
 ;;791
 ;;21,"21695-0513-00 ")
 ;;792
 ;;21,"21695-0597-07 ")
 ;;570
 ;;21,"21695-0597-60 ")
 ;;571
 ;;21,"21695-0876-30 ")
 ;;360
 ;;21,"23490-5133-01 ")
 ;;156
 ;;21,"23490-5133-02 ")
 ;;157
 ;;21,"23490-5133-03 ")
 ;;158
 ;;21,"23490-5434-01 ")
 ;;304
 ;;21,"23490-5434-02 ")
 ;;305
 ;;21,"23490-5434-03 ")
 ;;306
 ;;21,"23490-5434-04 ")
 ;;307
 ;;21,"23490-5434-05 ")
 ;;308
 ;;21,"23490-5434-06 ")
 ;;309
 ;;21,"23490-5434-07 ")
 ;;310
 ;;21,"23490-5435-01 ")
 ;;361
 ;;21,"23490-5435-02 ")
 ;;362
 ;;21,"23490-5435-03 ")
 ;;363
 ;;21,"23490-5435-04 ")
 ;;364
 ;;21,"23490-6081-01 ")
 ;;676
 ;;21,"23490-6081-02 ")
 ;;677
 ;;21,"23490-6081-03 ")
 ;;678
 ;;21,"23490-6081-04 ")
 ;;679
 ;;21,"23490-6082-01 ")
 ;;572
 ;;21,"23490-6082-02 ")
 ;;573
 ;;21,"23490-6082-03 ")
 ;;574
 ;;21,"23490-6082-04 ")
 ;;575
 ;;21,"23490-6082-05 ")
 ;;576
 ;;21,"23490-6082-06 ")
 ;;577
 ;;21,"23490-6082-07 ")
 ;;578
 ;;21,"23490-6082-08 ")
 ;;579
 ;;21,"23490-6090-01 ")
 ;;793
 ;;21,"23490-6090-02 ")
 ;;794
 ;;21,"23490-6090-03 ")
 ;;795
 ;;21,"23490-6090-04 ")
 ;;796
 ;;21,"23490-6090-06 ")
 ;;797
 ;;21,"23490-6092-00 ")
 ;;798
 ;;21,"23490-6092-01 ")
 ;;799
 ;;21,"23490-6092-03 ")
 ;;800
 ;;21,"23490-6092-06 ")
 ;;801
 ;;21,"23490-6092-07 ")
 ;;802
 ;;21,"23490-6092-08 ")
 ;;803
 ;;21,"23490-6092-09 ")
 ;;804
 ;;21,"23490-6094-00 ")
 ;;805
 ;;21,"23490-6094-01 ")
 ;;806
 ;;21,"23490-6094-02 ")
 ;;807
 ;;21,"23490-6094-03 ")
 ;;808
 ;;21,"23490-6094-04 ")
 ;;809
 ;;21,"23490-6094-05 ")
 ;;810
 ;;21,"23490-6094-06 ")
 ;;811
 ;;21,"23490-6094-09 ")
 ;;812
 ;;21,"23490-7240-00 ")
 ;;813
 ;;21,"23490-7240-01 ")
 ;;814
 ;;21,"23490-7240-02 ")
 ;;815
 ;;21,"23490-7240-03 ")
 ;;816
 ;;21,"23490-7240-04 ")
 ;;817
 ;;21,"23490-7921-01 ")
 ;;818
 ;;21,"23490-7921-02 ")
 ;;819
 ;;21,"23490-7921-03 ")
 ;;820
 ;;21,"23490-7921-04 ")
 ;;821
 ;;21,"23490-7954-03 ")
 ;;503
 ;
OTHER ; OTHER ROUTINES
 D ^BGP12XB
 D ^BGP12XC
 D ^BGP12XD
 D ^BGP12XE
 D ^BGP12XF
 D ^BGP12XG
 D ^BGP12XH
 D ^BGP12XI
 D ^BGP12XJ
 D ^BGP12XK
 D ^BGP12XL
 D ^BGP12XM
 D ^BGP12XN
 Q
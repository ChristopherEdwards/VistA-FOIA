APCHNTEG ;ISC/XTSUMBLD KERNEL - Package checksum checker ;3070816.173836 [ 08/16/2007  5:39 PM ]
 ;;2.0;IHS RPMS/PCC Health Summary;****16****;JUN 24, 1997
 ;;0.0;
 ;;7.3;3070816.173836
 S XT4="I 1",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
CONT F XT1=1:1 S XT2=$T(ROU+XT1) Q:XT2=""  S X=$P(XT2," ",1),XT3=$P(XT2,";",3) X XT4 I $T W !,X X ^%ZOSF("TEST") S:'$T XT3=0 X:XT3 ^%ZOSF("RSUM") W ?10,$S('XT3:"Routine not in UCI",XT3'=Y:"Calculated "_$C(7)_Y_", off by "_(Y-XT3),1:"ok")
 ;
 K %1,%2,%3,X,Y,XT1,XT2,XT3,XT4 Q
ONE S XT4="I $D(^UTILITY($J,X))",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
 W !,"Check a subset of routines:" K ^UTILITY($J) X ^%ZOSF("RSEL")
 W ! G CONT
ROU ;;
APCH20P8 ;;6659440
APCH20P9 ;;9301154
APCH2P10 ;;230352
APCH2P11 ;;10353559
APCH2P13 ;;20475034
APCH2P14 ;;25584792
APCH2P15 ;;26467842
APCH2P16 ;;8762555
APCHBU10 ;;5131587
APCHBU11 ;;11438316
APCHBU12 ;;14517261
APCHBU13 ;;3984177
APCHBU14 ;;7741068
APCHBU15 ;;6864315
APCHBU16 ;;21365958
APCHBUL ;;8649581
APCHBUL9 ;;9018155
APCHHMR1 ;;9972646
APCHHMRD ;;5238320
APCHHMRP ;;8651788
APCHHMRU ;;20628806
APCHMT ;;10288731
APCHMT1 ;;33344838
APCHMT2 ;;16742375
APCHP16 ;;137736
APCHP16A ;;2109292
APCHP16B ;;987517
APCHPALG ;;4898376
APCHPAT ;;398361
APCHPMH ;;3947392
APCHPMH1 ;;36730185
APCHPMH2 ;;4951589
APCHPMH3 ;;13177489
APCHPRE ;;7085207
APCHPRE1 ;;40588971
APCHPST ;;4113410
APCHPST1 ;;36418720
APCHPST2 ;;32634296
APCHS ;;6930580
APCHS0 ;;10515192
APCHS1 ;;19545905
APCHS10 ;;30475601
APCHS11 ;;14880223
APCHS11A ;;13880219
APCHS11B ;;6907201
APCHS11C ;;12641398
APCHS11D ;;10046291
APCHS11E ;;5068839
APCHS11F ;;3749999
APCHS11G ;;19176898
APCHS12 ;;15743161
APCHS1A ;;5800444
APCHS1B ;;11285140
APCHS2 ;;16864476
APCHS2A ;;11270582
APCHS2A3 ;;6548500
APCHS2B ;;12469544
APCHS2D ;;8848513
APCHS2E ;;8414930
APCHS2F ;;9270536
APCHS2G ;;12981066
APCHS2H ;;11583293
APCHS2J ;;8912849
APCHS3 ;;10333989
APCHS3A ;;10117794
APCHS3B ;;10516226
APCHS3C ;;16815273
APCHS3E ;;11162213
APCHS3F ;;8934918
APCHS40 ;;5411898
APCHS4A ;;9680995
APCHS5 ;;13246255
APCHS5A ;;17152774
APCHS6 ;;32730599
APCHS6A ;;15044914
APCHS6B ;;5761894
APCHS7 ;;16116552
APCHS70 ;;7775473
APCHS71 ;;10619460
APCHS72 ;;10716202
APCHS73 ;;14956695
APCHS74 ;;16827431
APCHS77 ;;12237479
APCHS78 ;;18407211
APCHS79 ;;11618034
APCHS7N ;;8717353
APCHS7O ;;8731982
APCHS7X ;;1042063
APCHS8 ;;23909498
APCHS81 ;;4856927
APCHS8A ;;10832157
APCHS9 ;;4374100
APCHS9A ;;5536804
APCHS9B1 ;;30674753
APCHS9B2 ;;27038062
APCHS9B3 ;;10450463
APCHS9B4 ;;24156509
APCHS9B5 ;;15327507
APCHS9B6 ;;11761597
APCHS9B7 ;;3369825
APCHS9D1 ;;27442228
APCHS9D2 ;;13253691
APCHS9M1 ;;26497024
APCHS9M2 ;;28220079
APCHS9M3 ;;26510249
APCHS9M4 ;;28366093
APCHS9M5 ;;30105198
APCHSBAN ;;2794600
APCHSM ;;6714168
APCHSM01 ;;25629969
APCHSM02 ;;30895916
APCHSM03 ;;30223896
APCHSM04 ;;25891703
APCHSM05 ;;24807708
APCHSM06 ;;11380046
APCHSM07 ;;20464676
APCHSM08 ;;24106866
APCHSMAS ;;16121600
APCHSMU ;;23027365
APCHSMU1 ;;171213
APCHSMU2 ;;23243685
APCHSUTL ;;13598624
APCHTAXE ;;15061782
APCHTAXL ;;2483329
APCHTAXM ;;18989446
APCHTAXN ;;6487014
APCHTX ;;416348
APCHTXA ;;3276570
APCHTXB ;;1646944
APCHTXC ;;1139814
APCHTXD ;;1007575
APCHTXE ;;2110494
APCHTXEB ;;3943446
APCHTXEC ;;4061426
APCHTXED ;;4152335
APCHTXEE ;;2235483
APCHTXF ;;2811488
APCHTXG ;;1268905
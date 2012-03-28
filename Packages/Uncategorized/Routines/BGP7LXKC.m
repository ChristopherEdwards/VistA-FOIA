BGP7LXKC ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 29, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"63739-0082-02 ")
 ;;610
 ;;21,"63868-0500-24 ")
 ;;686
 ;;21,"63868-0995-01 ")
 ;;611
 ;;21,"63868-0995-24 ")
 ;;612
 ;;21,"63874-0309-01 ")
 ;;873
 ;;21,"63874-0309-02 ")
 ;;874
 ;;21,"63874-0309-04 ")
 ;;875
 ;;21,"63874-0309-15 ")
 ;;876
 ;;21,"63874-0309-20 ")
 ;;877
 ;;21,"63874-0309-30 ")
 ;;878
 ;;21,"63874-0309-40 ")
 ;;879
 ;;21,"63874-0309-42 ")
 ;;880
 ;;21,"63874-0309-50 ")
 ;;881
 ;;21,"63874-0309-60 ")
 ;;882
 ;;21,"63874-0309-72 ")
 ;;883
 ;;21,"63874-0309-74 ")
 ;;884
 ;;21,"63874-0309-77 ")
 ;;885
 ;;21,"64125-0102-01 ")
 ;;467
 ;;21,"64125-0128-10 ")
 ;;468
 ;;21,"64543-0111-01 ")
 ;;88
 ;;21,"64543-0112-01 ")
 ;;169
 ;;21,"64543-0118-90 ")
 ;;170
 ;;21,"64731-0295-01 ")
 ;;65
 ;;21,"64731-0300-01 ")
 ;;121
 ;;21,"64731-0305-01 ")
 ;;89
 ;;21,"64731-0860-01 ")
 ;;469
 ;;21,"64759-0002-01 ")
 ;;470
 ;;21,"65162-0156-10 ")
 ;;687
 ;;21,"65162-0156-11 ")
 ;;688
 ;;21,"65162-0301-10 ")
 ;;471
 ;;21,"65162-0516-10 ")
 ;;613
 ;;21,"65162-0516-11 ")
 ;;614
 ;;21,"65234-0074-05 ")
 ;;472
 ;;21,"65234-0074-10 ")
 ;;473
 ;;21,"65581-0007-21 ")
 ;;474
 ;;21,"65581-0007-28 ")
 ;;475
 ;;21,"65779-0059-24 ")
 ;;615
 ;;21,"66116-0643-20 ")
 ;;616
 ;;21,"66116-0644-30 ")
 ;;617
 ;;21,"66213-0421-10 ")
 ;;476
 ;;21,"66213-0421-50 ")
 ;;477
 ;;21,"66213-0422-04 ")
 ;;478
 ;;21,"66213-0422-16 ")
 ;;479
 ;;21,"66213-0423-04 ")
 ;;480
 ;;21,"66213-0423-16 ")
 ;;481
 ;;21,"66213-0425-10 ")
 ;;482
 ;;21,"66213-0425-11 ")
 ;;483
 ;;21,"66346-0082-23 ")
 ;;484
 ;;21,"66346-0082-31 ")
 ;;485
 ;;21,"66346-0152-23 ")
 ;;486
 ;;21,"66346-0152-31 ")
 ;;487
 ;;21,"66479-0860-01 ")
 ;;488
 ;;21,"66663-0219-01 ")
 ;;489
 ;;21,"66934-0200-30 ")
 ;;196
 ;;21,"66993-0402-02 ")
 ;;66
 ;;21,"67204-0531-01 ")
 ;;490
 ;;21,"67555-0155-10 ")
 ;;491
 ;;21,"68013-0005-01 ")
 ;;122
 ;;21,"68030-0053-01 ")
 ;;558
 ;;21,"68030-3594-01 ")
 ;;559
 ;;21,"68115-0041-20 ")
 ;;492
 ;;21,"68115-0041-30 ")
 ;;493
 ;;21,"68115-0116-24 ")
 ;;560
 ;;21,"68115-0118-15 ")
 ;;494
 ;;21,"68115-0118-20 ")
 ;;495
 ;;21,"68115-0118-30 ")
 ;;496
 ;;21,"68115-0678-00 ")
 ;;123
 ;;21,"68115-0788-00 ")
 ;;497
 ;;21,"68115-0897-04 ")
 ;;498
 ;;21,"71114-4121-00 ")
 ;;561
 ;;21,"71114-4121-01 ")
 ;;562
 ;;21,"71114-4121-06 ")
 ;;563
 ;;21,"73913-1096-56 ")
 ;;658
 ;;21,"73913-1283-01 ")
 ;;564
 ;;21,"73913-1283-24 ")
 ;;565
 ;;21,"80328-5567-04 ")
 ;;821
 ;;21,"80328-5859-68 ")
 ;;566
 ;;21,"80328-5867-84 ")
 ;;659
 ;;21,"82468-0120-21 ")
 ;;567
 ;;21,"87701-0435-84 ")
 ;;568
 ;;21,"87701-0436-18 ")
 ;;569
 ;;21,"87701-0537-32 ")
 ;;848
 ;;21,"87701-0537-47 ")
 ;;570
 ;;21,"87701-0538-40 ")
 ;;660
 ;;21,"87701-0649-55 ")
 ;;661
 ;;21,"87701-0836-23 ")
 ;;571
 ;;21,"87701-0837-14 ")
 ;;662
 ;;21,"87701-0843-41 ")
 ;;572
 ;;21,"87701-0843-84 ")
 ;;663
 ;;21,"87701-0890-06 ")
 ;;849
 ;;21,"87701-0898-65 ")
 ;;573
 ;;21,"94441-0200-94 ")
 ;;664
 ;;21,"94441-0212-87 ")
 ;;665
 ;;21,"97807-0070-29 ")
 ;;574
 ;;21,"97807-0070-30 ")
 ;;666
 ;;21,"97807-0071-07 ")
 ;;575
 ;;9002226,628,.01)
 ;;BGP HEDIS BELLADONNA ALKA NDC
 ;;9002226,628,.02)
 ;;@
 ;;9002226,628,.04)
 ;;n
 ;;9002226,628,.06)
 ;;@
 ;;9002226,628,.08)
 ;;@
 ;;9002226,628,.09)
 ;;@
 ;;9002226,628,.11)
 ;;@
 ;;9002226,628,.12)
 ;;@
 ;;9002226,628,.13)
 ;;1
 ;;9002226,628,.14)
 ;;@
 ;;9002226,628,.15)
 ;;@
 ;;9002226,628,.16)
 ;;@
 ;;9002226,628,.17)
 ;;@
 ;;9002226,628,3101)
 ;;@
 ;;9002226.02101,"628,00002-1675-01 ",.01)
 ;;00002-1675-01
 ;;9002226.02101,"628,00002-1675-01 ",.02)
 ;;00002-1675-01
 ;;9002226.02101,"628,00025-0061-31 ",.01)
 ;;00025-0061-31
 ;;9002226.02101,"628,00025-0061-31 ",.02)
 ;;00025-0061-31
 ;;9002226.02101,"628,00025-0061-34 ",.01)
 ;;00025-0061-34
 ;;9002226.02101,"628,00025-0061-34 ",.02)
 ;;00025-0061-34
 ;;9002226.02101,"628,00025-0061-51 ",.01)
 ;;00025-0061-51
 ;;9002226.02101,"628,00025-0061-51 ",.02)
 ;;00025-0061-51
 ;;9002226.02101,"628,00025-0061-52 ",.01)
 ;;00025-0061-52
 ;;9002226.02101,"628,00025-0061-52 ",.02)
 ;;00025-0061-52
 ;;9002226.02101,"628,00025-0061-55 ",.01)
 ;;00025-0061-55
 ;;9002226.02101,"628,00025-0061-55 ",.02)
 ;;00025-0061-55
 ;;9002226.02101,"628,00025-0066-02 ",.01)
 ;;00025-0066-02
 ;;9002226.02101,"628,00025-0066-02 ",.02)
 ;;00025-0066-02
 ;;9002226.02101,"628,00031-4207-63 ",.01)
 ;;00031-4207-63
 ;;9002226.02101,"628,00031-4207-63 ",.02)
 ;;00031-4207-63
 ;;9002226.02101,"628,00031-4221-12 ",.01)
 ;;00031-4221-12
 ;;9002226.02101,"628,00031-4221-12 ",.02)
 ;;00031-4221-12
 ;;9002226.02101,"628,00031-4221-25 ",.01)
 ;;00031-4221-25
 ;;9002226.02101,"628,00031-4221-25 ",.02)
 ;;00031-4221-25
 ;;9002226.02101,"628,00031-4221-29 ",.01)
 ;;00031-4221-29
 ;;9002226.02101,"628,00031-4221-29 ",.02)
 ;;00031-4221-29
 ;;9002226.02101,"628,00031-4235-63 ",.01)
 ;;00031-4235-63
 ;;9002226.02101,"628,00031-4235-63 ",.02)
 ;;00031-4235-63
 ;;9002226.02101,"628,00031-4235-70 ",.01)
 ;;00031-4235-70
 ;;9002226.02101,"628,00031-4235-70 ",.02)
 ;;00031-4235-70
 ;;9002226.02101,"628,00031-4250-63 ",.01)
 ;;00031-4250-63
 ;;9002226.02101,"628,00031-4250-63 ",.02)
 ;;00031-4250-63
 ;;9002226.02101,"628,00031-4250-74 ",.01)
 ;;00031-4250-74
 ;;9002226.02101,"628,00031-4250-74 ",.02)
 ;;00031-4250-74
 ;;9002226.02101,"628,00037-0301-92 ",.01)
 ;;00037-0301-92
 ;;9002226.02101,"628,00037-0301-92 ",.02)
 ;;00037-0301-92
 ;;9002226.02101,"628,00054-3194-46 ",.01)
 ;;00054-3194-46
 ;;9002226.02101,"628,00054-3194-46 ",.02)
 ;;00054-3194-46
 ;;9002226.02101,"628,00054-8171-16 ",.01)
 ;;00054-8171-16
 ;;9002226.02101,"628,00054-8171-16 ",.02)
 ;;00054-8171-16
 ;;9002226.02101,"628,00054-8191-16 ",.01)
 ;;00054-8191-16
 ;;9002226.02101,"628,00054-8191-16 ",.02)
 ;;00054-8191-16
 ;;9002226.02101,"628,00067-4345-04 ",.01)
 ;;00067-4345-04
 ;;9002226.02101,"628,00067-4345-04 ",.02)
 ;;00067-4345-04
 ;;9002226.02101,"628,00067-4346-24 ",.01)
 ;;00067-4346-24
 ;;9002226.02101,"628,00067-4346-24 ",.02)
 ;;00067-4346-24
 ;;9002226.02101,"628,00071-0373-32 ",.01)
 ;;00071-0373-32
 ;;9002226.02101,"628,00071-0373-32 ",.02)
 ;;00071-0373-32
 ;;9002226.02101,"628,00071-0373-40 ",.01)
 ;;00071-0373-40
 ;;9002226.02101,"628,00071-0373-40 ",.02)
 ;;00071-0373-40
 ;;9002226.02101,"628,00071-2002-20 ",.01)
 ;;00071-2002-20
 ;;9002226.02101,"628,00071-2002-20 ",.02)
 ;;00071-2002-20
 ;;9002226.02101,"628,00071-2195-20 ",.01)
 ;;00071-2195-20
 ;;9002226.02101,"628,00071-2195-20 ",.02)
 ;;00071-2195-20
 ;;9002226.02101,"628,00074-1630-10 ",.01)
 ;;00074-1630-10
 ;;9002226.02101,"628,00074-1630-10 ",.02)
 ;;00074-1630-10
 ;;9002226.02101,"628,00074-4910-01 ",.01)
 ;;00074-4910-01
 ;;9002226.02101,"628,00074-4910-01 ",.02)
 ;;00074-4910-01
 ;;9002226.02101,"628,00074-4910-15 ",.01)
 ;;00074-4910-15
 ;;9002226.02101,"628,00074-4910-15 ",.02)
 ;;00074-4910-15
 ;;9002226.02101,"628,00074-4910-33 ",.01)
 ;;00074-4910-33
 ;;9002226.02101,"628,00074-4910-33 ",.02)
 ;;00074-4910-33
 ;;9002226.02101,"628,00074-4910-34 ",.01)
 ;;00074-4910-34
 ;;9002226.02101,"628,00074-4910-34 ",.02)
 ;;00074-4910-34
 ;;9002226.02101,"628,00074-4911-01 ",.01)
 ;;00074-4911-01
 ;;9002226.02101,"628,00074-4911-01 ",.02)
 ;;00074-4911-01
 ;;9002226.02101,"628,00074-4911-18 ",.01)
 ;;00074-4911-18
 ;;9002226.02101,"628,00074-4911-18 ",.02)
 ;;00074-4911-18
 ;;9002226.02101,"628,00074-4911-33 ",.01)
 ;;00074-4911-33
 ;;9002226.02101,"628,00074-4911-33 ",.02)
 ;;00074-4911-33
 ;;9002226.02101,"628,00074-4911-34 ",.01)
 ;;00074-4911-34
 ;;9002226.02101,"628,00074-4911-34 ",.02)
 ;;00074-4911-34
 ;;9002226.02101,"628,00074-7897-15 ",.01)
 ;;00074-7897-15
 ;;9002226.02101,"628,00074-7897-15 ",.02)
 ;;00074-7897-15
 ;;9002226.02101,"628,00074-9629-02 ",.01)
 ;;00074-9629-02
 ;;9002226.02101,"628,00074-9629-02 ",.02)
 ;;00074-9629-02
 ;;9002226.02101,"628,00074-9629-05 ",.01)
 ;;00074-9629-05
 ;;9002226.02101,"628,00074-9629-05 ",.02)
 ;;00074-9629-05
 ;;9002226.02101,"628,00074-9630-05 ",.01)
 ;;00074-9630-05
 ;;9002226.02101,"628,00074-9630-05 ",.02)
 ;;00074-9630-05
 ;;9002226.02101,"628,00076-0108-03 ",.01)
 ;;00076-0108-03
 ;;9002226.02101,"628,00076-0108-03 ",.02)
 ;;00076-0108-03
 ;;9002226.02101,"628,00076-0909-90 ",.01)
 ;;00076-0909-90
 ;;9002226.02101,"628,00076-0909-90 ",.02)
 ;;00076-0909-90
 ;;9002226.02101,"628,00086-0074-05 ",.01)
 ;;00086-0074-05
 ;;9002226.02101,"628,00086-0074-05 ",.02)
 ;;00086-0074-05
 ;;9002226.02101,"628,00086-0074-10 ",.01)
 ;;00086-0074-10
 ;;9002226.02101,"628,00086-0074-10 ",.02)
 ;;00086-0074-10
 ;;9002226.02101,"628,00091-0202-01 ",.01)
 ;;00091-0202-01
 ;;9002226.02101,"628,00091-0202-01 ",.02)
 ;;00091-0202-01
 ;;9002226.02101,"628,00091-1536-05 ",.01)
 ;;00091-1536-05
 ;;9002226.02101,"628,00091-1536-05 ",.02)
 ;;00091-1536-05
 ;;9002226.02101,"628,00091-3111-01 ",.01)
 ;;00091-3111-01
 ;;9002226.02101,"628,00091-3111-01 ",.02)
 ;;00091-3111-01
 ;;9002226.02101,"628,00091-3475-01 ",.01)
 ;;00091-3475-01
 ;;9002226.02101,"628,00091-3475-01 ",.02)
 ;;00091-3475-01
 ;;9002226.02101,"628,00091-3531-01 ",.01)
 ;;00091-3531-01
 ;;9002226.02101,"628,00091-3531-01 ",.02)
 ;;00091-3531-01
 ;;9002226.02101,"628,00091-3531-05 ",.01)
 ;;00091-3531-05
 ;;9002226.02101,"628,00091-3531-05 ",.02)
 ;;00091-3531-05
 ;;9002226.02101,"628,00091-3532-01 ",.01)
 ;;00091-3532-01
 ;;9002226.02101,"628,00091-3532-01 ",.02)
 ;;00091-3532-01
 ;;9002226.02101,"628,00091-3532-05 ",.01)
 ;;00091-3532-05
 ;;9002226.02101,"628,00091-3532-05 ",.02)
 ;;00091-3532-05
 ;;9002226.02101,"628,00091-3534-01 ",.01)
 ;;00091-3534-01
 ;;9002226.02101,"628,00091-3534-01 ",.02)
 ;;00091-3534-01
 ;;9002226.02101,"628,00091-3537-01 ",.01)
 ;;00091-3537-01
 ;;9002226.02101,"628,00091-3537-01 ",.02)
 ;;00091-3537-01
 ;;9002226.02101,"628,00091-3537-05 ",.01)
 ;;00091-3537-05
 ;;9002226.02101,"628,00091-3537-05 ",.02)
 ;;00091-3537-05
 ;;9002226.02101,"628,00091-3538-01 ",.01)
 ;;00091-3538-01
 ;;9002226.02101,"628,00091-3538-01 ",.02)
 ;;00091-3538-01
 ;;9002226.02101,"628,00091-3538-05 ",.01)
 ;;00091-3538-05
 ;;9002226.02101,"628,00091-3538-05 ",.02)
 ;;00091-3538-05
 ;;9002226.02101,"628,00091-4532-16 ",.01)
 ;;00091-4532-16
 ;;9002226.02101,"628,00091-4532-16 ",.02)
 ;;00091-4532-16
 ;;9002226.02101,"628,00091-4536-15 ",.01)
 ;;00091-4536-15
 ;;9002226.02101,"628,00091-4536-15 ",.02)
 ;;00091-4536-15
 ;;9002226.02101,"628,00091-4538-15 ",.01)
 ;;00091-4538-15
 ;;9002226.02101,"628,00091-4538-15 ",.02)
 ;;00091-4538-15
 ;;9002226.02101,"628,00115-1111-02 ",.01)
 ;;00115-1111-02
 ;;9002226.02101,"628,00115-1111-02 ",.02)
 ;;00115-1111-02
 ;;9002226.02101,"628,00115-1111-04 ",.01)
 ;;00115-1111-04
 ;;9002226.02101,"628,00115-1111-04 ",.02)
 ;;00115-1111-04
 ;;9002226.02101,"628,00115-4652-01 ",.01)
 ;;00115-4652-01
 ;;9002226.02101,"628,00115-4652-01 ",.02)
 ;;00115-4652-01
 ;;9002226.02101,"628,00115-4652-03 ",.01)
 ;;00115-4652-03
 ;;9002226.02101,"628,00115-4652-03 ",.02)
 ;;00115-4652-03
 ;;9002226.02101,"628,00143-1140-10 ",.01)
 ;;00143-1140-10
 ;;9002226.02101,"628,00143-1140-10 ",.02)
 ;;00143-1140-10
 ;;9002226.02101,"628,00143-1140-51 ",.01)
 ;;00143-1140-51
 ;;9002226.02101,"628,00143-1140-51 ",.02)
 ;;00143-1140-51
 ;;9002226.02101,"628,00144-0716-01 ",.01)
 ;;00144-0716-01
 ;;9002226.02101,"628,00144-0716-01 ",.02)
 ;;00144-0716-01
 ;;9002226.02101,"628,00144-0717-01 ",.01)
 ;;00144-0717-01
 ;;9002226.02101,"628,00144-0717-01 ",.02)
 ;;00144-0717-01
 ;;9002226.02101,"628,00172-3966-60 ",.01)
 ;;00172-3966-60
 ;;9002226.02101,"628,00172-3966-60 ",.02)
 ;;00172-3966-60
 ;;9002226.02101,"628,00172-3966-80 ",.01)
 ;;00172-3966-80
 ;;9002226.02101,"628,00172-3966-80 ",.02)
 ;;00172-3966-80
 ;;9002226.02101,"628,00172-4375-60 ",.01)
 ;;00172-4375-60
 ;;9002226.02101,"628,00172-4375-60 ",.02)
 ;;00172-4375-60
 ;;9002226.02101,"628,00182-0686-40 ",.01)
 ;;00182-0686-40
 ;;9002226.02101,"628,00182-0686-40 ",.02)
 ;;00182-0686-40
 ;;9002226.02101,"628,00182-0686-41 ",.01)
 ;;00182-0686-41
 ;;9002226.02101,"628,00182-0686-41 ",.02)
 ;;00182-0686-41
 ;;9002226.02101,"628,00182-0850-01 ",.01)
 ;;00182-0850-01
 ;;9002226.02101,"628,00182-0850-01 ",.02)
 ;;00182-0850-01
 ;;9002226.02101,"628,00182-1006-01 ",.01)
 ;;00182-1006-01
 ;;9002226.02101,"628,00182-1006-01 ",.02)
 ;;00182-1006-01
 ;;9002226.02101,"628,00182-1006-05 ",.01)
 ;;00182-1006-05
 ;;9002226.02101,"628,00182-1006-05 ",.02)
 ;;00182-1006-05
 ;;9002226.02101,"628,00182-1006-10 ",.01)
 ;;00182-1006-10
 ;;9002226.02101,"628,00182-1006-10 ",.02)
 ;;00182-1006-10
 ;;9002226.02101,"628,00182-1048-10 ",.01)
 ;;00182-1048-10
 ;;9002226.02101,"628,00182-1048-10 ",.02)
 ;;00182-1048-10
 ;;9002226.02101,"628,00182-1607-01 ",.01)
 ;;00182-1607-01
 ;;9002226.02101,"628,00182-1607-01 ",.02)
 ;;00182-1607-01
 ;;9002226.02101,"628,00182-1847-01 ",.01)
 ;;00182-1847-01
 ;;9002226.02101,"628,00182-1847-01 ",.02)
 ;;00182-1847-01
 ;;9002226.02101,"628,00182-1990-01 ",.01)
 ;;00182-1990-01
 ;;9002226.02101,"628,00182-1990-01 ",.02)
 ;;00182-1990-01
 ;;9002226.02101,"628,00182-1993-01 ",.01)
 ;;00182-1993-01
 ;;9002226.02101,"628,00182-1993-01 ",.02)
 ;;00182-1993-01
 ;;9002226.02101,"628,00182-6136-40 ",.01)
 ;;00182-6136-40
 ;;9002226.02101,"628,00182-6136-40 ",.02)
 ;;00182-6136-40
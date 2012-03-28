BGP8FXFB ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"58743-0787-90 ")
 ;;288
 ;;21,"59741-0315-12 ")
 ;;291
 ;;21,"59743-0026-01 ")
 ;;347
 ;;21,"59743-0027-10 ")
 ;;168
 ;;21,"59743-0028-16 ")
 ;;101
 ;;21,"60258-0449-01 ")
 ;;58
 ;;21,"60258-0512-01 ")
 ;;478
 ;;21,"60258-0513-03 ")
 ;;318
 ;;21,"60258-0514-01 ")
 ;;479
 ;;21,"60258-0515-01 ")
 ;;463
 ;;21,"60258-0516-01 ")
 ;;469
 ;;21,"60258-0517-09 ")
 ;;467
 ;;21,"60258-0801-16 ")
 ;;390
 ;;21,"60258-0802-15 ")
 ;;391
 ;;21,"60258-0803-01 ")
 ;;438
 ;;21,"60258-0804-01 ")
 ;;64
 ;;21,"60258-0822-16 ")
 ;;102
 ;;21,"60258-0822-28 ")
 ;;103
 ;;21,"60267-0301-00 ")
 ;;489
 ;;21,"60267-0742-30 ")
 ;;28
 ;;21,"60432-0009-04 ")
 ;;104
 ;;21,"60432-0009-16 ")
 ;;105
 ;;21,"60432-0009-28 ")
 ;;106
 ;;21,"60432-0103-15 ")
 ;;392
 ;;21,"60575-0177-19 ")
 ;;57
 ;;21,"60760-0754-30 ")
 ;;169
 ;;21,"61355-0002-10 ")
 ;;348
 ;;21,"61355-0003-10 ")
 ;;372
 ;;21,"61355-0004-10 ")
 ;;399
 ;;21,"61451-2183-01 ")
 ;;464
 ;;21,"61451-2225-01 ")
 ;;400
 ;;21,"61451-2260-01 ")
 ;;417
 ;;21,"61451-5015-07 ")
 ;;310
 ;;21,"61451-5016-07 ")
 ;;313
 ;;21,"61646-0155-01 ")
 ;;439
 ;;21,"61646-0156-01 ")
 ;;373
 ;;21,"62174-0405-07 ")
 ;;42
 ;;21,"62174-0408-07 ")
 ;;54
 ;;21,"62175-0101-01 ")
 ;;349
 ;;21,"62175-0102-01 ")
 ;;374
 ;;21,"62175-0103-01 ")
 ;;418
 ;;21,"62175-0104-16 ")
 ;;393
 ;;21,"62175-0105-15 ")
 ;;394
 ;;21,"62175-0108-01 ")
 ;;440
 ;;21,"63323-0234-01 ")
 ;;43
 ;;21,"63323-0234-20 ")
 ;;44
 ;;21,"63323-0243-01 ")
 ;;46
 ;;21,"63323-0246-01 ")
 ;;55
 ;;21,"63323-0268-01 ")
 ;;491
 ;;21,"63323-0268-25 ")
 ;;492
 ;;21,"63323-0270-01 ")
 ;;494
 ;;21,"63717-0512-01 ")
 ;;480
 ;;21,"63717-0810-01 ")
 ;;29
 ;;21,"63717-0840-01 ")
 ;;490
 ;;21,"63874-0309-01 ")
 ;;170
 ;;21,"63874-0309-02 ")
 ;;171
 ;;21,"63874-0309-04 ")
 ;;172
 ;;21,"63874-0309-15 ")
 ;;173
 ;;21,"63874-0309-20 ")
 ;;174
 ;;21,"63874-0309-30 ")
 ;;175
 ;;21,"63874-0309-40 ")
 ;;176
 ;;21,"63874-0309-42 ")
 ;;177
 ;;21,"63874-0309-50 ")
 ;;178
 ;;21,"63874-0309-60 ")
 ;;179
 ;;21,"63874-0309-72 ")
 ;;180
 ;;21,"63874-0309-74 ")
 ;;181
 ;;21,"63874-0309-77 ")
 ;;182
 ;;21,"63874-0724-12 ")
 ;;107
 ;;21,"64125-0102-01 ")
 ;;307
 ;;21,"64125-0128-10 ")
 ;;183
 ;;21,"64543-0111-01 ")
 ;;375
 ;;21,"64543-0112-01 ")
 ;;441
 ;;21,"64543-0118-90 ")
 ;;442
 ;;21,"64731-0295-01 ")
 ;;401
 ;;21,"64731-0300-01 ")
 ;;350
 ;;21,"64731-0305-01 ")
 ;;376
 ;;21,"64731-0860-01 ")
 ;;481
 ;;21,"65162-0301-10 ")
 ;;272
 ;;21,"65234-0074-05 ")
 ;;193
 ;;21,"65234-0074-10 ")
 ;;194
 ;;21,"66213-0421-10 ")
 ;;65
 ;;21,"66213-0421-50 ")
 ;;66
 ;;21,"66213-0422-04 ")
 ;;108
 ;;21,"66213-0422-16 ")
 ;;109
 ;;21,"66213-0423-04 ")
 ;;110
 ;;21,"66213-0423-16 ")
 ;;111
 ;;21,"66213-0425-10 ")
 ;;184
 ;;21,"66213-0425-11 ")
 ;;185
 ;;21,"66346-0082-23 ")
 ;;59
 ;;21,"66346-0082-31 ")
 ;;60
 ;;21,"66346-0152-23 ")
 ;;61
 ;;21,"66346-0152-31 ")
 ;;62
 ;;21,"66479-0860-01 ")
 ;;482
 ;;21,"66663-0219-01 ")
 ;;472
 ;;21,"66663-0702-01 ")
 ;;319
 ;;21,"66934-0200-30 ")
 ;;395
 ;;21,"66993-0402-02 ")
 ;;402
 ;;21,"67204-0531-01 ")
 ;;470
 ;;21,"67555-0155-10 ")
 ;;320
 ;;21,"68013-0005-01 ")
 ;;351
 ;;21,"68115-0041-20 ")
 ;;186
 ;;21,"68115-0041-30 ")
 ;;187
 ;;21,"68115-0118-15 ")
 ;;273
 ;;21,"68115-0118-20 ")
 ;;274
 ;;21,"68115-0118-30 ")
 ;;275
 ;;21,"68115-0678-00 ")
 ;;352
 ;;21,"68115-0788-00 ")
 ;;308
 ;;21,"68115-0897-04 ")
 ;;112
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
 ;;9002226.02101,"628,00076-0805-03 ",.01)
 ;;00076-0805-03
 ;;9002226.02101,"628,00076-0805-03 ",.02)
 ;;00076-0805-03
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
 ;;9002226.02101,"628,00182-1048-10 ",.01)
 ;;00182-1048-10
 ;;9002226.02101,"628,00182-1048-10 ",.02)
 ;;00182-1048-10
 ;;9002226.02101,"628,00182-1607-01 ",.01)
 ;;00182-1607-01
 ;;9002226.02101,"628,00182-1607-01 ",.02)
 ;;00182-1607-01
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
 ;;9002226.02101,"628,00182-8180-89 ",.01)
 ;;00182-8180-89
 ;;9002226.02101,"628,00182-8180-89 ",.02)
 ;;00182-8180-89
 ;;9002226.02101,"628,00185-0024-01 ",.01)
 ;;00185-0024-01
 ;;9002226.02101,"628,00185-0024-01 ",.02)
 ;;00185-0024-01
 ;;9002226.02101,"628,00185-0024-05 ",.01)
 ;;00185-0024-05
 ;;9002226.02101,"628,00185-0024-05 ",.02)
 ;;00185-0024-05
 ;;9002226.02101,"628,00185-0024-10 ",.01)
 ;;00185-0024-10
 ;;9002226.02101,"628,00185-0024-10 ",.02)
 ;;00185-0024-10
 ;;9002226.02101,"628,00185-0230-01 ",.01)
 ;;00185-0230-01
 ;;9002226.02101,"628,00185-0230-01 ",.02)
 ;;00185-0230-01
 ;;9002226.02101,"628,00185-0230-10 ",.01)
 ;;00185-0230-10
 ;;9002226.02101,"628,00185-0230-10 ",.02)
 ;;00185-0230-10
 ;;9002226.02101,"628,00187-0500-01 ",.01)
 ;;00187-0500-01
 ;;9002226.02101,"628,00187-0500-01 ",.02)
 ;;00187-0500-01
 ;;9002226.02101,"628,00187-0500-02 ",.01)
 ;;00187-0500-02
 ;;9002226.02101,"628,00187-0500-02 ",.02)
 ;;00187-0500-02
 ;;9002226.02101,"628,00223-0425-01 ",.01)
 ;;00223-0425-01
 ;;9002226.02101,"628,00223-0425-01 ",.02)
 ;;00223-0425-01
 ;;9002226.02101,"628,00223-0425-03 ",.01)
 ;;00223-0425-03
 ;;9002226.02101,"628,00223-0425-03 ",.02)
 ;;00223-0425-03
 ;;9002226.02101,"628,00223-6419-01 ",.01)
 ;;00223-6419-01
 ;;9002226.02101,"628,00223-6419-01 ",.02)
 ;;00223-6419-01
 ;;9002226.02101,"628,00223-6419-02 ",.01)
 ;;00223-6419-02
 ;;9002226.02101,"628,00223-6419-02 ",.02)
 ;;00223-6419-02
 ;;9002226.02101,"628,00223-6419-03 ",.01)
 ;;00223-6419-03
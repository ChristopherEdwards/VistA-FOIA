BGP9SXD ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP HEDIS ANTIANXIETY NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS ANTIANXIETY NDC
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
 ;;21,"00008-0002-03 ")
 ;;1
 ;;21,"00008-0091-02 ")
 ;;2
 ;;21,"00037-1001-01 ")
 ;;3
 ;;21,"00037-1001-02 ")
 ;;4
 ;;21,"00037-1001-03 ")
 ;;5
 ;;21,"00037-1101-01 ")
 ;;6
 ;;21,"00115-3888-01 ")
 ;;7
 ;;21,"00115-3888-03 ")
 ;;8
 ;;21,"00115-3890-01 ")
 ;;9
 ;;21,"00115-3890-03 ")
 ;;10
 ;;21,"00182-0294-01 ")
 ;;11
 ;;21,"00182-0294-10 ")
 ;;12
 ;;21,"00185-0716-01 ")
 ;;13
 ;;21,"00185-0716-10 ")
 ;;14
 ;;21,"00185-0717-01 ")
 ;;15
 ;;21,"00185-0717-10 ")
 ;;16
 ;;21,"00247-1031-28 ")
 ;;17
 ;;21,"00364-0160-01 ")
 ;;18
 ;;21,"00364-0160-02 ")
 ;;19
 ;;21,"00364-0161-01 ")
 ;;20
 ;;21,"00364-0161-02 ")
 ;;21
 ;;21,"00405-0115-01 ")
 ;;22
 ;;21,"00405-0115-03 ")
 ;;23
 ;;21,"00405-0116-01 ")
 ;;24
 ;;21,"00405-0116-03 ")
 ;;25
 ;;21,"00536-4005-01 ")
 ;;26
 ;;21,"00536-4006-01 ")
 ;;27
 ;;21,"00591-5238-01 ")
 ;;28
 ;;21,"00591-5238-10 ")
 ;;29
 ;;21,"00591-5239-01 ")
 ;;30
 ;;21,"00591-5239-10 ")
 ;;31
 ;;21,"00615-0414-10 ")
 ;;32
 ;;21,"00615-0447-01 ")
 ;;33
 ;;21,"00839-5004-06 ")
 ;;34
 ;;21,"00839-5004-16 ")
 ;;35
 ;;21,"00839-5070-06 ")
 ;;36
 ;;21,"00904-0044-60 ")
 ;;37
 ;;21,"00904-0044-80 ")
 ;;38
 ;;21,"00904-0045-60 ")
 ;;39
 ;;21,"00904-0045-61 ")
 ;;40
 ;;21,"00904-0045-80 ")
 ;;41
 ;;21,"10551-0091-10 ")
 ;;42
 ;;21,"51641-0325-01 ")
 ;;43
 ;;21,"51641-0325-10 ")
 ;;44
 ;;21,"51641-0327-01 ")
 ;;45
 ;;21,"51641-0327-10 ")
 ;;46
 ;;21,"52544-0804-01 ")
 ;;47
 ;;21,"52544-0805-01 ")
 ;;48
 ;;21,"54569-0935-00 ")
 ;;49
 ;;21,"54569-0935-02 ")
 ;;50
 ;;21,"64248-0091-10 ")
 ;;51
 ;;9002226,725,.01)
 ;;BGP HEDIS ANTIANXIETY NDC
 ;;9002226,725,.02)
 ;;@
 ;;9002226,725,.04)
 ;;n
 ;;9002226,725,.06)
 ;;@
 ;;9002226,725,.08)
 ;;@
 ;;9002226,725,.09)
 ;;@
 ;;9002226,725,.11)
 ;;@
 ;;9002226,725,.12)
 ;;@
 ;;9002226,725,.13)
 ;;1
 ;;9002226,725,.14)
 ;;@
 ;;9002226,725,.15)
 ;;@
 ;;9002226,725,.16)
 ;;@
 ;;9002226,725,.17)
 ;;@
 ;;9002226,725,3101)
 ;;@
 ;;9002226.02101,"725,00008-0002-03 ",.01)
 ;;00008-0002-03
 ;;9002226.02101,"725,00008-0002-03 ",.02)
 ;;00008-0002-03
 ;;9002226.02101,"725,00008-0091-02 ",.01)
 ;;00008-0091-02
 ;;9002226.02101,"725,00008-0091-02 ",.02)
 ;;00008-0091-02
 ;;9002226.02101,"725,00037-1001-01 ",.01)
 ;;00037-1001-01
 ;;9002226.02101,"725,00037-1001-01 ",.02)
 ;;00037-1001-01
 ;;9002226.02101,"725,00037-1001-02 ",.01)
 ;;00037-1001-02
 ;;9002226.02101,"725,00037-1001-02 ",.02)
 ;;00037-1001-02
 ;;9002226.02101,"725,00037-1001-03 ",.01)
 ;;00037-1001-03
 ;;9002226.02101,"725,00037-1001-03 ",.02)
 ;;00037-1001-03
 ;;9002226.02101,"725,00037-1101-01 ",.01)
 ;;00037-1101-01
 ;;9002226.02101,"725,00037-1101-01 ",.02)
 ;;00037-1101-01
 ;;9002226.02101,"725,00115-3888-01 ",.01)
 ;;00115-3888-01
 ;;9002226.02101,"725,00115-3888-01 ",.02)
 ;;00115-3888-01
 ;;9002226.02101,"725,00115-3888-03 ",.01)
 ;;00115-3888-03
 ;;9002226.02101,"725,00115-3888-03 ",.02)
 ;;00115-3888-03
 ;;9002226.02101,"725,00115-3890-01 ",.01)
 ;;00115-3890-01
 ;;9002226.02101,"725,00115-3890-01 ",.02)
 ;;00115-3890-01
 ;;9002226.02101,"725,00115-3890-03 ",.01)
 ;;00115-3890-03
 ;;9002226.02101,"725,00115-3890-03 ",.02)
 ;;00115-3890-03
 ;;9002226.02101,"725,00182-0294-01 ",.01)
 ;;00182-0294-01
 ;;9002226.02101,"725,00182-0294-01 ",.02)
 ;;00182-0294-01
 ;;9002226.02101,"725,00182-0294-10 ",.01)
 ;;00182-0294-10
 ;;9002226.02101,"725,00182-0294-10 ",.02)
 ;;00182-0294-10
 ;;9002226.02101,"725,00185-0716-01 ",.01)
 ;;00185-0716-01
 ;;9002226.02101,"725,00185-0716-01 ",.02)
 ;;00185-0716-01
 ;;9002226.02101,"725,00185-0716-10 ",.01)
 ;;00185-0716-10
 ;;9002226.02101,"725,00185-0716-10 ",.02)
 ;;00185-0716-10
 ;;9002226.02101,"725,00185-0717-01 ",.01)
 ;;00185-0717-01
 ;;9002226.02101,"725,00185-0717-01 ",.02)
 ;;00185-0717-01
 ;;9002226.02101,"725,00185-0717-10 ",.01)
 ;;00185-0717-10
 ;;9002226.02101,"725,00185-0717-10 ",.02)
 ;;00185-0717-10
 ;;9002226.02101,"725,00247-1031-28 ",.01)
 ;;00247-1031-28
 ;;9002226.02101,"725,00247-1031-28 ",.02)
 ;;00247-1031-28
 ;;9002226.02101,"725,00364-0160-01 ",.01)
 ;;00364-0160-01
 ;;9002226.02101,"725,00364-0160-01 ",.02)
 ;;00364-0160-01
 ;;9002226.02101,"725,00364-0160-02 ",.01)
 ;;00364-0160-02
 ;;9002226.02101,"725,00364-0160-02 ",.02)
 ;;00364-0160-02
 ;;9002226.02101,"725,00364-0161-01 ",.01)
 ;;00364-0161-01
 ;;9002226.02101,"725,00364-0161-01 ",.02)
 ;;00364-0161-01
 ;;9002226.02101,"725,00364-0161-02 ",.01)
 ;;00364-0161-02
 ;;9002226.02101,"725,00364-0161-02 ",.02)
 ;;00364-0161-02
 ;;9002226.02101,"725,00405-0115-01 ",.01)
 ;;00405-0115-01
 ;;9002226.02101,"725,00405-0115-01 ",.02)
 ;;00405-0115-01
 ;;9002226.02101,"725,00405-0115-03 ",.01)
 ;;00405-0115-03
 ;;9002226.02101,"725,00405-0115-03 ",.02)
 ;;00405-0115-03
 ;;9002226.02101,"725,00405-0116-01 ",.01)
 ;;00405-0116-01
 ;;9002226.02101,"725,00405-0116-01 ",.02)
 ;;00405-0116-01
 ;
OTHER ; OTHER ROUTINES
 D ^BGP9SXDB
 Q
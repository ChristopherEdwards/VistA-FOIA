BGP9YXT ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP ASTHMA INHALED STEROID NDC
 ;
 ; This routine loads Taxonomy BGP ASTHMA INHALED STEROID NDC
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
 ;;21,"00075-0060-37 ")
 ;;1
 ;;21,"00085-0649-02 ")
 ;;2
 ;;21,"00085-0736-04 ")
 ;;3
 ;;21,"00085-1341-01 ")
 ;;4
 ;;21,"00085-1341-02 ")
 ;;5
 ;;21,"00085-1341-03 ")
 ;;6
 ;;21,"00085-1341-04 ")
 ;;7
 ;;21,"00089-0175-40 ")
 ;;8
 ;;21,"00089-0177-80 ")
 ;;9
 ;;21,"00173-0491-00 ")
 ;;10
 ;;21,"00173-0494-00 ")
 ;;11
 ;;21,"00173-0495-00 ")
 ;;12
 ;;21,"00173-0497-00 ")
 ;;13
 ;;21,"00173-0498-00 ")
 ;;14
 ;;21,"00173-0499-00 ")
 ;;15
 ;;21,"00173-0504-00 ")
 ;;16
 ;;21,"00173-0509-00 ")
 ;;17
 ;;21,"00173-0511-00 ")
 ;;18
 ;;21,"00173-0695-00 ")
 ;;19
 ;;21,"00173-0695-02 ")
 ;;20
 ;;21,"00173-0696-00 ")
 ;;21
 ;;21,"00173-0696-02 ")
 ;;22
 ;;21,"00173-0697-00 ")
 ;;23
 ;;21,"00173-0697-02 ")
 ;;24
 ;;21,"00173-0715-00 ")
 ;;25
 ;;21,"00173-0716-00 ")
 ;;26
 ;;21,"00173-0717-00 ")
 ;;27
 ;;21,"00186-0370-20 ")
 ;;28
 ;;21,"00186-0370-28 ")
 ;;29
 ;;21,"00186-0372-20 ")
 ;;30
 ;;21,"00186-0372-28 ")
 ;;31
 ;;21,"00186-0915-42 ")
 ;;32
 ;;21,"00186-1988-04 ")
 ;;33
 ;;21,"00186-1989-04 ")
 ;;34
 ;;21,"00247-1973-60 ")
 ;;35
 ;;21,"00247-1983-60 ")
 ;;36
 ;;21,"00247-2215-60 ")
 ;;37
 ;;21,"51479-0011-03 ")
 ;;38
 ;;21,"52959-0286-03 ")
 ;;39
 ;;21,"52959-0585-00 ")
 ;;40
 ;;21,"52959-0596-01 ")
 ;;41
 ;;21,"52959-0598-01 ")
 ;;42
 ;;21,"54569-0053-00 ")
 ;;43
 ;;21,"54569-0067-00 ")
 ;;44
 ;;21,"54569-1004-00 ")
 ;;45
 ;;21,"54569-3656-00 ")
 ;;46
 ;;21,"54569-4540-00 ")
 ;;47
 ;;21,"54569-4602-00 ")
 ;;48
 ;;21,"54569-4603-00 ")
 ;;49
 ;;21,"54569-4863-00 ")
 ;;50
 ;;21,"54569-4896-00 ")
 ;;51
 ;;21,"54569-5162-00 ")
 ;;52
 ;;21,"54569-5163-00 ")
 ;;53
 ;;21,"54569-5241-00 ")
 ;;54
 ;;21,"54569-5242-00 ")
 ;;55
 ;;21,"54569-5243-00 ")
 ;;56
 ;;21,"54868-1268-01 ")
 ;;57
 ;;21,"54868-1269-01 ")
 ;;58
 ;;21,"54868-1841-01 ")
 ;;59
 ;;21,"54868-4182-00 ")
 ;;60
 ;;21,"54868-4264-00 ")
 ;;61
 ;;21,"54868-4295-00 ")
 ;;62
 ;;21,"54868-4392-00 ")
 ;;63
 ;;21,"54868-4516-00 ")
 ;;64
 ;;21,"54868-4517-00 ")
 ;;65
 ;;21,"54868-4518-00 ")
 ;;66
 ;;21,"54969-4741-00 ")
 ;;67
 ;;21,"58016-4604-01 ")
 ;;68
 ;;21,"58016-4812-01 ")
 ;;69
 ;;21,"58016-4813-01 ")
 ;;70
 ;;21,"58016-6075-01 ")
 ;;71
 ;;21,"58016-6207-01 ")
 ;;72
 ;;21,"59569-4822-00 ")
 ;;73
 ;;21,"68115-0657-01 ")
 ;;74
 ;;21,"68115-0760-01 ")
 ;;75
 ;;21,"68115-0924-60 ")
 ;;76
 ;;9002226,462,.01)
 ;;BGP ASTHMA INHALED STEROID NDC
 ;;9002226,462,.02)
 ;;@
 ;;9002226,462,.04)
 ;;n
 ;;9002226,462,.06)
 ;;@
 ;;9002226,462,.08)
 ;;@
 ;;9002226,462,.09)
 ;;3080528
 ;;9002226,462,.11)
 ;;@
 ;;9002226,462,.12)
 ;;@
 ;;9002226,462,.13)
 ;;1
 ;;9002226,462,.14)
 ;;@
 ;;9002226,462,.15)
 ;;@
 ;;9002226,462,.16)
 ;;@
 ;;9002226,462,.17)
 ;;@
 ;;9002226,462,3101)
 ;;@
 ;;9002226.02101,"462,00075-0060-37 ",.01)
 ;;00075-0060-37
 ;;9002226.02101,"462,00075-0060-37 ",.02)
 ;;00075-0060-37
 ;;9002226.02101,"462,00085-0649-02 ",.01)
 ;;00085-0649-02
 ;;9002226.02101,"462,00085-0649-02 ",.02)
 ;;00085-0649-02
 ;;9002226.02101,"462,00085-0736-04 ",.01)
 ;;00085-0736-04
 ;;9002226.02101,"462,00085-0736-04 ",.02)
 ;;00085-0736-04
 ;;9002226.02101,"462,00085-1341-01 ",.01)
 ;;00085-1341-01
 ;;9002226.02101,"462,00085-1341-01 ",.02)
 ;;00085-1341-01
 ;;9002226.02101,"462,00085-1341-02 ",.01)
 ;;00085-1341-02
 ;;9002226.02101,"462,00085-1341-02 ",.02)
 ;;00085-1341-02
 ;;9002226.02101,"462,00085-1341-03 ",.01)
 ;;00085-1341-03
 ;;9002226.02101,"462,00085-1341-03 ",.02)
 ;;00085-1341-03
 ;;9002226.02101,"462,00085-1341-04 ",.01)
 ;;00085-1341-04
 ;;9002226.02101,"462,00085-1341-04 ",.02)
 ;;00085-1341-04
 ;;9002226.02101,"462,00089-0175-40 ",.01)
 ;;00089-0175-40
 ;;9002226.02101,"462,00089-0175-40 ",.02)
 ;;00089-0175-40
 ;;9002226.02101,"462,00089-0177-80 ",.01)
 ;;00089-0177-80
 ;;9002226.02101,"462,00089-0177-80 ",.02)
 ;;00089-0177-80
 ;;9002226.02101,"462,00173-0491-00 ",.01)
 ;;00173-0491-00
 ;;9002226.02101,"462,00173-0491-00 ",.02)
 ;;00173-0491-00
 ;;9002226.02101,"462,00173-0494-00 ",.01)
 ;;00173-0494-00
 ;;9002226.02101,"462,00173-0494-00 ",.02)
 ;;00173-0494-00
 ;;9002226.02101,"462,00173-0495-00 ",.01)
 ;;00173-0495-00
 ;;9002226.02101,"462,00173-0495-00 ",.02)
 ;;00173-0495-00
 ;;9002226.02101,"462,00173-0497-00 ",.01)
 ;;00173-0497-00
 ;;9002226.02101,"462,00173-0497-00 ",.02)
 ;;00173-0497-00
 ;;9002226.02101,"462,00173-0498-00 ",.01)
 ;;00173-0498-00
 ;;9002226.02101,"462,00173-0498-00 ",.02)
 ;;00173-0498-00
 ;;9002226.02101,"462,00173-0499-00 ",.01)
 ;;00173-0499-00
 ;;9002226.02101,"462,00173-0499-00 ",.02)
 ;;00173-0499-00
 ;;9002226.02101,"462,00173-0504-00 ",.01)
 ;;00173-0504-00
 ;;9002226.02101,"462,00173-0504-00 ",.02)
 ;;00173-0504-00
 ;;9002226.02101,"462,00173-0509-00 ",.01)
 ;;00173-0509-00
 ;;9002226.02101,"462,00173-0509-00 ",.02)
 ;;00173-0509-00
 ;
OTHER ; OTHER ROUTINES
 D ^BGP9YXTB
 D ^BGP9YXTC
 Q
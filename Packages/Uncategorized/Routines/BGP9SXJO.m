BGP9SXJO ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"733,63874-0309-72 ",.01)
 ;;63874-0309-72
 ;;9002226.02101,"733,63874-0309-72 ",.02)
 ;;63874-0309-72
 ;;9002226.02101,"733,63874-0309-74 ",.01)
 ;;63874-0309-74
 ;;9002226.02101,"733,63874-0309-74 ",.02)
 ;;63874-0309-74
 ;;9002226.02101,"733,63874-0309-77 ",.01)
 ;;63874-0309-77
 ;;9002226.02101,"733,63874-0309-77 ",.02)
 ;;63874-0309-77
 ;;9002226.02101,"733,63874-0724-12 ",.01)
 ;;63874-0724-12
 ;;9002226.02101,"733,63874-0724-12 ",.02)
 ;;63874-0724-12
 ;;9002226.02101,"733,64125-0102-01 ",.01)
 ;;64125-0102-01
 ;;9002226.02101,"733,64125-0102-01 ",.02)
 ;;64125-0102-01
 ;;9002226.02101,"733,64125-0128-10 ",.01)
 ;;64125-0128-10
 ;;9002226.02101,"733,64125-0128-10 ",.02)
 ;;64125-0128-10
 ;;9002226.02101,"733,64543-0111-01 ",.01)
 ;;64543-0111-01
 ;;9002226.02101,"733,64543-0111-01 ",.02)
 ;;64543-0111-01
 ;;9002226.02101,"733,64543-0112-01 ",.01)
 ;;64543-0112-01
 ;;9002226.02101,"733,64543-0112-01 ",.02)
 ;;64543-0112-01
 ;;9002226.02101,"733,64543-0118-90 ",.01)
 ;;64543-0118-90
 ;;9002226.02101,"733,64543-0118-90 ",.02)
 ;;64543-0118-90
 ;;9002226.02101,"733,64731-0295-01 ",.01)
 ;;64731-0295-01
 ;;9002226.02101,"733,64731-0295-01 ",.02)
 ;;64731-0295-01
 ;;9002226.02101,"733,64731-0300-01 ",.01)
 ;;64731-0300-01
 ;;9002226.02101,"733,64731-0300-01 ",.02)
 ;;64731-0300-01
 ;;9002226.02101,"733,64731-0305-01 ",.01)
 ;;64731-0305-01
 ;;9002226.02101,"733,64731-0305-01 ",.02)
 ;;64731-0305-01
 ;;9002226.02101,"733,64731-0860-01 ",.01)
 ;;64731-0860-01
 ;;9002226.02101,"733,64731-0860-01 ",.02)
 ;;64731-0860-01
 ;;9002226.02101,"733,65162-0301-10 ",.01)
 ;;65162-0301-10
 ;;9002226.02101,"733,65162-0301-10 ",.02)
 ;;65162-0301-10
 ;;9002226.02101,"733,65234-0074-05 ",.01)
 ;;65234-0074-05
 ;;9002226.02101,"733,65234-0074-05 ",.02)
 ;;65234-0074-05
 ;;9002226.02101,"733,65234-0074-10 ",.01)
 ;;65234-0074-10
 ;;9002226.02101,"733,65234-0074-10 ",.02)
 ;;65234-0074-10
 ;;9002226.02101,"733,66213-0421-10 ",.01)
 ;;66213-0421-10
 ;;9002226.02101,"733,66213-0421-10 ",.02)
 ;;66213-0421-10
 ;;9002226.02101,"733,66213-0421-50 ",.01)
 ;;66213-0421-50
 ;;9002226.02101,"733,66213-0421-50 ",.02)
 ;;66213-0421-50
 ;;9002226.02101,"733,66213-0422-04 ",.01)
 ;;66213-0422-04
 ;;9002226.02101,"733,66213-0422-04 ",.02)
 ;;66213-0422-04
 ;;9002226.02101,"733,66213-0422-16 ",.01)
 ;;66213-0422-16
 ;;9002226.02101,"733,66213-0422-16 ",.02)
 ;;66213-0422-16
 ;;9002226.02101,"733,66213-0423-04 ",.01)
 ;;66213-0423-04
 ;;9002226.02101,"733,66213-0423-04 ",.02)
 ;;66213-0423-04
 ;;9002226.02101,"733,66213-0423-16 ",.01)
 ;;66213-0423-16
 ;;9002226.02101,"733,66213-0423-16 ",.02)
 ;;66213-0423-16
 ;;9002226.02101,"733,66213-0425-10 ",.01)
 ;;66213-0425-10
 ;;9002226.02101,"733,66213-0425-10 ",.02)
 ;;66213-0425-10
 ;;9002226.02101,"733,66213-0425-11 ",.01)
 ;;66213-0425-11
 ;;9002226.02101,"733,66213-0425-11 ",.02)
 ;;66213-0425-11
 ;;9002226.02101,"733,66346-0082-23 ",.01)
 ;;66346-0082-23
 ;;9002226.02101,"733,66346-0082-23 ",.02)
 ;;66346-0082-23
 ;;9002226.02101,"733,66346-0082-31 ",.01)
 ;;66346-0082-31
 ;;9002226.02101,"733,66346-0082-31 ",.02)
 ;;66346-0082-31
 ;;9002226.02101,"733,66346-0152-23 ",.01)
 ;;66346-0152-23
 ;;9002226.02101,"733,66346-0152-23 ",.02)
 ;;66346-0152-23
 ;;9002226.02101,"733,66346-0152-31 ",.01)
 ;;66346-0152-31
 ;;9002226.02101,"733,66346-0152-31 ",.02)
 ;;66346-0152-31
 ;;9002226.02101,"733,66479-0860-01 ",.01)
 ;;66479-0860-01
 ;;9002226.02101,"733,66479-0860-01 ",.02)
 ;;66479-0860-01
 ;;9002226.02101,"733,66663-0219-01 ",.01)
 ;;66663-0219-01
 ;;9002226.02101,"733,66663-0219-01 ",.02)
 ;;66663-0219-01
 ;;9002226.02101,"733,66663-0702-01 ",.01)
 ;;66663-0702-01
 ;;9002226.02101,"733,66663-0702-01 ",.02)
 ;;66663-0702-01
 ;;9002226.02101,"733,66934-0200-30 ",.01)
 ;;66934-0200-30
 ;;9002226.02101,"733,66934-0200-30 ",.02)
 ;;66934-0200-30
 ;;9002226.02101,"733,66993-0402-02 ",.01)
 ;;66993-0402-02
 ;;9002226.02101,"733,66993-0402-02 ",.02)
 ;;66993-0402-02
 ;;9002226.02101,"733,67204-0531-01 ",.01)
 ;;67204-0531-01
 ;;9002226.02101,"733,67204-0531-01 ",.02)
 ;;67204-0531-01
 ;;9002226.02101,"733,67555-0155-10 ",.01)
 ;;67555-0155-10
 ;;9002226.02101,"733,67555-0155-10 ",.02)
 ;;67555-0155-10
 ;;9002226.02101,"733,68013-0005-01 ",.01)
 ;;68013-0005-01
 ;;9002226.02101,"733,68013-0005-01 ",.02)
 ;;68013-0005-01
 ;;9002226.02101,"733,68115-0041-20 ",.01)
 ;;68115-0041-20
 ;;9002226.02101,"733,68115-0041-20 ",.02)
 ;;68115-0041-20
 ;;9002226.02101,"733,68115-0041-30 ",.01)
 ;;68115-0041-30
 ;;9002226.02101,"733,68115-0041-30 ",.02)
 ;;68115-0041-30
 ;;9002226.02101,"733,68115-0118-15 ",.01)
 ;;68115-0118-15
 ;;9002226.02101,"733,68115-0118-15 ",.02)
 ;;68115-0118-15
 ;;9002226.02101,"733,68115-0118-20 ",.01)
 ;;68115-0118-20
 ;;9002226.02101,"733,68115-0118-20 ",.02)
 ;;68115-0118-20
 ;;9002226.02101,"733,68115-0118-30 ",.01)
 ;;68115-0118-30
 ;;9002226.02101,"733,68115-0118-30 ",.02)
 ;;68115-0118-30
 ;;9002226.02101,"733,68115-0678-00 ",.01)
 ;;68115-0678-00
 ;;9002226.02101,"733,68115-0678-00 ",.02)
 ;;68115-0678-00
 ;;9002226.02101,"733,68115-0788-00 ",.01)
 ;;68115-0788-00
 ;;9002226.02101,"733,68115-0788-00 ",.02)
 ;;68115-0788-00
BGP9SXFE ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"561,00173-0682-20 ",.01)
 ;;00173-0682-20
 ;;9002226.02101,"561,00173-0682-20 ",.02)
 ;;00173-0682-20
 ;;9002226.02101,"561,00173-0682-24 ",.01)
 ;;00173-0682-24
 ;;9002226.02101,"561,00173-0682-24 ",.02)
 ;;00173-0682-24
 ;;9002226.02101,"561,00173-0695-00 ",.01)
 ;;00173-0695-00
 ;;9002226.02101,"561,00173-0695-00 ",.02)
 ;;00173-0695-00
 ;;9002226.02101,"561,00173-0695-02 ",.01)
 ;;00173-0695-02
 ;;9002226.02101,"561,00173-0695-02 ",.02)
 ;;00173-0695-02
 ;;9002226.02101,"561,00173-0695-04 ",.01)
 ;;00173-0695-04
 ;;9002226.02101,"561,00173-0695-04 ",.02)
 ;;00173-0695-04
 ;;9002226.02101,"561,00173-0696-00 ",.01)
 ;;00173-0696-00
 ;;9002226.02101,"561,00173-0696-00 ",.02)
 ;;00173-0696-00
 ;;9002226.02101,"561,00173-0696-02 ",.01)
 ;;00173-0696-02
 ;;9002226.02101,"561,00173-0696-02 ",.02)
 ;;00173-0696-02
 ;;9002226.02101,"561,00173-0696-04 ",.01)
 ;;00173-0696-04
 ;;9002226.02101,"561,00173-0696-04 ",.02)
 ;;00173-0696-04
 ;;9002226.02101,"561,00173-0697-00 ",.01)
 ;;00173-0697-00
 ;;9002226.02101,"561,00173-0697-00 ",.02)
 ;;00173-0697-00
 ;;9002226.02101,"561,00173-0697-02 ",.01)
 ;;00173-0697-02
 ;;9002226.02101,"561,00173-0697-02 ",.02)
 ;;00173-0697-02
 ;;9002226.02101,"561,00173-0697-04 ",.01)
 ;;00173-0697-04
 ;;9002226.02101,"561,00173-0697-04 ",.02)
 ;;00173-0697-04
 ;;9002226.02101,"561,00173-0715-00 ",.01)
 ;;00173-0715-00
 ;;9002226.02101,"561,00173-0715-00 ",.02)
 ;;00173-0715-00
 ;;9002226.02101,"561,00173-0716-00 ",.01)
 ;;00173-0716-00
 ;;9002226.02101,"561,00173-0716-00 ",.02)
 ;;00173-0716-00
 ;;9002226.02101,"561,00173-0717-00 ",.01)
 ;;00173-0717-00
 ;;9002226.02101,"561,00173-0717-00 ",.02)
 ;;00173-0717-00
 ;;9002226.02101,"561,00173-0718-00 ",.01)
 ;;00173-0718-00
 ;;9002226.02101,"561,00173-0718-00 ",.02)
 ;;00173-0718-00
 ;;9002226.02101,"561,00173-0718-20 ",.01)
 ;;00173-0718-20
 ;;9002226.02101,"561,00173-0718-20 ",.02)
 ;;00173-0718-20
 ;;9002226.02101,"561,00173-0719-00 ",.01)
 ;;00173-0719-00
 ;;9002226.02101,"561,00173-0719-00 ",.02)
 ;;00173-0719-00
 ;;9002226.02101,"561,00173-0719-20 ",.01)
 ;;00173-0719-20
 ;;9002226.02101,"561,00173-0719-20 ",.02)
 ;;00173-0719-20
 ;;9002226.02101,"561,00173-0720-00 ",.01)
 ;;00173-0720-00
 ;;9002226.02101,"561,00173-0720-00 ",.02)
 ;;00173-0720-00
 ;;9002226.02101,"561,00173-0720-20 ",.01)
 ;;00173-0720-20
 ;;9002226.02101,"561,00173-0720-20 ",.02)
 ;;00173-0720-20
 ;;9002226.02101,"561,00182-6014-65 ",.01)
 ;;00182-6014-65
 ;;9002226.02101,"561,00182-6014-65 ",.02)
 ;;00182-6014-65
 ;;9002226.02101,"561,00186-0370-20 ",.01)
 ;;00186-0370-20
 ;;9002226.02101,"561,00186-0370-20 ",.02)
 ;;00186-0370-20
 ;;9002226.02101,"561,00186-0370-28 ",.01)
 ;;00186-0370-28
 ;;9002226.02101,"561,00186-0370-28 ",.02)
 ;;00186-0370-28
 ;;9002226.02101,"561,00186-0372-20 ",.01)
 ;;00186-0372-20
 ;;9002226.02101,"561,00186-0372-20 ",.02)
 ;;00186-0372-20
 ;;9002226.02101,"561,00186-0372-28 ",.01)
 ;;00186-0372-28
 ;;9002226.02101,"561,00186-0372-28 ",.02)
 ;;00186-0372-28
 ;;9002226.02101,"561,00186-0915-42 ",.01)
 ;;00186-0915-42
 ;;9002226.02101,"561,00186-0915-42 ",.02)
 ;;00186-0915-42
 ;;9002226.02101,"561,00186-0916-12 ",.01)
 ;;00186-0916-12
 ;;9002226.02101,"561,00186-0916-12 ",.02)
 ;;00186-0916-12
 ;;9002226.02101,"561,00186-0917-06 ",.01)
 ;;00186-0917-06
 ;;9002226.02101,"561,00186-0917-06 ",.02)
 ;;00186-0917-06
 ;;9002226.02101,"561,00186-1988-04 ",.01)
 ;;00186-1988-04
 ;;9002226.02101,"561,00186-1988-04 ",.02)
 ;;00186-1988-04
 ;;9002226.02101,"561,00186-1989-04 ",.01)
 ;;00186-1989-04
 ;;9002226.02101,"561,00186-1989-04 ",.02)
 ;;00186-1989-04
 ;;9002226.02101,"561,00186-1990-04 ",.01)
 ;;00186-1990-04
 ;;9002226.02101,"561,00186-1990-04 ",.02)
 ;;00186-1990-04
 ;;9002226.02101,"561,00247-0084-17 ",.01)
 ;;00247-0084-17
 ;;9002226.02101,"561,00247-0084-17 ",.02)
 ;;00247-0084-17
 ;;9002226.02101,"561,00247-0084-86 ",.01)
 ;;00247-0084-86
 ;;9002226.02101,"561,00247-0084-86 ",.02)
 ;;00247-0084-86
 ;;9002226.02101,"561,00247-0171-10 ",.01)
 ;;00247-0171-10
 ;;9002226.02101,"561,00247-0171-10 ",.02)
 ;;00247-0171-10
 ;;9002226.02101,"561,00247-0171-12 ",.01)
 ;;00247-0171-12
 ;;9002226.02101,"561,00247-0171-12 ",.02)
 ;;00247-0171-12
 ;;9002226.02101,"561,00247-0171-30 ",.01)
 ;;00247-0171-30
 ;;9002226.02101,"561,00247-0171-30 ",.02)
 ;;00247-0171-30
 ;;9002226.02101,"561,00247-0171-75 ",.01)
 ;;00247-0171-75
 ;;9002226.02101,"561,00247-0171-75 ",.02)
 ;;00247-0171-75
 ;;9002226.02101,"561,00247-0190-20 ",.01)
 ;;00247-0190-20
 ;;9002226.02101,"561,00247-0190-20 ",.02)
 ;;00247-0190-20
 ;;9002226.02101,"561,00247-0348-17 ",.01)
 ;;00247-0348-17
 ;;9002226.02101,"561,00247-0348-17 ",.02)
 ;;00247-0348-17
 ;;9002226.02101,"561,00247-0588-41 ",.01)
 ;;00247-0588-41
 ;;9002226.02101,"561,00247-0588-41 ",.02)
 ;;00247-0588-41
 ;;9002226.02101,"561,00247-0634-17 ",.01)
 ;;00247-0634-17
 ;;9002226.02101,"561,00247-0634-17 ",.02)
 ;;00247-0634-17
 ;;9002226.02101,"561,00247-0657-10 ",.01)
 ;;00247-0657-10
 ;;9002226.02101,"561,00247-0657-10 ",.02)
 ;;00247-0657-10
 ;;9002226.02101,"561,00247-0657-47 ",.01)
 ;;00247-0657-47
 ;;9002226.02101,"561,00247-0657-47 ",.02)
 ;;00247-0657-47
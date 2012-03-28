BGP7LXLJ ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 29, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"629,00904-0300-40 ",.01)
 ;;00904-0300-40
 ;;9002226.02101,"629,00904-0300-40 ",.02)
 ;;00904-0300-40
 ;;9002226.02101,"629,00904-0300-60 ",.01)
 ;;00904-0300-60
 ;;9002226.02101,"629,00904-0300-60 ",.02)
 ;;00904-0300-60
 ;;9002226.02101,"629,00904-0302-40 ",.01)
 ;;00904-0302-40
 ;;9002226.02101,"629,00904-0302-40 ",.02)
 ;;00904-0302-40
 ;;9002226.02101,"629,00904-0302-60 ",.01)
 ;;00904-0302-60
 ;;9002226.02101,"629,00904-0302-60 ",.02)
 ;;00904-0302-60
 ;;9002226.02101,"629,00904-0355-40 ",.01)
 ;;00904-0355-40
 ;;9002226.02101,"629,00904-0355-40 ",.02)
 ;;00904-0355-40
 ;;9002226.02101,"629,00904-0355-60 ",.01)
 ;;00904-0355-60
 ;;9002226.02101,"629,00904-0355-60 ",.02)
 ;;00904-0355-60
 ;;9002226.02101,"629,00904-0355-61 ",.01)
 ;;00904-0355-61
 ;;9002226.02101,"629,00904-0355-61 ",.02)
 ;;00904-0355-61
 ;;9002226.02101,"629,00904-0355-70 ",.01)
 ;;00904-0355-70
 ;;9002226.02101,"629,00904-0355-70 ",.02)
 ;;00904-0355-70
 ;;9002226.02101,"629,00904-0355-80 ",.01)
 ;;00904-0355-80
 ;;9002226.02101,"629,00904-0355-80 ",.02)
 ;;00904-0355-80
 ;;9002226.02101,"629,00904-0356-40 ",.01)
 ;;00904-0356-40
 ;;9002226.02101,"629,00904-0356-40 ",.02)
 ;;00904-0356-40
 ;;9002226.02101,"629,00904-0356-60 ",.01)
 ;;00904-0356-60
 ;;9002226.02101,"629,00904-0356-60 ",.02)
 ;;00904-0356-60
 ;;9002226.02101,"629,00904-0858-10 ",.01)
 ;;00904-0858-10
 ;;9002226.02101,"629,00904-0858-10 ",.02)
 ;;00904-0858-10
 ;;9002226.02101,"629,00904-2221-40 ",.01)
 ;;00904-2221-40
 ;;9002226.02101,"629,00904-2221-40 ",.02)
 ;;00904-2221-40
 ;;9002226.02101,"629,00904-2221-60 ",.01)
 ;;00904-2221-60
 ;;9002226.02101,"629,00904-2221-60 ",.02)
 ;;00904-2221-60
 ;;9002226.02101,"629,00904-2221-61 ",.01)
 ;;00904-2221-61
 ;;9002226.02101,"629,00904-2221-61 ",.02)
 ;;00904-2221-61
 ;;9002226.02101,"629,00904-2221-80 ",.01)
 ;;00904-2221-80
 ;;9002226.02101,"629,00904-2221-80 ",.02)
 ;;00904-2221-80
 ;;9002226.02101,"629,00904-2364-40 ",.01)
 ;;00904-2364-40
 ;;9002226.02101,"629,00904-2364-40 ",.02)
 ;;00904-2364-40
 ;;9002226.02101,"629,00904-2364-60 ",.01)
 ;;00904-2364-60
 ;;9002226.02101,"629,00904-2364-60 ",.02)
 ;;00904-2364-60
 ;;9002226.02101,"629,00904-2364-61 ",.01)
 ;;00904-2364-61
 ;;9002226.02101,"629,00904-2364-61 ",.02)
 ;;00904-2364-61
 ;;9002226.02101,"629,00904-2365-40 ",.01)
 ;;00904-2365-40
 ;;9002226.02101,"629,00904-2365-40 ",.02)
 ;;00904-2365-40
 ;;9002226.02101,"629,00904-2365-60 ",.01)
 ;;00904-2365-60
 ;;9002226.02101,"629,00904-2365-60 ",.02)
 ;;00904-2365-60
 ;;9002226.02101,"629,00904-5238-60 ",.01)
 ;;00904-5238-60
 ;;9002226.02101,"629,00904-5238-60 ",.02)
 ;;00904-5238-60
 ;;9002226.02101,"629,00904-5239-60 ",.01)
 ;;00904-5239-60
 ;;9002226.02101,"629,00904-5239-60 ",.02)
 ;;00904-5239-60
 ;;9002226.02101,"629,00904-7586-40 ",.01)
 ;;00904-7586-40
 ;;9002226.02101,"629,00904-7586-40 ",.02)
 ;;00904-7586-40
 ;;9002226.02101,"629,00904-7586-60 ",.01)
 ;;00904-7586-60
 ;;9002226.02101,"629,00904-7586-60 ",.02)
 ;;00904-7586-60
 ;;9002226.02101,"629,00904-7586-61 ",.01)
 ;;00904-7586-61
 ;;9002226.02101,"629,00904-7586-61 ",.02)
 ;;00904-7586-61
 ;;9002226.02101,"629,00904-7586-80 ",.01)
 ;;00904-7586-80
 ;;9002226.02101,"629,00904-7586-80 ",.02)
 ;;00904-7586-80
 ;;9002226.02101,"629,00904-7809-40 ",.01)
 ;;00904-7809-40
 ;;9002226.02101,"629,00904-7809-40 ",.02)
 ;;00904-7809-40
 ;;9002226.02101,"629,00904-7809-60 ",.01)
 ;;00904-7809-60
 ;;9002226.02101,"629,00904-7809-60 ",.02)
 ;;00904-7809-60
 ;;9002226.02101,"629,00904-7809-61 ",.01)
 ;;00904-7809-61
 ;;9002226.02101,"629,00904-7809-61 ",.02)
 ;;00904-7809-61
 ;;9002226.02101,"629,00904-7809-80 ",.01)
 ;;00904-7809-80
 ;;9002226.02101,"629,00904-7809-80 ",.02)
 ;;00904-7809-80
 ;;9002226.02101,"629,00917-0339-10 ",.01)
 ;;00917-0339-10
 ;;9002226.02101,"629,00917-0339-10 ",.02)
 ;;00917-0339-10
 ;;9002226.02101,"629,10023-0190-10 ",.01)
 ;;10023-0190-10
 ;;9002226.02101,"629,10023-0190-10 ",.02)
 ;;10023-0190-10
 ;;9002226.02101,"629,10023-0220-90 ",.01)
 ;;10023-0220-90
 ;;9002226.02101,"629,10023-0220-90 ",.02)
 ;;10023-0220-90
 ;;9002226.02101,"629,11584-0411-01 ",.01)
 ;;11584-0411-01
 ;;9002226.02101,"629,11584-0411-01 ",.02)
 ;;11584-0411-01
 ;;9002226.02101,"629,11584-0411-05 ",.01)
 ;;11584-0411-05
 ;;9002226.02101,"629,11584-0411-05 ",.02)
 ;;11584-0411-05
 ;;9002226.02101,"629,11584-1016-02 ",.01)
 ;;11584-1016-02
 ;;9002226.02101,"629,11584-1016-02 ",.02)
 ;;11584-1016-02
 ;;9002226.02101,"629,11584-1016-05 ",.01)
 ;;11584-1016-05
 ;;9002226.02101,"629,11584-1016-05 ",.02)
 ;;11584-1016-05
 ;;9002226.02101,"629,11584-1033-01 ",.01)
 ;;11584-1033-01
 ;;9002226.02101,"629,11584-1033-01 ",.02)
 ;;11584-1033-01
 ;;9002226.02101,"629,11845-0352-01 ",.01)
 ;;11845-0352-01
 ;;9002226.02101,"629,11845-0352-01 ",.02)
 ;;11845-0352-01
 ;;9002226.02101,"629,11845-0352-03 ",.01)
 ;;11845-0352-03
 ;;9002226.02101,"629,11845-0352-03 ",.02)
 ;;11845-0352-03
 ;;9002226.02101,"629,11845-0353-01 ",.01)
 ;;11845-0353-01
 ;;9002226.02101,"629,11845-0353-01 ",.02)
 ;;11845-0353-01
 ;;9002226.02101,"629,11845-0353-03 ",.01)
 ;;11845-0353-03
 ;;9002226.02101,"629,11845-0353-03 ",.02)
 ;;11845-0353-03
 ;;9002226.02101,"629,11845-0380-03 ",.01)
 ;;11845-0380-03
 ;;9002226.02101,"629,11845-0380-03 ",.02)
 ;;11845-0380-03
 ;;9002226.02101,"629,12280-0044-00 ",.01)
 ;;12280-0044-00
 ;;9002226.02101,"629,12280-0044-00 ",.02)
 ;;12280-0044-00
 ;;9002226.02101,"629,12280-0142-00 ",.01)
 ;;12280-0142-00
 ;;9002226.02101,"629,12280-0142-00 ",.02)
 ;;12280-0142-00
 ;;9002226.02101,"629,12908-0111-01 ",.01)
 ;;12908-0111-01
 ;;9002226.02101,"629,12908-0111-01 ",.02)
 ;;12908-0111-01
 ;;9002226.02101,"629,12908-0111-02 ",.01)
 ;;12908-0111-02
 ;;9002226.02101,"629,12908-0111-02 ",.02)
 ;;12908-0111-02
 ;;9002226.02101,"629,12908-0112-01 ",.01)
 ;;12908-0112-01
 ;;9002226.02101,"629,12908-0112-01 ",.02)
 ;;12908-0112-01
 ;;9002226.02101,"629,12908-0112-02 ",.01)
 ;;12908-0112-02
 ;;9002226.02101,"629,12908-0112-02 ",.02)
 ;;12908-0112-02
 ;;9002226.02101,"629,12908-0113-01 ",.01)
 ;;12908-0113-01
 ;;9002226.02101,"629,12908-0113-01 ",.02)
 ;;12908-0113-01
 ;;9002226.02101,"629,12908-0113-02 ",.01)
 ;;12908-0113-02
 ;;9002226.02101,"629,12908-0113-02 ",.02)
 ;;12908-0113-02
 ;;9002226.02101,"629,12908-0201-01 ",.01)
 ;;12908-0201-01
 ;;9002226.02101,"629,12908-0201-01 ",.02)
 ;;12908-0201-01
 ;;9002226.02101,"629,12908-0202-01 ",.01)
 ;;12908-0202-01
 ;;9002226.02101,"629,12908-0202-01 ",.02)
 ;;12908-0202-01
 ;;9002226.02101,"629,12908-0204-01 ",.01)
 ;;12908-0204-01
 ;;9002226.02101,"629,12908-0204-01 ",.02)
 ;;12908-0204-01
 ;;9002226.02101,"629,12908-0301-01 ",.01)
 ;;12908-0301-01
 ;;9002226.02101,"629,12908-0301-01 ",.02)
 ;;12908-0301-01
 ;;9002226.02101,"629,12908-0302-01 ",.01)
 ;;12908-0302-01
 ;;9002226.02101,"629,12908-0302-01 ",.02)
 ;;12908-0302-01
 ;;9002226.02101,"629,12908-0305-01 ",.01)
 ;;12908-0305-01
 ;;9002226.02101,"629,12908-0305-01 ",.02)
 ;;12908-0305-01
 ;;9002226.02101,"629,12908-0306-01 ",.01)
 ;;12908-0306-01
 ;;9002226.02101,"629,12908-0306-01 ",.02)
 ;;12908-0306-01
 ;;9002226.02101,"629,12908-0404-01 ",.01)
 ;;12908-0404-01
 ;;9002226.02101,"629,12908-0404-01 ",.02)
 ;;12908-0404-01
 ;;9002226.02101,"629,12908-0407-01 ",.01)
 ;;12908-0407-01
 ;;9002226.02101,"629,12908-0407-01 ",.02)
 ;;12908-0407-01
 ;;9002226.02101,"629,12908-0501-01 ",.01)
 ;;12908-0501-01
 ;;9002226.02101,"629,12908-0501-01 ",.02)
 ;;12908-0501-01
 ;;9002226.02101,"629,12908-0501-02 ",.01)
 ;;12908-0501-02
 ;;9002226.02101,"629,12908-0501-02 ",.02)
 ;;12908-0501-02
 ;;9002226.02101,"629,12908-0502-01 ",.01)
 ;;12908-0502-01
 ;;9002226.02101,"629,12908-0502-01 ",.02)
 ;;12908-0502-01
 ;;9002226.02101,"629,12908-0505-01 ",.01)
 ;;12908-0505-01
 ;;9002226.02101,"629,12908-0505-01 ",.02)
 ;;12908-0505-01
 ;;9002226.02101,"629,12908-7001-01 ",.01)
 ;;12908-7001-01
 ;;9002226.02101,"629,12908-7001-01 ",.02)
 ;;12908-7001-01
 ;;9002226.02101,"629,17022-2006-02 ",.01)
 ;;17022-2006-02
 ;;9002226.02101,"629,17022-2006-02 ",.02)
 ;;17022-2006-02
 ;;9002226.02101,"629,17022-2006-04 ",.01)
 ;;17022-2006-04
 ;;9002226.02101,"629,17022-2006-04 ",.02)
 ;;17022-2006-04
 ;;9002226.02101,"629,17022-8685-06 ",.01)
 ;;17022-8685-06
 ;;9002226.02101,"629,17022-8685-06 ",.02)
 ;;17022-8685-06
 ;;9002226.02101,"629,17224-0109-10 ",.01)
 ;;17224-0109-10
 ;;9002226.02101,"629,17224-0109-10 ",.02)
 ;;17224-0109-10
 ;;9002226.02101,"629,17224-0110-10 ",.01)
 ;;17224-0110-10
 ;;9002226.02101,"629,17224-0110-10 ",.02)
 ;;17224-0110-10
 ;;9002226.02101,"629,17224-0113-10 ",.01)
 ;;17224-0113-10
 ;;9002226.02101,"629,17224-0113-10 ",.02)
 ;;17224-0113-10
 ;;9002226.02101,"629,17224-0120-10 ",.01)
 ;;17224-0120-10
 ;;9002226.02101,"629,17224-0120-10 ",.02)
 ;;17224-0120-10
 ;;9002226.02101,"629,17224-0121-10 ",.01)
 ;;17224-0121-10
 ;;9002226.02101,"629,17224-0121-10 ",.02)
 ;;17224-0121-10
 ;;9002226.02101,"629,17224-0123-10 ",.01)
 ;;17224-0123-10
 ;;9002226.02101,"629,17224-0123-10 ",.02)
 ;;17224-0123-10
 ;;9002226.02101,"629,17224-0124-10 ",.01)
 ;;17224-0124-10
 ;;9002226.02101,"629,17224-0124-10 ",.02)
 ;;17224-0124-10
 ;;9002226.02101,"629,17236-0145-01 ",.01)
 ;;17236-0145-01
 ;;9002226.02101,"629,17236-0145-01 ",.02)
 ;;17236-0145-01
 ;;9002226.02101,"629,17236-0145-05 ",.01)
 ;;17236-0145-05
 ;;9002226.02101,"629,17236-0145-05 ",.02)
 ;;17236-0145-05
 ;;9002226.02101,"629,17236-0147-01 ",.01)
 ;;17236-0147-01
 ;;9002226.02101,"629,17236-0147-01 ",.02)
 ;;17236-0147-01
 ;;9002226.02101,"629,17236-0239-01 ",.01)
 ;;17236-0239-01
 ;;9002226.02101,"629,17236-0239-01 ",.02)
 ;;17236-0239-01
 ;;9002226.02101,"629,17236-0292-01 ",.01)
 ;;17236-0292-01
 ;;9002226.02101,"629,17236-0292-01 ",.02)
 ;;17236-0292-01
 ;;9002226.02101,"629,17236-0292-10 ",.01)
 ;;17236-0292-10
 ;;9002226.02101,"629,17236-0292-10 ",.02)
 ;;17236-0292-10
 ;;9002226.02101,"629,17236-0294-01 ",.01)
 ;;17236-0294-01
 ;;9002226.02101,"629,17236-0294-01 ",.02)
 ;;17236-0294-01
 ;;9002226.02101,"629,17236-0294-10 ",.01)
 ;;17236-0294-10
 ;;9002226.02101,"629,17236-0294-10 ",.02)
 ;;17236-0294-10
 ;;9002226.02101,"629,17236-0533-01 ",.01)
 ;;17236-0533-01
 ;;9002226.02101,"629,17236-0533-01 ",.02)
 ;;17236-0533-01
 ;;9002226.02101,"629,17236-0533-05 ",.01)
 ;;17236-0533-05
 ;;9002226.02101,"629,17236-0533-05 ",.02)
 ;;17236-0533-05
 ;;9002226.02101,"629,17236-0940-01 ",.01)
 ;;17236-0940-01
 ;;9002226.02101,"629,17236-0940-01 ",.02)
 ;;17236-0940-01
 ;;9002226.02101,"629,17236-0940-10 ",.01)
 ;;17236-0940-10
 ;;9002226.02101,"629,17236-0940-10 ",.02)
 ;;17236-0940-10
 ;;9002226.02101,"629,17314-8700-01 ",.01)
 ;;17314-8700-01
 ;;9002226.02101,"629,17314-8700-01 ",.02)
 ;;17314-8700-01
 ;;9002226.02101,"629,46703-0061-05 ",.01)
 ;;46703-0061-05
 ;;9002226.02101,"629,46703-0061-05 ",.02)
 ;;46703-0061-05
 ;;9002226.02101,"629,49727-0445-02 ",.01)
 ;;49727-0445-02
 ;;9002226.02101,"629,49727-0445-02 ",.02)
 ;;49727-0445-02
 ;;9002226.02101,"629,49727-0445-04 ",.01)
 ;;49727-0445-04
 ;;9002226.02101,"629,49727-0445-04 ",.02)
 ;;49727-0445-04
 ;;9002226.02101,"629,49727-0448-02 ",.01)
 ;;49727-0448-02
 ;;9002226.02101,"629,49727-0448-02 ",.02)
 ;;49727-0448-02
 ;;9002226.02101,"629,49727-0448-04 ",.01)
 ;;49727-0448-04
 ;;9002226.02101,"629,49727-0448-04 ",.02)
 ;;49727-0448-04
 ;;9002226.02101,"629,49884-0016-01 ",.01)
 ;;49884-0016-01
 ;;9002226.02101,"629,49884-0016-01 ",.02)
 ;;49884-0016-01
 ;;9002226.02101,"629,49884-0016-10 ",.01)
 ;;49884-0016-10
 ;;9002226.02101,"629,49884-0016-10 ",.02)
 ;;49884-0016-10
 ;;9002226.02101,"629,49884-0246-01 ",.01)
 ;;49884-0246-01
 ;;9002226.02101,"629,49884-0246-01 ",.02)
 ;;49884-0246-01
 ;;9002226.02101,"629,49884-0246-05 ",.01)
 ;;49884-0246-05
 ;;9002226.02101,"629,49884-0246-05 ",.02)
 ;;49884-0246-05
 ;;9002226.02101,"629,49884-0472-01 ",.01)
 ;;49884-0472-01
 ;;9002226.02101,"629,49884-0472-01 ",.02)
 ;;49884-0472-01
 ;;9002226.02101,"629,49884-0472-05 ",.01)
 ;;49884-0472-05
 ;;9002226.02101,"629,49884-0472-05 ",.02)
 ;;49884-0472-05
 ;;9002226.02101,"629,49884-0473-01 ",.01)
 ;;49884-0473-01
 ;;9002226.02101,"629,49884-0473-01 ",.02)
 ;;49884-0473-01
 ;;9002226.02101,"629,49884-0473-05 ",.01)
 ;;49884-0473-05
 ;;9002226.02101,"629,49884-0473-05 ",.02)
 ;;49884-0473-05
 ;;9002226.02101,"629,49999-0034-60 ",.01)
 ;;49999-0034-60
 ;;9002226.02101,"629,49999-0034-60 ",.02)
 ;;49999-0034-60
 ;;9002226.02101,"629,49999-0034-90 ",.01)
 ;;49999-0034-90
 ;;9002226.02101,"629,49999-0034-90 ",.02)
 ;;49999-0034-90
 ;;9002226.02101,"629,49999-0044-10 ",.01)
 ;;49999-0044-10
 ;;9002226.02101,"629,49999-0044-10 ",.02)
 ;;49999-0044-10
 ;;9002226.02101,"629,49999-0044-14 ",.01)
 ;;49999-0044-14
 ;;9002226.02101,"629,49999-0044-14 ",.02)
 ;;49999-0044-14
 ;;9002226.02101,"629,49999-0044-15 ",.01)
 ;;49999-0044-15
 ;;9002226.02101,"629,49999-0044-15 ",.02)
 ;;49999-0044-15
 ;;9002226.02101,"629,49999-0044-18 ",.01)
 ;;49999-0044-18
 ;;9002226.02101,"629,49999-0044-18 ",.02)
 ;;49999-0044-18
 ;;9002226.02101,"629,49999-0044-20 ",.01)
 ;;49999-0044-20
 ;;9002226.02101,"629,49999-0044-20 ",.02)
 ;;49999-0044-20
 ;;9002226.02101,"629,49999-0044-30 ",.01)
 ;;49999-0044-30
 ;;9002226.02101,"629,49999-0044-30 ",.02)
 ;;49999-0044-30
 ;;9002226.02101,"629,49999-0044-60 ",.01)
 ;;49999-0044-60
 ;;9002226.02101,"629,49999-0044-60 ",.02)
 ;;49999-0044-60
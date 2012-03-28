BGP9SXAI ; IHS/CMI/LAB - AB-CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"723,00555-0972-02 ",.02)
 ;;00555-0972-02
 ;;9002226.02101,"723,00555-0973-02 ",.01)
 ;;00555-0973-02
 ;;9002226.02101,"723,00555-0973-02 ",.02)
 ;;00555-0973-02
 ;;9002226.02101,"723,00555-0974-02 ",.01)
 ;;00555-0974-02
 ;;9002226.02101,"723,00555-0974-02 ",.02)
 ;;00555-0974-02
 ;;9002226.02101,"723,00585-0903-71 ",.01)
 ;;00585-0903-71
 ;;9002226.02101,"723,00585-0903-71 ",.02)
 ;;00585-0903-71
 ;;9002226.02101,"723,00585-0904-84 ",.01)
 ;;00585-0904-84
 ;;9002226.02101,"723,00585-0904-84 ",.02)
 ;;00585-0904-84
 ;;9002226.02101,"723,00591-0782-01 ",.01)
 ;;00591-0782-01
 ;;9002226.02101,"723,00591-0782-01 ",.02)
 ;;00591-0782-01
 ;;9002226.02101,"723,00591-0783-01 ",.01)
 ;;00591-0783-01
 ;;9002226.02101,"723,00591-0783-01 ",.02)
 ;;00591-0783-01
 ;;9002226.02101,"723,00591-3111-01 ",.01)
 ;;00591-3111-01
 ;;9002226.02101,"723,00591-3111-01 ",.02)
 ;;00591-3111-01
 ;;9002226.02101,"723,00591-5882-01 ",.01)
 ;;00591-5882-01
 ;;9002226.02101,"723,00591-5882-01 ",.02)
 ;;00591-5882-01
 ;;9002226.02101,"723,00591-5882-10 ",.01)
 ;;00591-5882-10
 ;;9002226.02101,"723,00591-5882-10 ",.02)
 ;;00591-5882-10
 ;;9002226.02101,"723,00591-5883-01 ",.01)
 ;;00591-5883-01
 ;;9002226.02101,"723,00591-5883-01 ",.02)
 ;;00591-5883-01
 ;;9002226.02101,"723,00591-5883-10 ",.01)
 ;;00591-5883-10
 ;;9002226.02101,"723,00591-5883-10 ",.02)
 ;;00591-5883-10
 ;;9002226.02101,"723,00591-5884-01 ",.01)
 ;;00591-5884-01
 ;;9002226.02101,"723,00591-5884-01 ",.02)
 ;;00591-5884-01
 ;;9002226.02101,"723,00591-5884-10 ",.01)
 ;;00591-5884-10
 ;;9002226.02101,"723,00591-5884-10 ",.02)
 ;;00591-5884-10
 ;;9002226.02101,"723,00603-4569-21 ",.01)
 ;;00603-4569-21
 ;;9002226.02101,"723,00603-4569-21 ",.02)
 ;;00603-4569-21
 ;;9002226.02101,"723,00603-4569-32 ",.01)
 ;;00603-4569-32
 ;;9002226.02101,"723,00603-4569-32 ",.02)
 ;;00603-4569-32
 ;;9002226.02101,"723,00603-4570-21 ",.01)
 ;;00603-4570-21
 ;;9002226.02101,"723,00603-4570-21 ",.02)
 ;;00603-4570-21
 ;;9002226.02101,"723,00603-4570-32 ",.01)
 ;;00603-4570-32
 ;;9002226.02101,"723,00603-4570-32 ",.02)
 ;;00603-4570-32
 ;;9002226.02101,"723,00603-4571-21 ",.01)
 ;;00603-4571-21
 ;;9002226.02101,"723,00603-4571-21 ",.02)
 ;;00603-4571-21
 ;;9002226.02101,"723,00603-4571-32 ",.01)
 ;;00603-4571-32
 ;;9002226.02101,"723,00603-4571-32 ",.02)
 ;;00603-4571-32
 ;;9002226.02101,"723,00603-4572-21 ",.01)
 ;;00603-4572-21
 ;;9002226.02101,"723,00603-4572-21 ",.02)
 ;;00603-4572-21
 ;;9002226.02101,"723,00603-5055-21 ",.01)
 ;;00603-5055-21
 ;;9002226.02101,"723,00603-5055-21 ",.02)
 ;;00603-5055-21
 ;;9002226.02101,"723,00603-5056-21 ",.01)
 ;;00603-5056-21
 ;;9002226.02101,"723,00603-5056-21 ",.02)
 ;;00603-5056-21
 ;;9002226.02101,"723,00603-5056-28 ",.01)
 ;;00603-5056-28
 ;;9002226.02101,"723,00603-5056-28 ",.02)
 ;;00603-5056-28
 ;;9002226.02101,"723,00603-5057-21 ",.01)
 ;;00603-5057-21
 ;;9002226.02101,"723,00603-5057-21 ",.02)
 ;;00603-5057-21
 ;;9002226.02101,"723,00603-5192-21 ",.01)
 ;;00603-5192-21
 ;;9002226.02101,"723,00603-5192-21 ",.02)
 ;;00603-5192-21
 ;;9002226.02101,"723,00603-5192-32 ",.01)
 ;;00603-5192-32
 ;;9002226.02101,"723,00603-5192-32 ",.02)
 ;;00603-5192-32
 ;;9002226.02101,"723,00677-0460-01 ",.01)
 ;;00677-0460-01
 ;;9002226.02101,"723,00677-0460-01 ",.02)
 ;;00677-0460-01
 ;;9002226.02101,"723,00677-1823-01 ",.01)
 ;;00677-1823-01
 ;;9002226.02101,"723,00677-1823-01 ",.02)
 ;;00677-1823-01
 ;;9002226.02101,"723,00677-1823-10 ",.01)
 ;;00677-1823-10
 ;;9002226.02101,"723,00677-1823-10 ",.02)
 ;;00677-1823-10
 ;;9002226.02101,"723,00677-1824-01 ",.01)
 ;;00677-1824-01
 ;;9002226.02101,"723,00677-1824-01 ",.02)
 ;;00677-1824-01
 ;;9002226.02101,"723,00677-1824-10 ",.01)
 ;;00677-1824-10
 ;;9002226.02101,"723,00677-1824-10 ",.02)
 ;;00677-1824-10
 ;;9002226.02101,"723,00781-1097-01 ",.01)
 ;;00781-1097-01
 ;;9002226.02101,"723,00781-1097-01 ",.02)
 ;;00781-1097-01
 ;;9002226.02101,"723,00781-1605-01 ",.01)
 ;;00781-1605-01
 ;;9002226.02101,"723,00781-1605-01 ",.02)
 ;;00781-1605-01
 ;;9002226.02101,"723,00781-1731-01 ",.01)
 ;;00781-1731-01
 ;;9002226.02101,"723,00781-1731-01 ",.02)
 ;;00781-1731-01
 ;;9002226.02101,"723,00781-1741-01 ",.01)
 ;;00781-1741-01
 ;;9002226.02101,"723,00781-1741-01 ",.02)
 ;;00781-1741-01
 ;;9002226.02101,"723,00781-1748-01 ",.01)
 ;;00781-1748-01
 ;;9002226.02101,"723,00781-1748-01 ",.02)
 ;;00781-1748-01
 ;;9002226.02101,"723,00781-1748-10 ",.01)
 ;;00781-1748-10
 ;;9002226.02101,"723,00781-1748-10 ",.02)
 ;;00781-1748-10
 ;;9002226.02101,"723,00781-1749-01 ",.01)
 ;;00781-1749-01
 ;;9002226.02101,"723,00781-1749-01 ",.02)
 ;;00781-1749-01
 ;;9002226.02101,"723,00781-1749-10 ",.01)
 ;;00781-1749-10
 ;;9002226.02101,"723,00781-1749-10 ",.02)
 ;;00781-1749-10
 ;;9002226.02101,"723,00781-1751-01 ",.01)
 ;;00781-1751-01
 ;;9002226.02101,"723,00781-1751-01 ",.02)
 ;;00781-1751-01
 ;;9002226.02101,"723,00781-1753-01 ",.01)
 ;;00781-1753-01
 ;;9002226.02101,"723,00781-1753-01 ",.02)
 ;;00781-1753-01
 ;;9002226.02101,"723,00781-1753-10 ",.01)
 ;;00781-1753-10
 ;;9002226.02101,"723,00781-1753-10 ",.02)
 ;;00781-1753-10
 ;;9002226.02101,"723,00781-1754-01 ",.01)
 ;;00781-1754-01
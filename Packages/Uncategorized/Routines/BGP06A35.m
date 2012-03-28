BGP06A35 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"974,00686-3155-08 ",.01)
 ;;00686-3155-08
 ;;9002226.02101,"974,00686-3155-08 ",.02)
 ;;00686-3155-08
 ;;9002226.02101,"974,00686-3155-09 ",.01)
 ;;00686-3155-09
 ;;9002226.02101,"974,00686-3155-09 ",.02)
 ;;00686-3155-09
 ;;9002226.02101,"974,00686-3171-09 ",.01)
 ;;00686-3171-09
 ;;9002226.02101,"974,00686-3171-09 ",.02)
 ;;00686-3171-09
 ;;9002226.02101,"974,00686-3313-09 ",.01)
 ;;00686-3313-09
 ;;9002226.02101,"974,00686-3313-09 ",.02)
 ;;00686-3313-09
 ;;9002226.02101,"974,00686-3702-76 ",.01)
 ;;00686-3702-76
 ;;9002226.02101,"974,00686-3702-76 ",.02)
 ;;00686-3702-76
 ;;9002226.02101,"974,00686-3704-76 ",.01)
 ;;00686-3704-76
 ;;9002226.02101,"974,00686-3704-76 ",.02)
 ;;00686-3704-76
 ;;9002226.02101,"974,00686-3708-70 ",.01)
 ;;00686-3708-70
 ;;9002226.02101,"974,00686-3708-70 ",.02)
 ;;00686-3708-70
 ;;9002226.02101,"974,00686-3712-80 ",.01)
 ;;00686-3712-80
 ;;9002226.02101,"974,00686-3712-80 ",.02)
 ;;00686-3712-80
 ;;9002226.02101,"974,00686-4165-32 ",.01)
 ;;00686-4165-32
 ;;9002226.02101,"974,00686-4165-32 ",.02)
 ;;00686-4165-32
 ;;9002226.02101,"974,00686-4167-32 ",.01)
 ;;00686-4167-32
 ;;9002226.02101,"974,00686-4167-32 ",.02)
 ;;00686-4167-32
 ;;9002226.02101,"974,00686-4175-32 ",.01)
 ;;00686-4175-32
 ;;9002226.02101,"974,00686-4175-32 ",.02)
 ;;00686-4175-32
 ;;9002226.02101,"974,00686-4175-36 ",.01)
 ;;00686-4175-36
 ;;9002226.02101,"974,00686-4175-36 ",.02)
 ;;00686-4175-36
 ;;9002226.02101,"974,00686-4177-32 ",.01)
 ;;00686-4177-32
 ;;9002226.02101,"974,00686-4177-32 ",.02)
 ;;00686-4177-32
 ;;9002226.02101,"974,00686-4177-36 ",.01)
 ;;00686-4177-36
 ;;9002226.02101,"974,00686-4177-36 ",.02)
 ;;00686-4177-36
 ;;9002226.02101,"974,00686-6100-38 ",.01)
 ;;00686-6100-38
 ;;9002226.02101,"974,00686-6100-38 ",.02)
 ;;00686-6100-38
 ;;9002226.02101,"974,00703-0956-03 ",.01)
 ;;00703-0956-03
 ;;9002226.02101,"974,00703-0956-03 ",.02)
 ;;00703-0956-03
 ;;9002226.02101,"974,00703-0958-03 ",.01)
 ;;00703-0958-03
 ;;9002226.02101,"974,00703-0958-03 ",.02)
 ;;00703-0958-03
 ;;9002226.02101,"974,00703-9503-03 ",.01)
 ;;00703-9503-03
 ;;9002226.02101,"974,00703-9503-03 ",.02)
 ;;00703-9503-03
 ;;9002226.02101,"974,00703-9514-03 ",.01)
 ;;00703-9514-03
 ;;9002226.02101,"974,00703-9514-03 ",.02)
 ;;00703-9514-03
 ;;9002226.02101,"974,00703-9526-01 ",.01)
 ;;00703-9526-01
 ;;9002226.02101,"974,00703-9526-01 ",.02)
 ;;00703-9526-01
 ;;9002226.02101,"974,00777-0869-02 ",.01)
 ;;00777-0869-02
 ;;9002226.02101,"974,00777-0869-02 ",.02)
 ;;00777-0869-02
 ;;9002226.02101,"974,00777-0869-20 ",.01)
 ;;00777-0869-20
 ;;9002226.02101,"974,00777-0869-20 ",.02)
 ;;00777-0869-20
 ;;9002226.02101,"974,00777-0871-02 ",.01)
 ;;00777-0871-02
 ;;9002226.02101,"974,00777-0871-02 ",.02)
 ;;00777-0871-02
 ;;9002226.02101,"974,00777-0871-20 ",.01)
 ;;00777-0871-20
 ;;9002226.02101,"974,00777-0871-20 ",.02)
 ;;00777-0871-20
 ;;9002226.02101,"974,00781-1015-01 ",.01)
 ;;00781-1015-01
 ;;9002226.02101,"974,00781-1015-01 ",.02)
 ;;00781-1015-01
 ;;9002226.02101,"974,00781-1062-01 ",.01)
 ;;00781-1062-01
 ;;9002226.02101,"974,00781-1062-01 ",.02)
 ;;00781-1062-01
 ;;9002226.02101,"974,00781-1062-13 ",.01)
 ;;00781-1062-13
 ;;9002226.02101,"974,00781-1062-13 ",.02)
 ;;00781-1062-13
 ;;9002226.02101,"974,00781-1063-01 ",.01)
 ;;00781-1063-01
 ;;9002226.02101,"974,00781-1063-01 ",.02)
 ;;00781-1063-01
 ;;9002226.02101,"974,00781-1063-13 ",.01)
 ;;00781-1063-13
 ;;9002226.02101,"974,00781-1063-13 ",.02)
 ;;00781-1063-13
 ;;9002226.02101,"974,00781-1098-01 ",.01)
 ;;00781-1098-01
 ;;9002226.02101,"974,00781-1098-01 ",.02)
 ;;00781-1098-01
 ;;9002226.02101,"974,00781-1205-01 ",.01)
 ;;00781-1205-01
 ;;9002226.02101,"974,00781-1205-01 ",.02)
 ;;00781-1205-01
 ;;9002226.02101,"974,00781-1205-10 ",.01)
 ;;00781-1205-10
 ;;9002226.02101,"974,00781-1205-10 ",.02)
 ;;00781-1205-10
 ;;9002226.02101,"974,00781-1496-31 ",.01)
 ;;00781-1496-31
 ;;9002226.02101,"974,00781-1496-31 ",.02)
 ;;00781-1496-31
 ;;9002226.02101,"974,00781-1496-68 ",.01)
 ;;00781-1496-68
 ;;9002226.02101,"974,00781-1496-68 ",.02)
 ;;00781-1496-68
 ;;9002226.02101,"974,00781-1496-69 ",.01)
 ;;00781-1496-69
 ;;9002226.02101,"974,00781-1496-69 ",.02)
 ;;00781-1496-69
 ;;9002226.02101,"974,00781-1497-31 ",.01)
 ;;00781-1497-31
 ;;9002226.02101,"974,00781-1497-31 ",.02)
 ;;00781-1497-31
 ;;9002226.02101,"974,00781-1619-66 ",.01)
 ;;00781-1619-66
 ;;9002226.02101,"974,00781-1619-66 ",.02)
 ;;00781-1619-66
 ;;9002226.02101,"974,00781-1643-66 ",.01)
 ;;00781-1643-66
 ;;9002226.02101,"974,00781-1643-66 ",.02)
 ;;00781-1643-66
 ;;9002226.02101,"974,00781-1655-01 ",.01)
 ;;00781-1655-01
 ;;9002226.02101,"974,00781-1655-01 ",.02)
 ;;00781-1655-01
 ;;9002226.02101,"974,00781-1655-10 ",.01)
 ;;00781-1655-10
 ;;9002226.02101,"974,00781-1655-10 ",.02)
 ;;00781-1655-10
 ;;9002226.02101,"974,00781-1763-01 ",.01)
 ;;00781-1763-01
 ;;9002226.02101,"974,00781-1763-01 ",.02)
 ;;00781-1763-01
 ;;9002226.02101,"974,00781-1765-01 ",.01)
 ;;00781-1765-01
 ;;9002226.02101,"974,00781-1765-01 ",.02)
 ;;00781-1765-01
 ;;9002226.02101,"974,00781-1767-01 ",.01)
 ;;00781-1767-01
 ;;9002226.02101,"974,00781-1767-01 ",.02)
 ;;00781-1767-01
 ;;9002226.02101,"974,00781-1831-20 ",.01)
 ;;00781-1831-20
 ;;9002226.02101,"974,00781-1831-20 ",.02)
 ;;00781-1831-20
 ;;9002226.02101,"974,00781-1850-01 ",.01)
 ;;00781-1850-01
 ;;9002226.02101,"974,00781-1850-01 ",.02)
 ;;00781-1850-01
 ;;9002226.02101,"974,00781-1852-20 ",.01)
 ;;00781-1852-20
 ;;9002226.02101,"974,00781-1852-20 ",.02)
 ;;00781-1852-20
 ;;9002226.02101,"974,00781-1873-01 ",.01)
 ;;00781-1873-01
 ;;9002226.02101,"974,00781-1873-01 ",.02)
 ;;00781-1873-01
 ;;9002226.02101,"974,00781-1874-31 ",.01)
 ;;00781-1874-31
 ;;9002226.02101,"974,00781-1874-31 ",.02)
 ;;00781-1874-31
 ;;9002226.02101,"974,00781-1941-31 ",.01)
 ;;00781-1941-31
 ;;9002226.02101,"974,00781-1941-31 ",.02)
 ;;00781-1941-31
 ;;9002226.02101,"974,00781-1941-33 ",.01)
 ;;00781-1941-33
 ;;9002226.02101,"974,00781-1941-33 ",.02)
 ;;00781-1941-33
 ;;9002226.02101,"974,00781-2020-01 ",.01)
 ;;00781-2020-01
 ;;9002226.02101,"974,00781-2020-01 ",.02)
 ;;00781-2020-01
 ;;9002226.02101,"974,00781-2020-05 ",.01)
 ;;00781-2020-05
 ;;9002226.02101,"974,00781-2020-05 ",.02)
 ;;00781-2020-05
 ;;9002226.02101,"974,00781-2020-31 ",.01)
 ;;00781-2020-31
 ;;9002226.02101,"974,00781-2020-31 ",.02)
 ;;00781-2020-31
 ;;9002226.02101,"974,00781-2020-76 ",.01)
 ;;00781-2020-76
 ;;9002226.02101,"974,00781-2020-76 ",.02)
 ;;00781-2020-76
 ;;9002226.02101,"974,00781-2112-01 ",.01)
 ;;00781-2112-01
 ;;9002226.02101,"974,00781-2112-01 ",.02)
 ;;00781-2112-01
 ;;9002226.02101,"974,00781-2113-01 ",.01)
 ;;00781-2113-01
 ;;9002226.02101,"974,00781-2113-01 ",.02)
 ;;00781-2113-01
 ;;9002226.02101,"974,00781-2113-17 ",.01)
 ;;00781-2113-17
 ;;9002226.02101,"974,00781-2113-17 ",.02)
 ;;00781-2113-17
 ;;9002226.02101,"974,00781-2144-01 ",.01)
 ;;00781-2144-01
 ;;9002226.02101,"974,00781-2144-01 ",.02)
 ;;00781-2144-01
 ;;9002226.02101,"974,00781-2144-05 ",.01)
 ;;00781-2144-05
 ;;9002226.02101,"974,00781-2144-05 ",.02)
 ;;00781-2144-05
 ;;9002226.02101,"974,00781-2145-01 ",.01)
 ;;00781-2145-01
 ;;9002226.02101,"974,00781-2145-01 ",.02)
 ;;00781-2145-01
 ;;9002226.02101,"974,00781-2145-05 ",.01)
 ;;00781-2145-05
 ;;9002226.02101,"974,00781-2145-05 ",.02)
 ;;00781-2145-05
 ;;9002226.02101,"974,00781-2220-01 ",.01)
 ;;00781-2220-01
 ;;9002226.02101,"974,00781-2220-01 ",.02)
 ;;00781-2220-01
 ;;9002226.02101,"974,00781-2225-01 ",.01)
 ;;00781-2225-01
 ;;9002226.02101,"974,00781-2225-01 ",.02)
 ;;00781-2225-01
 ;;9002226.02101,"974,00781-2248-01 ",.01)
 ;;00781-2248-01
 ;;9002226.02101,"974,00781-2248-01 ",.02)
 ;;00781-2248-01
 ;;9002226.02101,"974,00781-2258-01 ",.01)
 ;;00781-2258-01
 ;;9002226.02101,"974,00781-2258-01 ",.02)
 ;;00781-2258-01
 ;;9002226.02101,"974,00781-2268-60 ",.01)
 ;;00781-2268-60
 ;;9002226.02101,"974,00781-2268-60 ",.02)
 ;;00781-2268-60
 ;;9002226.02101,"974,00781-2333-01 ",.01)
 ;;00781-2333-01
 ;;9002226.02101,"974,00781-2333-01 ",.02)
 ;;00781-2333-01
 ;;9002226.02101,"974,00781-2341-50 ",.01)
 ;;00781-2341-50
 ;;9002226.02101,"974,00781-2341-50 ",.02)
 ;;00781-2341-50
 ;;9002226.02101,"974,00781-2466-01 ",.01)
 ;;00781-2466-01
 ;;9002226.02101,"974,00781-2466-01 ",.02)
 ;;00781-2466-01
 ;;9002226.02101,"974,00781-2466-10 ",.01)
 ;;00781-2466-10
 ;;9002226.02101,"974,00781-2466-10 ",.02)
 ;;00781-2466-10
 ;;9002226.02101,"974,00781-2529-10 ",.01)
 ;;00781-2529-10
 ;;9002226.02101,"974,00781-2529-10 ",.02)
 ;;00781-2529-10
 ;;9002226.02101,"974,00781-2531-01 ",.01)
 ;;00781-2531-01
 ;;9002226.02101,"974,00781-2531-01 ",.02)
 ;;00781-2531-01
 ;;9002226.02101,"974,00781-2531-05 ",.01)
 ;;00781-2531-05
 ;;9002226.02101,"974,00781-2531-05 ",.02)
 ;;00781-2531-05
 ;;9002226.02101,"974,00781-2531-13 ",.01)
 ;;00781-2531-13
 ;;9002226.02101,"974,00781-2531-13 ",.02)
 ;;00781-2531-13
 ;;9002226.02101,"974,00781-2532-01 ",.01)
 ;;00781-2532-01
 ;;9002226.02101,"974,00781-2532-01 ",.02)
 ;;00781-2532-01
 ;;9002226.02101,"974,00781-2532-05 ",.01)
 ;;00781-2532-05
 ;;9002226.02101,"974,00781-2532-05 ",.02)
 ;;00781-2532-05
 ;;9002226.02101,"974,00781-2532-13 ",.01)
 ;;00781-2532-13
 ;;9002226.02101,"974,00781-2532-13 ",.02)
 ;;00781-2532-13
 ;;9002226.02101,"974,00781-2533-01 ",.01)
 ;;00781-2533-01
 ;;9002226.02101,"974,00781-2533-01 ",.02)
 ;;00781-2533-01
 ;;9002226.02101,"974,00781-2534-01 ",.01)
 ;;00781-2534-01
 ;;9002226.02101,"974,00781-2534-01 ",.02)
 ;;00781-2534-01
 ;;9002226.02101,"974,00781-2534-24 ",.01)
 ;;00781-2534-24
 ;;9002226.02101,"974,00781-2534-24 ",.02)
 ;;00781-2534-24
 ;;9002226.02101,"974,00781-2555-01 ",.01)
 ;;00781-2555-01
 ;;9002226.02101,"974,00781-2555-01 ",.02)
 ;;00781-2555-01
 ;;9002226.02101,"974,00781-2555-05 ",.01)
 ;;00781-2555-05
 ;;9002226.02101,"974,00781-2555-05 ",.02)
 ;;00781-2555-05
 ;;9002226.02101,"974,00781-2613-01 ",.01)
 ;;00781-2613-01
 ;;9002226.02101,"974,00781-2613-01 ",.02)
 ;;00781-2613-01
 ;;9002226.02101,"974,00781-2613-05 ",.01)
 ;;00781-2613-05
 ;;9002226.02101,"974,00781-2613-05 ",.02)
 ;;00781-2613-05
 ;;9002226.02101,"974,00781-2613-31 ",.01)
 ;;00781-2613-31
 ;;9002226.02101,"974,00781-2613-31 ",.02)
 ;;00781-2613-31
 ;;9002226.02101,"974,00781-2613-76 ",.01)
 ;;00781-2613-76
 ;;9002226.02101,"974,00781-2613-76 ",.02)
 ;;00781-2613-76
 ;;9002226.02101,"974,00781-2937-01 ",.01)
 ;;00781-2937-01
 ;;9002226.02101,"974,00781-2937-01 ",.02)
 ;;00781-2937-01
 ;;9002226.02101,"974,00781-2938-50 ",.01)
 ;;00781-2938-50
 ;;9002226.02101,"974,00781-2938-50 ",.02)
 ;;00781-2938-50
 ;;9002226.02101,"974,00781-2999-01 ",.01)
 ;;00781-2999-01
 ;;9002226.02101,"974,00781-2999-01 ",.02)
 ;;00781-2999-01
 ;;9002226.02101,"974,00781-2999-05 ",.01)
 ;;00781-2999-05
 ;;9002226.02101,"974,00781-2999-05 ",.02)
 ;;00781-2999-05
 ;;9002226.02101,"974,00781-3155-70 ",.01)
 ;;00781-3155-70
 ;;9002226.02101,"974,00781-3155-70 ",.02)
 ;;00781-3155-70
 ;;9002226.02101,"974,00781-3157-70 ",.01)
 ;;00781-3157-70
 ;;9002226.02101,"974,00781-3157-70 ",.02)
 ;;00781-3157-70
 ;;9002226.02101,"974,00781-3157-96 ",.01)
 ;;00781-3157-96
 ;;9002226.02101,"974,00781-3157-96 ",.02)
 ;;00781-3157-96
 ;;9002226.02101,"974,00781-3206-95 ",.01)
 ;;00781-3206-95
 ;;9002226.02101,"974,00781-3206-95 ",.02)
 ;;00781-3206-95
 ;;9002226.02101,"974,00781-3207-95 ",.01)
 ;;00781-3207-95
 ;;9002226.02101,"974,00781-3207-95 ",.02)
 ;;00781-3207-95
 ;;9002226.02101,"974,00781-3208-95 ",.01)
 ;;00781-3208-95
 ;;9002226.02101,"974,00781-3208-95 ",.02)
 ;;00781-3208-95
 ;;9002226.02101,"974,00781-3209-95 ",.01)
 ;;00781-3209-95
 ;;9002226.02101,"974,00781-3209-95 ",.02)
 ;;00781-3209-95
 ;;9002226.02101,"974,00781-3210-46 ",.01)
 ;;00781-3210-46
 ;;9002226.02101,"974,00781-3210-46 ",.02)
 ;;00781-3210-46
 ;;9002226.02101,"974,00781-3338-12 ",.01)
 ;;00781-3338-12
 ;;9002226.02101,"974,00781-3338-12 ",.02)
 ;;00781-3338-12
 ;;9002226.02101,"974,00781-3338-95 ",.01)
 ;;00781-3338-95
 ;;9002226.02101,"974,00781-3338-95 ",.02)
 ;;00781-3338-95
 ;;9002226.02101,"974,00781-3346-95 ",.01)
 ;;00781-3346-95
 ;;9002226.02101,"974,00781-3346-95 ",.02)
 ;;00781-3346-95
 ;;9002226.02101,"974,00781-3400-95 ",.01)
 ;;00781-3400-95
 ;;9002226.02101,"974,00781-3400-95 ",.02)
 ;;00781-3400-95
 ;;9002226.02101,"974,00781-3402-95 ",.01)
 ;;00781-3402-95
 ;;9002226.02101,"974,00781-3402-95 ",.02)
 ;;00781-3402-95
 ;;9002226.02101,"974,00781-3404-95 ",.01)
 ;;00781-3404-95
 ;;9002226.02101,"974,00781-3404-95 ",.02)
 ;;00781-3404-95
 ;;9002226.02101,"974,00781-3407-95 ",.01)
 ;;00781-3407-95
 ;;9002226.02101,"974,00781-3407-95 ",.02)
 ;;00781-3407-95
 ;;9002226.02101,"974,00781-3408-95 ",.01)
 ;;00781-3408-95
 ;;9002226.02101,"974,00781-3408-95 ",.02)
 ;;00781-3408-95
 ;;9002226.02101,"974,00781-3409-95 ",.01)
 ;;00781-3409-95
 ;;9002226.02101,"974,00781-3409-95 ",.02)
 ;;00781-3409-95
 ;;9002226.02101,"974,00781-3451-96 ",.01)
 ;;00781-3451-96
 ;;9002226.02101,"974,00781-3451-96 ",.02)
 ;;00781-3451-96
 ;;9002226.02101,"974,00781-3452-95 ",.01)
 ;;00781-3452-95
 ;;9002226.02101,"974,00781-3452-95 ",.02)
 ;;00781-3452-95
 ;;9002226.02101,"974,00781-3700-76 ",.01)
 ;;00781-3700-76
 ;;9002226.02101,"974,00781-3700-76 ",.02)
 ;;00781-3700-76
 ;;9002226.02101,"974,00781-3706-46 ",.01)
 ;;00781-3706-46
 ;;9002226.02101,"974,00781-3706-46 ",.02)
 ;;00781-3706-46
ACMRCH1 ; IHS/TUCSON/TMJ - CONTROL PRINTING OF CASE HISTORY ;
 ;;2.0;ACM CASE MANAGEMENT SYSTEM;;JAN 10, 1996
 I $D(^ACM(41,ACMRGDFN,"CH")),(($P(^ACM(41,ACMRGDFN,"CH"),U,1)'="")!($P(^("CH"),U,2)'="")!($P(^("CH"),U,3)'="")) D ^ACMRCH Q
 I '$D(^ACM(41,ACMRGDFN,"CH")),$D(^ACM(41,ACMRGDFN,2,1,0)),^(0)'="" D ^ACMRCH Q
 I $D(^ACM(41,ACMRGDFN,"CH")),^("CH")="",$D(^ACM(41,ACMRGDFN,2,1,0)),^(0)'="" D ^ACMRCH Q
BKMVQCR2 ;PRXM/HC/BWF - BKMV Quality of Care Report; [ 1/19/2005  7:16 PM ]
 ;;2.1;HIV MANAGEMENT SYSTEM;;Feb 07, 2011
 ; Quality of Care Audit Report
 Q
CHLAM ; EP - Chlamydia Tests
 N CHDT,SITETAX,LOINTAX,CPTTAX,ICDTAX,PRCTAX,GLOBAL,GLOBAL2,REFGLOB,TOTPTS,DFN
 S CHDT=$$FMADD^XLFDT(EDATE,-365)
 S SITETAX="BGP CHLAMYDIA TESTS TAX"
 S LOINTAX="BGP CHLAMYDIA LOINC CODES"
 S CPTTAX="BGP CHLAMYDIA CPTS"
 S PRCTAX="BGP CHLAMYDIA TEST PROCEDURES"
 S GLOBAL="^TMP(""BKMVQCR"",$J,""HIVCHK"",DFN,""CHLAM"",VSTDT,TEST)"
 S REFGLOB="^TMP(""BKMVQCR"",$J,""HIVCHK"",DFN,""CHLAMREF"",VSTDT,TEST)"
 S TOTPTS="^TMP(""BKMVQCR"",$J,""HIVCHK"",""CHLAMPTCNT"")"
 S DFN=0,@TOTPTS=0
 F  S DFN=$O(^TMP("BKMVQCR",$J,"HIVCHK",DFN)) Q:'DFN  D
 .D PRCTAX^BKMIXX1(DFN,PRCTAX,EDATE,CHDT,GLOBAL)
 .D CPTTAX^BKMIXX(DFN,CPTTAX,EDATE,CHDT,GLOBAL)
 .D LOINC^BKMIXX(DFN,LOINTAX,EDATE,CHDT,GLOBAL)
 .D LABTAX^BKMIXX(DFN,SITETAX,EDATE,CHDT,GLOBAL)
 .D REFUSAL^BKMIXX2(DFN,60,LOINTAX,EDATE,CHDT,REFGLOB)
 .D REFUSAL^BKMIXX2(DFN,60,SITETAX,EDATE,CHDT,REFGLOB)
 .I $D(^TMP("BKMVQCR",$J,"HIVCHK",DFN,"CHLAM"))!$D(^TMP("BKMVQCR",$J,"HIVCHK",DFN,"CHLAMREF")) S @TOTPTS=@TOTPTS+1
 Q
GON ; EP - Gonorrhea Tests
 N GONDT,SITETAX,LOINTAX,CPTTAX,GLOBAL,GLOBAL2,REFGLOB,TOTPTS,DFN
 S GONDT=$$FMADD^XLFDT(EDATE,-365)
 S SITETAX="BKM GONORRHEA TEST TAX"
 S LOINTAX="BKM GONORRHEA LOINC CODES"
 S CPTTAX="BKM GONORRHEA TESTS CPTS"
 S GLOBAL="^TMP(""BKMVQCR"",$J,""HIVCHK"",DFN,""GON"",VSTDT,TEST)"
 S REFGLOB="^TMP(""BKMVQCR"",$J,""HIVCHK"",DFN,""GONREF"",VSTDT,TEST)"
 S TOTPTS="^TMP(""BKMVQCR"",$J,""HIVCHK"",""GONPTCNT"")"
 S DFN=0,@TOTPTS=0
 F  S DFN=$O(^TMP("BKMVQCR",$J,"HIVCHK",DFN)) Q:'DFN  D
 .D CPTTAX^BKMIXX(DFN,CPTTAX,EDATE,GONDT,GLOBAL)
 .D LOINC^BKMIXX(DFN,LOINTAX,EDATE,GONDT,GLOBAL)
 .D LABTAX^BKMIXX(DFN,SITETAX,EDATE,GONDT,GLOBAL)
 .D REFUSAL^BKMIXX2(DFN,60,LOINTAX,EDATE,GONDT,REFGLOB)
 .D REFUSAL^BKMIXX2(DFN,60,SITETAX,EDATE,GONDT,REFGLOB)
 .I $D(^TMP("BKMVQCR",$J,"HIVCHK",DFN,"GON"))!$D(^TMP("BKMVQCR",$J,"HIVCHK",DFN,"GONREF")) S @TOTPTS=@TOTPTS+1
 Q
TBT21 ; EP - Tuberculosis Status
 N TBT21DT,SITETAX,LOINTAX,CPTTAX,CVXTAX,ICDTAX,ICDTAX1,MEDTAX,NDCTAX
 N GLOBAL,GLOBAL1,GLOBAL2,REFGLOB,TOTPTS,DFN
 S TBT21DT=""
 S CPTTAX="BKM PPD CPTS"
 S LOINTAX="BKM PPD LOINC CODES"
 S SITETAX="BKM PPD TAX"
 S CVXTAX="BKM PPD CVX CODES"
 S ICDTAX="BKM PPD ICDS"
 S ICDTAX1="DM AUDIT PROBLEM TB DXS"
 S MEDTAX="BKM TB MEDS"
 S NDCTAX="BKM TB MED NDCS"
 S GLOBAL="^TMP(""BKMVQCR"",$J,""HIVCHK"",DFN,""TBT21"",VSTDT,TEST)"
 S GLOBAL1="^TMP(""BKMVQCR"",$J,""HIVCHK"",DFN,""TBT21MED"",VSTDT,TEST)"
 S GLOBAL2="^TMP(""BKMVQCR"",$J,""HIVCHK"",DFN,""TBT21DX"",VSTDT,TEST)"
 S GLOBAL3="^TMP(""BKMVQCR"",$J,""HIVCHK"",DFN,""TBT21POSNEG"",VSTDT,TEST)"
 S REFGLOB="^TMP(""BKMVQCR"",$J,""HIVCHK"",DFN,""TBT21REF"",VSTDT,TEST)"
 S TOTPTS="^TMP(""BKMVQCR"",$J,""HIVCHK"",""TBT21PTCNT"")"
 S DFN=0,@TOTPTS=0
 F  S DFN=$O(^TMP("BKMVQCR",$J,"HIVCHK",DFN)) Q:'DFN  D
 .D ICDTAX^BKMIXX1(DFN,ICDTAX,EDATE,TBT21DT,GLOBAL)
 .D ICDTAX^BKMIXX1(DFN,ICDTAX1,EDATE,TBT21DT,GLOBAL2)
 .D CPTTAX^BKMIXX(DFN,CPTTAX,EDATE,TBT21DT,GLOBAL)
 .D SKNTAX^BKMIXX1(DFN,"21",EDATE,TBT21DT,GLOBAL3)
 .D CVXTAX^BKMIXX1(DFN,CVXTAX,EDATE,TBT21DT,GLOBAL)
 .D LOINC^BKMIXX(DFN,LOINTAX,EDATE,TBT21DT,GLOBAL3)
 .M ^TMP("BKMVQCR",$J,"HIVCHK",DFN,"TBT21")=^TMP("BKMVQCR",$J,"HIVCHK",DFN,"TBT21POSNEG")
 .D LABTAX^BKMIXX(DFN,SITETAX,EDATE,TBT21DT,GLOBAL)
 .D MEDTAX^BKMIXX(DFN,MEDTAX,EDATE,TBT21DT,GLOBAL1)
 .D NDCTAX^BKMIXX1(DFN,NDCTAX,EDATE,TBT21DT,GLOBAL1)
 .D REFUSAL^BKMIXX2(DFN,9999999.28,"21",EDATE,TBT21DT,REFGLOB)
 .D REFUSAL^BKMIXX2(DFN,9999999.14,CVXTAX,EDATE,TBT21DT,REFGLOB)
 .D REFUSAL^BKMIXX2(DFN,60,LOINTAX,EDATE,TBT21DT,REFGLOB)
 .D REFUSAL^BKMIXX2(DFN,60,SITETAX,EDATE,TBT21DT,REFGLOB)
 .; Store Medication refusals in same global as regular Medications.
 .D REFUSAL^BKMIXX2(DFN,50,MEDTAX,EDATE,TBT21DT,GLOBAL1)
 .D REFUSAL^BKMIXX2(DFN,50,NDCTAX,EDATE,TBT21DT,GLOBAL1)
 .I $D(^TMP("BKMVQCR",$J,"HIVCHK",DFN,"TBT21"))!$D(^TMP("BKMVQCR",$J,"HIVCHK",DFN,"TBT21REF"))!$D(^TMP("BKMVQCR",$J,"HIVCHK",DFN,"TBT21MED")) S @TOTPTS=@TOTPTS+1 Q
 Q
PNEUMO ; EP - Pneumovax Status
 N PNEUMODT,CPTTAX,CVXTAX,ICDTAX,PRCTAX,GLOBAL,REFGLOB,TOTPTS,DFN
 S PNEUMODT=""
 S CVXTAX="BKM PNEUMO IZ CVX CODES"
 S ICDTAX="BGP PNEUMO IZ DXS"
 S PRCTAX="BGP PNEUMO IZ PROCEDURES"
 S CPTTAX="BGP PNEUMO IZ CPTS"
 S GLOBAL="^TMP(""BKMVQCR"",$J,""HIVCHK"",DFN,""PNEUMO"",VSTDT,TEST)"
 S REFGLOB="^TMP(""BKMVQCR"",$J,""HIVCHK"",DFN,""PNEUMOREF"",VSTDT,TEST)"
 S TOTPTS="^TMP(""BKMVQCR"",$J,""HIVCHK"",""PNEUMOCNT"")"
 S DFN=0,@TOTPTS=0
 F  S DFN=$O(^TMP("BKMVQCR",$J,"HIVCHK",DFN)) Q:'DFN  D
 .D ICDTAX^BKMIXX1(DFN,ICDTAX,EDATE,PNEUMODT,GLOBAL)
 .D CPTTAX^BKMIXX(DFN,CPTTAX,EDATE,PNEUMODT,GLOBAL)
 .D PRCTAX^BKMIXX1(DFN,PRCTAX,EDATE,PNEUMODT,GLOBAL)
 .D CVXTAX^BKMIXX1(DFN,CVXTAX,EDATE,PNEUMODT,GLOBAL)
 .D REFUSAL^BKMIXX2(DFN,9999999.14,CVXTAX,EDATE,PNEUMODT,REFGLOB)
 .I $D(^TMP("BKMVQCR",$J,"HIVCHK",DFN,"PNEUMO"))!$D(^TMP("BKMVQCR",$J,"HIVCHK",DFN,"PNEUMOREF")) S @TOTPTS=@TOTPTS+1
 Q
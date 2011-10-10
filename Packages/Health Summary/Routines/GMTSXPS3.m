GMTSXPS3 ; SLC/KER - Health Summary Status                      ; 07/18/2000
 ;;2.7;Health Summary;**35,34,37**;Oct 20, 1995
 ;
 Q
STA ; Status of Components
 D CLR,EXP,CHK,CLR Q
CHK ;   Check Health Summary Components
 N GMTSI,GMTSSNM,GMTSSAB,GMTSSDF,GMTSENM,GMTSEAB,GMTSEDF,GMTSCNT,GMTSDUP,X
 S (GMTSCNT,GMTSI)=0 F  S GMTSI=$O(^GMT(142.1,GMTSI)) Q:+GMTSI=0  D IE
 S GMTSI=0 F  S GMTSI=$O(^TMP($J,"GMTSST",GMTSI)) Q:+GMTSI=0  D EI
 Q
IE ;     Compare Installed to Exported
 S GMTSSNM=$P($G(^GMT(142.1,GMTSI,0)),"^",1),GMTSSAB=$P($G(^GMT(142.1,GMTSI,0)),"^",4),GMTSSDF=$P($G(^GMT(142.1,GMTSI,0)),"^",6)
 I GMTSI<501,'$D(^TMP($J,"GMTSST",GMTSI)) S X="      "_GMTSSNM_" not exported ("_GMTSI_")" D CL(X) Q
 S GMTSENM=$P($G(^TMP($J,"GMTSST",GMTSI)),"^",1),GMTSEAB=$P($G(^TMP($J,"GMTSST",GMTSI)),"^",2),GMTSEDF=$P($G(^TMP($J,"GMTSST",GMTSI)),"^",3)
 I GMTSI<501,$L(GMTSSNM),GMTSENM="",'$D(^GMT(142.1,"B",GMTSSNM)) S X="      "_GMTSSNM_" not exported" D CL(X) Q
 I GMTSI<501,$L(GMTSSNM),GMTSENM="",$D(^GMT(142.1,"B",GMTSSNM)) S GMTSDUP=0 D DP Q:+GMTSDUP>1
 I GMTSI<501,$L(GMTSSNM),GMTSENM="",$D(^GMT(142.1,"B",GMTSSNM)) S X="      "_GMTSSNM_" w/wrong IEN ("_GMTSI_")" D CL(X) Q
 I GMTSI<501,GMTSSNM'=GMTSENM S X="      "_"Not exported as "_GMTSSNM D CL(X) Q
 I GMTSI<501,GMTSSDF="P",GMTSEDF'="P" S X="      "_GMTSSNM_" disabled at site" D CL(X) Q
 I GMTSI<501,GMTSSDF="",GMTSEDF="P" S X="      Disable component "_GMTSSNM_" in use" D CL(X) Q
 I GMTSI>500,GMTSENM="" S X="      "_GMTSSNM_" (local component)" D CL(X) Q
 Q
EI ;     Compare Exported to Installed
 S GMTSSNM=$P($G(^GMT(142.1,GMTSI,0)),"^",1),GMTSSAB=$P($G(^GMT(142.1,GMTSI,0)),"^",4),GMTSSDF=$P($G(^GMT(142.1,GMTSI,0)),"^",6)
 S GMTSENM=$P($G(^TMP($J,"GMTSST",GMTSI)),"^",1),GMTSEAB=$P($G(^TMP($J,"GMTSST",GMTSI)),"^",2),GMTSEDF=$P($G(^TMP($J,"GMTSST",GMTSI)),"^",3)
 I GMTSI<501,GMTSSNM="" S X="      "_GMTSENM_" exported/not found" D CL(X) Q
 I GMTSI<501,GMTSSNM'=GMTSENM S X="      "_GMTSSNM_" exported/modified" D CL(X) Q
 Q
DP ;     Duplicate Components
 N X,GMTSI,GMTSIS Q:'$L($G(GMTSSNM))
 S GMTSIS="",GMTSI=0 F  S GMTSI=$O(^GMT(142.1,"B",GMTSSNM,GMTSI)) Q:+GMTSI=0  D
 . S GMTSDUP=+($G(GMTSDUP))+1,GMTSIS=GMTSIS_"/"_GMTSI
 S:$E(GMTSIS,1)="/" GMTSIS=$E(GMTSIS,2,$L(GMTSIS)) S:GMTSIS'["/" GMTSDUP=1
 I +($G(GMTSDUP))>1 S X="      "_GMTSSNM_" duplicated ("_GMTSIS_")" D CL(X)
 Q
 ;                            
 ; Miscellaneous
EXP ;   Retrieve Exported Components
 N GMTSEX,GMTSTXT,GMTSI,GMTSCI,GMTSNM,GMTSAB,GMTSDF S GMTSTXT="" F GMTSI=1:1 D  Q:'$L(GMTSTXT)
 . S GMTSTXT="" S GMTSEX="S GMTSTXT=$T(COMP+"_GMTSI_")" X GMTSEX S GMTSTXT=$P(GMTSTXT,";",3,299) Q:GMTSTXT=""  S GMTSCI=+($P(GMTSTXT,";",1)) Q:GMTSCI=0  S GMTSNM=$P(GMTSTXT,";",2) Q:GMTSNM=""
 . S GMTSAB=$P(GMTSTXT,";",3) Q:GMTSAB=""  S GMTSDF=$P(GMTSTXT,";",4),^TMP($J,"GMTSST",GMTSCI)=GMTSNM_"^"_GMTSAB_"^"_GMTSDF
 Q
CLR ;   Clean up
 K ^TMP($J,"GMTSST") Q
CL(X) ;   Component Status Line
 S X=$G(X) S:$L(X) GMTSCNT=+($G(GMTSCNT))+1 D:GMTSCNT=1 TL^GMTSXPS1("    Component Status:")
 D TL^GMTSXPS1(X) Q
COMP ;   Components List (exported)
 ;;1;ADVERSE REACTIONS/ALLERGIES;ADR
 ;;2;MAS DEMOGRAPHICS BRIEF;BDEM
 ;;3;LAB CHEMISTRY & HEMATOLOGY;CH
 ;;4;CLINICAL WARNINGS;CW
 ;;5;CRISIS NOTES;CN
 ;;6;MAS DEMOGRAPHICS;DEM
 ;;7;DIETETICS;DI
 ;;8;MAS DISCHARGES;DC
 ;;9;MAS CLINIC VISITS FUTURE;CVF
 ;;10;MAS ADMISSIONS/DISCHARGES;ADC
 ;;11;MAS DISCHARGE DIAGNOSIS;DD
 ;;12;MAS SURGERIES ICD CODES;OPC
 ;;14;MAS CLINIC VISITS PAST;CVP
 ;;15;PROGRESS NOTES;PN
 ;;16;MAS TRANSFERS;TR
 ;;17;MAS TREATING SPECIALTY;TS
 ;;18;LAB CUMULATIVE SELECTED 1;SCL1
 ;;19;LAB CUMULATIVE SELECTED 2;SCL2
 ;;20;LAB CUMULATIVE SELECTED 3;SCL3
 ;;21;LAB CUMULATIVE SELECTED 4;SCL4
 ;;23;SURGERY REPORTS;SR
 ;;24;MAS DISABILITIES;DS
 ;;25;ADVANCE DIRECTIVE;CD
 ;;26;PROGRESS NOTES BRIEF;BPN
 ;;27;SURGERY REPORTS BRIEF;BSR
 ;;28;PHARMACY OUTPATIENT;RXOP
 ;;29;PHARMACY UNIT DOSE;RXUD
 ;;30;PHARMACY INTRAVENOUS;RXIV
 ;;31;LAB ORDERS BRIEF;BLO
 ;;32;LAB ORDERS;LO
 ;;33;LAB TESTS SELECTED;SLT
 ;;34;RADIOLOGY STATUS;RS
 ;;35;RADIOLOGY PROFILE;RP
 ;;36;LAB BLOOD TRANSFUSIONS;BT
 ;;37;LAB MICROBIOLOGY BRIEF;BMIC
 ;;38;LAB MICROBIOLOGY;MIC
 ;;43;LAB CUMULATIVE SELECTED;SCLU
 ;;45;LAB BLOOD AVAILABILITY;BA
 ;;46;LAB SURGICAL PATHOLOGY;SP
 ;;47;VITAL SIGNS;VS
 ;;48;LAB CYTOPATHOLOGY;CY
 ;;49;VITAL SIGNS SELECTED;SVS
 ;;50;MAS PROCEDURES ICD CODES;PRC
 ;;51;MEDICINE SUMMARY;MEDS
 ;;52;RADIOLOGY IMPRESSION;RI
 ;;54;ORDERS CURRENT;ORC
 ;;55;MAS ADT HISTORY;ADT
 ;;56;RADIOLOGY IMPRESSION SELECTED;SRI
 ;;57;DISCHARGE SUMMARY;DCS
 ;;58;DISCHARGE SUMMARY BRIEF;BDS
 ;;59;PROBLEM LIST ACTIVE;PLA
 ;;60;PROBLEM LIST INACTIVE;PLI
 ;;61;PROBLEM LIST ALL;PLL
 ;;62;SOCIAL WORK;SW
 ;;64;MAS ADT HISTORY EXPANDED;EADT
 ;;65;COMPENSATION AND PENSION EXAMS;CP
 ;;66;MEDICINE ABNORMAL BRIEF;MEDA
 ;;67;MEDICINE BRIEF REPORT;MEDB
 ;;68;MEDICINE FULL CAPTIONED;MEDC
 ;;69;MEDICINE FULL REPORT;MEDF
 ;;71;MENTAL HEALTH PHYSICAL EXAM;MHPE
 ;;72;LAB ELECTRON MICROSCOPY;EM
 ;;73;ADVERSE REACTIONS/ALLERG BRIEF;BADR
 ;;74;SPINAL CORD DYSFUNCTION;SCD
 ;;75;VITAL SIGNS OUTPATIENT;VSO
 ;;76;VITAL SIGNS SELECTED OUTPAT.;SVSO
 ;;77;SURGERY ONLY REPORTS;SRO
 ;;78;SURGERY NON OR PROCEDURES;NSR
 ;;79;SURGERY SEL NON OR PROCEDURES;SNSR
 ;;201;PCE LOCATION OF HOME;LH;P
 ;;202;CLINICAL REMINDERS DUE;CR
 ;;203;PCE HEALTH FACTORS SELECTED;SHF;P
 ;;204;PCE HEALTH FACTORS ALL;HF;P
 ;;205;PCE OUTPATIENT ENCOUNTERS;OE
 ;;206;PCE MEASUREMENTS NON-TABULAR;NTM;P
 ;;207;PCE IMMUNIZATIONS;IM;P
 ;;208;PCE SKIN TESTS;ST;P
 ;;209;PCE MEASUREMENTS SELECTED;MEAS;P
 ;;212;PCE EDUCATION;ED
 ;;213;PCE EDUCATION LATEST;EDL
 ;;220;PCE OUTPATIENT DIAGNOSIS;OD;P
 ;;230;PCE EXAMS LATEST;EXAM;P
 ;;231;PCE TREATMENTS PROVIDED;TP;P
 ;;232;CLINICAL REMINDERS MAINTENANCE;CM
 ;;233;PROGRESS NOTES SELECTED;SPN
 ;;234;CLINICAL REMINDERS SUMMARY;CRS
 ;;235;MAG IMAGING;MAGI
 ;;236;ONCOLOGY;ONC
 ;;237;VITAL SIGNS DETAILED DISPLAY;VSD
 ;;238;GLOBAL ASSESSMENT FUNCTIONING;GAF
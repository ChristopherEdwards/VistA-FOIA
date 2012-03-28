BGPMUAD8 ; IHS/MSC/MGH - Print MI measure NQF0074 ;13-Jul-2011 17:48;MGH
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;Delimeted output
 ;CAD on anti-lipid treatment
CAD3(CNT) ;EP
 D P1
 K ^TMP("BGPMU0074")
 Q
P1 ;Write individual measure
 N X,Y,Z,LIST1,LIST2,LIST3
 N DEN1,NUM1,DEN2,NUM2,PC1,PC2,EXC1,EXC2,STRING1,STRING2,STRING3
 N PRD1,PRD2,PRD3,PRD4,PRD5,PRD6,PRD7,PRD8,PRN1,PRN2,PRN3,PRN4,PRN5,PRN6,PRN7,PRN8
 S STRING1=$$NUM74("C")
 S STRING2=$$NUM74("P")
 S STRING3=$$NUM74("B")
 D SUMMARY1^BGPMUAP8(STRING1,STRING2,STRING3)
 ;First population
 S PRD1=$P(STRING1,U,5)-$P(STRING2,U,5) S PRD1=$FN(PRD1,",+",1)
 S PRD2=$P(STRING1,U,6)-$P(STRING2,U,6) S PRD2=$FN(PRD2,",+",1)
 S PRD3=$P(STRING1,U,7)-$P(STRING2,U,7) S PRD3=$FN(PRD3,",+",1)
 S PRD7=$P(STRING1,U,9)-$P(STRING2,U,9) S PRD7=$FN(PRD7,",+",1)
 S PRN1=$P(STRING1,U,5)-$P(STRING3,U,5) S PRN1=$FN(PRN1,",+",1)
 S PRN2=$P(STRING1,U,6)-$P(STRING3,U,6) S PRN2=$FN(PRN2,",+",1)
 S PRN3=$P(STRING1,U,7)-$P(STRING3,U,7) S PRN3=$FN(PRN3,",+",1)
 S PRN7=$P(STRING1,U,9)-$P(STRING3,U,9) S PRN7=$FN(PRN7,",+",1)
 S X=U_"REPORT PERIOD"_U_"%"_U_"PREV YR PERIOD"_U_"%"_U_"CHG FROM PREV YR"_U_"BASE YEAR"_U_"%"_U_"CHG FROM BASE"
 D S^BGPMUDEL(X,2,1)
 S X="Pts 18+ w/CAD or cardiac surgery"_U_$P(STRING1,U,1)_U_U_$P(STRING2,U,1)_U_U_U_$P(STRING3,U,1) D S^BGPMUDEL(X,1,1)
 S X="# Excluded (Exc)"_U_$P(STRING1,U,4)_U_U_$P(STRING2,U,4)_U_U_U_$P(STRING3,U,4)
 D S^BGPMUDEL(X,1,1)
 S X="Pts 18+ w/CAD or cardiac surgery less Exc"_U_$P(STRING1,U,3)_U_U_$P(STRING2,U,3)_U_U_U_$P(STRING3,U,3)
 D S^BGPMUDEL(X,1,1)
 S X="# w/lipid-lowering therapy"_U_$P(STRING1,U,2)_U_$J($P(STRING1,U,5),5,1)_U_$P(STRING2,U,2)_U_$J($P(STRING2,U,5),5,1)_U_PRD1_U_$P(STRING3,U,2)_U_$J($P(STRING3,U,5),5,1)_U_PRN1
 D S^BGPMUDEL(X,2,1)
 S X="# w/o lipid-lowering therapy"_U_$P(STRING1,U,8)_U_$J($P(STRING1,U,9),5,1)_U_$P(STRING2,U,8)_U_$J($P(STRING2,U,9),5,1)_U_PRD7_U_$P(STRING3,U,8)_U_$J($P(STRING3,U,9),5,1)_U_PRN7
 D S^BGPMUDEL(X,1,1)
 I $D(BGPLIST(BGPIC)) D P2
 Q
NUM74(TF) ;Get the numbers for this measure
 N ARRAY,DEN,NUM,EXC,NOT,PC1,PC11,PC2,PC14,PC21,PC13,NNUM
 S DEN=+$G(^TMP("BGPMU0074",$J,TF,"DEN"))
 S NUM=+$G(^TMP("BGPMU0074",$J,TF,"NUM"))
 S NOT=+$G(^TMP("BGPMU0074",$J,TF,"NOT"))
 S EXC=+$G(^TMP("BGPMU0074",$J,TF,"EXC"))
 S NNUM=DEN-EXC
 I DEN=0 S (PC1,PC11,PC13,PC14)=0
 I DEN>0&(NNUM=0) D
 .S (PC1,PC11,PC14)=0
 .S PC13=$$ROUND^BGPMUA01((EXC/DEN),3)*100
 I DEN>0&(NNUM>0) D
 .S PC1=$$ROUND^BGPMUA01((NUM/NNUM),3)*100
 .S PC11=$$ROUND^BGPMUA01((NNUM/DEN),3)*100
 .S PC13=$$ROUND^BGPMUA01((EXC/DEN),3)*100
 .S PC14=$$ROUND^BGPMUA01((NOT/NNUM),3)*100
 S ARRAY=DEN_U_NUM_U_NNUM_U_EXC_U_PC1_U_PC11_U_PC13_U_NOT_U_PC14
 Q ARRAY
P2 ;Do the Details
 N PT,NODE,NAME,VST,BMI,FOL,X,PTCT
 S PTCT=0
 S X="**** CONFIDENTIAL PATIENT INFORMATION COVERED BY PRIVACY ACT ****" D S^BGPMUDEL(X,2,1)
 S X="Patients 18+ with a diagnosis of CAD (includes MI) or who had cardiac surgery AND" D S^BGPMUDEL(X,1,1)
 S X="who had at least 2 outpatient or 2 nursing facility encounters with the EP during" D S^BGPMUDEL(X,1,1)
 S X="the reporting period, AND who were prescribed lipid-lowering therapy during the" D S^BGPMUDEL(X,1,1)
 S X="reporting period, if any." D S^BGPMUDEL(X,1,1)
 S X="" D S^BGPMUDEL(X,1,1)
 S X="Patients who did not meet the numerator criteria are listed first (NM:)," D S^BGPMUDEL(X,1,1)
 S X="followed by patients who do meet the numerator criteria (M:).  Excluded patients are" D S^BGPMUDEL(X,1,1)
 S X="listed last." D S^BGPMUDEL(X,1,1)
 S X="" D S^BGPMUDEL(X,1,1)
 S X="The following are the abbreviations used in the denominator and numerator" D S^BGPMUDEL(X,1,1)
 S X="columns:" D S^BGPMUDEL(X,1,1)
 S X="CAD=Coronary Artery Disease Diagnosis" D S^BGPMUDEL(X,1,1)
 S X="CSP=Cardiac Surgery Procedure" D S^BGPMUDEL(X,1,1)
 S X="EN=Encounter" D S^BGPMUDEL(X,1,1)
 S X="MED=Lipid-Lowering Therapy" D S^BGPMUDEL(X,1,1)
 S X="PATIENT NAME"_U_"HRN"_U_"COMMUNITY"_U_"SEX"_U_"AGE"_U_"DENOMINATOR"_U_"NUMERATOR" D S^BGPMUDEL(X,2,1)
 I BGPLIST="D"!(BGPLIST="A") D
 .K BGPARR
 .D PTLSORT^BGPMUUTL(.BGPARR,"^TMP(""BGPMU0074"","_$J_",""PAT"",""C"",""NOT"")")
 .S PT=0 F  S PT=$O(BGPARR(PT)) Q:PT=""  D
 ..S PTCT=PTCT+1
 ..S NODE=$G(BGPARR(PT))
 ..D DATA(NODE)
 I BGPLIST="N"!(BGPLIST="A") D
 .K BGPARR
 .D PTLSORT^BGPMUUTL(.BGPARR,"^TMP(""BGPMU0074"","_$J_",""PAT"",""C"",""NUM"")")
 .S PT=0 F  S PT=$O(BGPARR(PT)) Q:PT=""  D
 ..S PTCT=PTCT+1
 ..S NODE=$G(BGPARR(PT))
 ..D DATA(NODE)
 I BGPLIST="A" D
 .K BGPARR
 .D PTLSORT^BGPMUUTL(.BGPARR,"^TMP(""BGPMU0074"","_$J_",""PAT"",""C"",""EXC"")")
 .S PT=0 F  S PT=$O(BGPARR(PT)) Q:PT=""  D
 ..S PTCT=PTCT+1
 ..S NODE=$G(BGPARR(PT))
 ..D DATA(NODE)
 S X="Total # of patients on list: "_PTCT D S^BGPMUDEL(X,2,1)
 Q
DATA(NODE) ;GET DATA
 N NAME,HRN,DEN,NUM1,NUM2,AGE,DFN,SEX,COMM
 S DFN=$P(NODE,U,1)
 S NAME=$E($$GET1^DIQ(2,$P(NODE,U,1),.01),1,30)
 S HRN=$$HRN^AUPNPAT(DFN,DUZ(2))
 S AGE=$$AGE^AUPNPAT(DFN,BGPED)
 S COMM=$$GET1^DIQ(9000001,DFN,1118)
 S SEX=$P(^DPT(DFN,0),U,2)
 S DEN=$P(NODE,U,2),NUM=$P(NODE,U,3)
 S NUM1=$P(NUM,";",1),NUM2=$$DATE^BGPMUAP3($P($P(NUM,";",2),".",1))
 S X=NAME_U_HRN_U_COMM_U_SEX_U_AGE_U_DEN_U_NUM1_" "_NUM2 D S^BGPMUDEL(X,1,1)
 Q
XML0074 ;XML output for CAD anti-lipid meds
 ; BGPXML(i)=Population Number^Numerator Number^Denominator Count^exclusion number
 N STRING,TOTN,TOTD,TOTE
 S STRING=$$NUM74("C")
 S TOTD=$P(STRING,U,1)
 S TOTN=$P(STRING,U,2)
 S TOTE=$P(STRING,U,4)
 S BGPXML(1)="197"_U_U_+TOTD_U_TOTN_U_TOTE
 K ^TMP("BGPMU0074",$J)
 Q
ABMDF1E ; IHS/ASDST/DMJ - Set UB82 Print Array - Part 5 ;
 ;;2.6;IHS 3P BILLING SYSTEM;;NOV 12, 2009
 ;Original;TMD;
 ;
 ;IHS/DSD/DMJ - 5/14/1999 - NOIS HQW-0599-100027 Patch 2
 ;          Y2K IV&V issues, all $$HDT^ABMDUTL changed to $$HDTO^ABMDUTL
 ;                    in lines: 55+5,CPT55+4,MED+4
 ;
 ; IHS/SD/SDR - v2.6 CSV
 ;
53 ; Diagnosis Info
 S (ABMU("TXT"),ABMF(53),ABM)="" F ABM("I")=1:1:5 S ABM=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),17,"C",ABM)) Q:'ABM  D
 .S ABM("X")=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),17,"C",ABM,""))
 .S ABMF(53)=ABMF(53)_U_$P($$DX^ABMCVAPI(ABM("X"),ABMP("VDT")),U,2)  ;CSV-c
 .S ABM("PRVN")=$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),17,ABM("X"),0),U,3)
 .S ABM(9)=$P($G(^AUTNPOV(+ABM("PRVN"),0)),U)
 .I ABM(9)=$P($$DX^ABMCVAPI(ABM("X"),ABMP("VDT")),U,2) S ABM(9)=$P($$DX^ABMCVAPI(ABM("X"),ABMP("VDT")),U,4)  ;CSV-c
 .S ABMU("TXT")=ABMU("TXT")_", "_$S(ABM(9)["*ICD*":$P(ABM(9),"  "),1:ABM(9))
 S ABMU("TXT")=$P(ABMU("TXT"),", ",2,99)
 I $L(ABMU("TXT"))>45 S ABMU("LNG")=26,ABMU("TAB")=19,ABMU=2 D LNG^ABMDWRAP S $P(ABMF(52),U)=ABMU(1),$P(ABMF(53),U)=ABMU(2) K ABMU I 1
 E  S $P(ABMF(53),U)=ABMU("TXT")
 G 55
 ;
55 ; ICD Procedure Info
 S ABMU("TXT")=""
 I ABMP("PX")="C" G CPT55
 S ABMF(55)="",ABM="" F  S ABM=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),19,"C",ABM)) Q:ABM=""  S ABM("X0")=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),19,"C",ABM,"")) D
 .S ABMF(55)=ABMF(55)_"^"_$P($$ICDOP^ABMCVAPI($P(ABM("X0"),U),ABMP("VDT")),U,2)  ;CSV-c
 .S ABMF(55)=ABMF(55)_"^"_$$HDTO^ABMDUTL($P(^ABMDBILL(DUZ(2),ABMP("BDFN"),19,ABM("X0"),0),U,3))
 .S ABM(9)=$P(^AUTNPOV($P(^ABMDBILL(DUZ(2),ABMP("BDFN"),19,ABM("X0"),0),U,4),0),U)
 .S ABMU("TXT")=ABMU("TXT")_", "_$S(ABM(9)["*ICD*":$P(ABM(9),"  "),1:ABM(9))
 S:ABMF(55)]"" ABMF(55)="9^"_ABMF(55)
 D:ABMU("TXT")]"" PXTXT
 G 57
 ;
CPT55 ; CPT Procedure Info
 S ABMF(55)="",ABM="" F  S ABM=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),21,"C",ABM)) Q:ABM=""  S ABM("X1")=$O(^(ABM,"")) D
 .S ABM("X0")=^ABMDBILL(DUZ(2),ABMP("BDFN"),21,ABM("X1"),0)
 .S ABMF(55)=ABMF(55)_"^"_$P($$CPT^ABMCVAPI($P(ABM("X0"),U),ABMP("VDT")),U,2)  ;CSV-c
 .S ABMF(55)=ABMF(55)_"^"_$$HDTO^ABMDUTL($P(ABM("X0"),U,5))
 .S ABMU("TXT")=ABMU("TXT")_", "_$P($G(^AUTNPOV($P(ABM("X0"),U,6),0)),U)
 I $L(ABMF(55),"^")<6 D MED
 S:ABMF(55)]"" ABMF(55)="4^"_ABMF(55)
 D:ABMU("TXT")]"" PXTXT
 G 57
 ;
MED S ABM=0 F  S ABM=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),27,ABM)) Q:'ABM  D
 .I $P($$CPT^ABMCVAPI(ABM,ABMP("VDT")),U,4)>22,$P($$CPT^ABMCVAPI(ABM,ABMP("VDT")),U,4)<33,$P($$CPT^ABMCVAPI(ABM,ABMP("VDT")),U,4)'=31 Q  ;CSV-c
 .S ABM("X0")=^ABMDBILL(DUZ(2),ABMP("BDFN"),27,ABM,0)
 .S ABMF(55)=ABMF(55)_"^"_$P($$CPT^ABMCVAPI($P(ABM("X0"),U),ABMP("VDT")),U,2)  ;CSV-c
 .S ABMF(55)=ABMF(55)_"^"_$$HDTO^ABMDUTL(+^ABMDBILL(DUZ(2),ABMP("BDFN"),7))
 .S ABMU("TXT")=ABMU("TXT")_", "_$P($$CPT^ABMCVAPI($P(ABM("X0"),U),ABMP("VDT")),U,3)  ;CSV-c
 Q
 ;
57 ; Provider Info
 S ABM="" F ABM("I")=6:1:7 S ABM=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),41,"C",ABM)) Q:ABM=""  S ABM("X")=$O(^(ABM,"")) D
 .D SELBILL^ABMDE4X
 .I $L(ABM("PNUM")_" "_$P(ABM(ABM),U))<23 S $P(ABMF(57),U,ABM("I"))=ABM("PNUM")_" "_$P(ABM(ABM),U) Q
 .S $P(ABMF(57),U,ABM("I"))=$P(ABM(ABM),U)
 .S $P(ABMF(56),U,ABM("I")-5)=ABM("PNUM")
 ;
RACE ;BLOCK #27     
 S ABM("INSTYP")=$P($G(^AUTNINS(ABMP("INS"),2)),U) I ABM("INSTYP")]"","RD"[ABM("INSTYP") D
 .S ABM("RACE")=$S($P(^AUPNPAT(ABMP("PDFN"),11),U,11)=1:"I",1:"U")
 .S (ABM("COM"),ABM("RES"))=0 F  S ABM("RES")=$O(^AUPNPAT(ABMP("PDFN"),51,ABM("RES"))) Q:'ABM("RES")  S ABM("COM")=$P(^(ABM("RES"),0),U,3)
 .G XIT:'ABM("COM") S ABM("COM")=$P($G(^AUTTCOM(ABM("COM"),0)),U,2) G XIT:'ABM("COM") S ABM("COM")=$P(^AUTTCTY(ABM("COM"),0),U,3)
 .S $P(ABMF(8),U,17)=ABM("RACE")_"/"_ABM("COM")
 .I ABM("INSTYP")="D" D
 ..S ABM("MCDFN")=$O(^AUPNMCD("B",ABMP("PDFN"),0)) Q:'ABM("MCDFN")
 ..Q:$P($G(^AUPNMCD(ABM("MCDFN"),0)),"^",4)'=6
 ..S $P(ABMF(8),"^",17)=$P(^AUPNMCD(ABM("MCDFN"),0),"^",3)
 ;
XIT K ABM,ABMV,ABMX
 Q
 ;
PXTXT S ABMU("TXT")=$P(ABMU("TXT"),", ",2,99)
 I $L(ABMU("TXT"))>41 S ABMU("LNG")=22,ABMU("TAB")=19,ABMU=2 D LNG^ABMDWRAP S $P(ABMF(54),U)=ABMU(1),$P(ABMF(55),U,2)=ABMU(2) K ABMU I 1
 E  S $P(ABMF(55),U,2)=ABMU("TXT")
 Q
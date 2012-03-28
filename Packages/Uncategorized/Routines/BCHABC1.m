BCHABC1 ; IHS/TUCSON/LAB - CREATE PCC V FILE ENTRIES FROM CHR RECORD ;  [ 05/06/04  11:52 AM ]
 ;;1.0;IHS RPMS CHR SYSTEM;**4,5,6,9,11,16**;OCT 28, 1996
 ;
 ; IHS/TUCSON/DCP - PATCH 4 10/17/97 - change location of a line of
 ; code in tag POV to avoid UNDEFINED errors.
 ;
 ; CMI/TUCSON/LAB - PATCH 5 6/22/98 - change reference to BCHPROB
 ; to BCHTPROB
 ; modified V LAB creation
 ;Create PCC Visit - continued.
 ;Creates V File entries for V Provider, V POV, V Measurement,
 ; V Activity Time, V Skin Test, V Lab and Reproductive Factors
 ;Calls APCDALVR to create entries.  If entry fails, a bulletin
 ; is sent to appropriate users.
 ;
 ;IHS/CMI/LAB - 9/17/1998 - - patch 6 changes icd codes to generic for health education and case finding service codes
 ;
 ;
VFILES ;EP Create v file entries
 D PROV
 I $G(BCHQUIT) D VFERROR
 D POV
 D MEAS
 D AT
 D PED
 D SKINTEST
 D LABS
 D REPRO
 I $D(BCHQUIT) D VFERROR
 D KILL
 D EOJ
 Q
KILL ;
 K APCDALVR,BCHPAT,BCHLOC,BCHTYPE,BCHCAT,BCHCLN,BCHTPRO,BCHTPS,BCHTPOV,BCHTNQ,BCHTTOP,BCHTLOU,BCHTPRV,BCHTAT,BCHATMP,BCHAFLG,BCHAUTO,BCHANE,AUPNTALK,BCHAPPT
 Q
 ;
APCDALVR ;call APCDALVR
 D ^APCDALVR
 I $D(APCDALVR("APCDAFLG")) S BCHQUIT=APCDALVR("APCDAFLG") D VFERROR Q
 S BCHV("VFILES",APCDALVR("APCDAVF"),APCDALVR("APCDADFN"))=""
 Q
PROV ; v provider
 S BCHFILE="V PROVIDER"
 D KILL
 S APCDALVR("APCDVSIT")=BCHVSIT
 S APCDALVR("APCDATMP")="[APCDALVR 9000010.06 (ADD)]"
 S APCDALVR("APCDPAT")=$P(BCHEV("DATA0"),U,4)
 S APCDALVR("APCDTPS")="P"
 S X=$P(BCHEV("DATA0"),U,3) I $P(^DD(9000010.06,.01,0),U,2)[6 S P=$P(BCHEV("DATA0"),U,3),A=$P(^DIC(3,P,0),U,16) D  K A,P Q:X=""
 .I A="" S BCHQUIT=42,X="" Q
 .I $P(^VA(200,P,0),U)'=$P(^DIC(16,A,0),U) S BCHQUIT=42,X="" Q
 .S X=A
 I X="" S BCHQUIT=41 Q
 I X]"" S APCDALVR("APCDTPRO")="`"_X
 D APCDALVR
 Q
POV ;create V POVS
 S BCHFILE="V POV"
 S (BCHX,BCHGOT)=0 F  S BCHX=$O(BCHEV("POV",BCHX)) Q:BCHX'=+BCHX   D
 .S X=$G(BCHEV("POV",BCHX,"SRV")) Q:'$P(X,U,4)  ;don't pass non-pcc services
 .D KILL
 .;IHS/TUCSON/DCP PATCH 4 - next line in wrong place: moved 6 lines down
 .;S APCDALVR("APCDTPOV")=BCHEV("POV",BCHX,"ICD9") I APCDALVR("APCDTPOV")="" S BCHQUIT=43 D VFERROR Q
 .S APCDALVR("APCDVSIT")=BCHVSIT
 .S APCDALVR("APCDATMP")="[APCDALVR 9000010.07 (ADD)]"
 .S APCDALVR("APCDPAT")=$P(BCHEV("DATA0"),U,4)
 .S APCDALVR("APCDOVRR")=""
 .;S APCDALVR("APCDTNQ")="`"_$P(BCHEV("POV",BCHX),U,6)
 .;IHS/TUCSON/DCP PATCH 4 - next line moved from old location at POV+5
 .S APCDALVR("APCDTPOV")=BCHEV("POV",BCHX,"ICD9") I APCDALVR("APCDTPOV")="" Q  ;PATCH 11, don't send bulletin
 .I $P($G(BCHEV("POV",BCHX,"SRV")),U,3)="HE" S APCDALVR("APCDTPOV")="V65.49"  ;IHS/CMI/LAB - override ICD9 code for Health Education patch 6 09/17/98
 .I $P($G(BCHEV("POV",BCHX,"SRV")),U,3)="CF" S APCDALVR("APCDTPOV")="V82.89"  ;IHS/CMI/LAB - override ICD9 code for Case Finding/Screening patch 6 09/17/98 ;ICD UPDATE PATCH 11
 .S X=$P(BCHEV("POV",BCHX),U,6)
 .S X=$S(X:$E($P(^AUTNPOV(X,0),U),1,74),1:$E($P(^BCHTPROB($P(BCHEV("POV",BCHX),U),0),U),1,74)) ;CMI/TUCSON/LAB - changed BCHPROB to BCHTPROB patch 5 6/22/98
 .S APCDALVR("APCDTNQ")=X_" - CHR"
 .D APCDALVR
 .Q
 Q
LABS ;
 Q:'$D(BCHEV("DATA13"))  ;no labs passed
 Q:$G(BCHEV("DATA13"))=""  ;no labs passed
 S BCHFILE="V LAB"
 S %=$P($G(^BCHSITE(DUZ(2),0)),U,12) I % S %="`"_%
 I %="" S %="BLOOD SUGAR"
 S BCHMEAS=%_";;THROAT CULTURE;;UA;;HCT" ;IHS/TUCSON/LAB - reversed UA and HCT patch 5
 F BCHX=1:2:7 I $P(BCHEV("DATA13"),U,BCHX)!($P(BCHEV("DATA13"),U,(BCHX+1))]"") D  ;IHS/TUCSON/LAB - modified 8 to 7 patch 5
 .D KILL
 .S APCDALVR("APCDVSIT")=BCHVSIT
 .S APCDALVR("APCDATMP")="[APCDALVR 9000010.09 (ADD)]"
 .S APCDALVR("APCDTLAB")=$P(BCHMEAS,";",BCHX)
 .S APCDALVR("APCDPAT")=$P(BCHEV("DATA0"),U,4)
 .S APCDALVR("APCDTRES")=$P(BCHEV("DATA13"),U,(BCHX+1))
 .D APCDALVR
 .Q
 S Z=$P($G(^BCHSITE(DUZ(2),0)),U,17) I Z S Z="`"_Z
 I Z="" S Z="HEMOGLOBIN A1C"
 I $P(BCHEV("DATA13"),U,9)]"" D
 .D KILL
 .S APCDALVR("APCDVSIT")=BCHVSIT
 .S APCDALVR("APCDATMP")="[APCDALVR 9000010.09 (ADD)]"
 .S APCDALVR("APCDTLAB")=Z
 .S APCDALVR("APCDPAT")=$P(BCHEV("DATA0"),U,4)
 .S APCDALVR("APCDTRES")=$P(BCHEV("DATA13"),U,9)
 .D APCDALVR
 .Q
 K BCHMEAS,BCHX
 Q
REPRO ;reproductive factors
 Q:$P(^DPT($P(BCHEV("DATA0"),U,4),0),U,2)'="F"
 I $P($G(BCHEV("DATA0")),U,13)="",$P($G(BCHEV("DATA0")),U,14)="" Q
 K BCHQUIT
 S BCHFILE="REPRODUCTIVE FACTORS"
 I '$D(^AUPNREP($P(BCHEV("DATA0"),U,4))) S X=$P(BCHEV("DATA0"),U,4),DLAYGO=9000017,DIADD=1,DINUM=X,DIC="^AUPNREP(",DIC(0)="L" K DD D FILE^DICN K DIC,DA,DIADD,DLAYGO,X D  Q:$D(BCHQUIT)
 .I Y=-1  S BCHQUIT=44 Q
 .Q
 K DR,DIE
 I $P(BCHEV("DATA0"),U,13)]"" S Y=$P(BCHEV("DATA0"),U,13) D DD^%DT S DR="2///"_Y_";2.1///^S X="_$P(BCHEV("DATA0"),U),DA=$P(BCHEV("DATA0"),U,4),DIE="^AUPNREP(" D ^DIE K DIE,DA,DR,DIV,DIY,DIW I $D(Y) S BCHQUIT=45 Q
 I $P(BCHEV("DATA0"),U,14)]"" S Y=$P(BCHEV("DATA0"),U,14) S Y=$P(^BCHTFPM(Y,0),U,3) S DR="3///"_Y_";3.1///^S X="_$P($P(BCHEV("DATA0"),U),"."),DA=$P(BCHEV("DATA0"),U,4),DIE="^AUPNREP(" D ^DIE K DIE,DA,DR,DIV,DIY,DIW I $D(Y) S BCHQUIT=45 Q
 Q
MEAS ;
 Q:'$D(BCHEV("DATA12"))  ;no measurements passed
 Q:$G(BCHEV("DATA12"))=""  ;no measurements passed
 S BCHFILE="V MEASUREMENT"
 S BCHMEAS="BP;WT;HT;HC;VU;VC;TMP;PU;RS;"
 F BCHX=1:1:9 I $P(BCHEV("DATA12"),U,BCHX)]"" D
 .D KILL
 .S APCDALVR("APCDVSIT")=BCHVSIT
 .S APCDALVR("APCDATMP")="[APCDALVR 9000010.01 (ADD)]"
 .S APCDALVR("APCDTTYP")=$P(BCHMEAS,";",BCHX)
 .S APCDALVR("APCDPAT")=$P(BCHEV("DATA0"),U,4)
 .S APCDALVR("APCDTVAL")=$P(BCHEV("DATA12"),"^",BCHX)
 .D APCDALVR
 .Q
 K BCHMEAS,BCHX
 Q
SKINTEST ;
 Q:$P($G(BCHEV("DATA12")),U,10)=""
 S BCHFILE="V SKIN TEST"
 D KILL
 S APCDALVR("APCDTSK")="PPD"
 S APCDALVR("APCDVSIT")=BCHVSIT
 S APCDALVR("APCDATMP")="[APCDALVR 9000010.12 (ADD)]"
 S APCDALVR("APCDPAT")=$P(BCHEV("DATA0"),U,4)
 S APCDALVR("APCDTREA")=$P(BCHEV("DATA12"),U,10)
 S Y=$P($P(BCHEV("DATA0"),U),".") D DD^%DT S APCDALVR("APCDTDR")=Y
 D APCDALVR
 Q
AT ;create v activity time record
 S BCHFILE="V ACTIVITY TIME"
 D KILL
 S (BCHX,BCHT)=0 F  S BCHX=$O(BCHEV("POV",BCHX)) Q:BCHX'=+BCHX  S BCHT=BCHT+$P(BCHEV("POV",BCHX),U,5)
 S APCDALVR("APCDTACT")=BCHT
 S APCDALVR("APCDVSIT")=BCHVSIT
 S APCDALVR("APCDATMP")="[APCDALVR 9000010.19 (ADD)]"
 S APCDALVR("APCDPAT")=$P(BCHEV("DATA0"),U,4)
 S APCDALVR("APCDTTM")=+$P(BCHEV("DATA0"),U,11)
 D APCDALVR
 Q
PED ;
 S BCHFILE="PAT ED"
 S (BCHX,BCHGOT)=0 F  S BCHX=$O(BCHEV("EDUC",BCHX)) Q:BCHX'=+BCHX   D
 .D KILL
 .S APCDALVR("APCDVSIT")=BCHVSIT
 .S APCDALVR("APCDATMP")="[APCDALVR 9000010.16 (ADD)]"
 .S APCDALVR("APCDPAT")=$P(BCHEV("DATA0"),U,4)
 .S APCDALVR("APCDTTOP")="`"_$P(BCHEV("EDUC",BCHX),U)
 .S X=$P(BCHEV("EDUC",BCHX),U,5) I X D   I X S APCDALVR("APCDTPRO")="`"_X
 ..I $P(^DD(9000010.16,.05,0),U,2)[6 S X=$G(^DIC(16,X,"A3"))
 ..Q
 .S APCDALVR("APCDTIG")=$P(BCHEV("EDUC",BCHX),U,7)
 .S APCDALVR("APCDTMIN")=$P(BCHEV("EDUC",BCHX),U,8)
 .S APCDALVR("APCDTLOU")=$P(BCHEV("EDUC",BCHX),U,6)
 .S APCDALVR("APCDTOBJ")=$TR($P(BCHEV("EDUC",BCHX),U,14),";",",")
 .S APCDALVR("APCDOVRR")=""
 .D APCDALVR
 .Q
 Q
EOJ ;
 D KILL
 K BCHDATK,BCHPAT,BCHX,BCHACTL,BCHLOC
 Q
VFERROR ;EP
 S BCHIEN=BCHEV("CHR IEN")
 S BCHERR="VE"_BCHQUIT,BCHERR=$P($T(@BCHERR),";;",2)
 D LBULL^BCHALD
 K BCHQUIT,BCHERR
 Q
 ;
VE1 ;;incorrect template specification
VE2 ;;invalid values being passed to V file.
VE3 ;;invalid visit parameters (date, location etc.)
VE41 ;;No PROVIDER ENTRY PASSED from CHR SYSTEM.
VE42 ;;Could NOT convert 200 Pointer to 6 pointer.
VE43 ;;Could not find ICD9 code in ICD DIagnosis file.
VE44 ;;Could not create entry in Reproductive Factors file
VE45 ;;Error updating LMP or FP Method in Reproductive Factors file
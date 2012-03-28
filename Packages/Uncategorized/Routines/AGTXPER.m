AGTXPER ; IHS/ASDS/EFG - SCAN AND TRAN PAST TX ERRORS ; 
 ;;7.1;PATIENT REGISTRATION;**2**;JAN 31, 2007
S ;
 ;agtxper is tested in SA1+1^AGTX0 to quit and return here if set.
 ;versus returning to scan agpatch
 ;scan all past errors
 S AGDZSITE=DUZ(2),AGR1SAVE=AGR1,AGTXPER=1,AGR1=0
 F  S AGR1=$O(^AGPATCH("ER",AGR1)),AGDTS=AGR1,AGRR1=AGR1 Q:((AGR1="")!(AGR1>9999999))  D
 .S AG("SITE")=0 F  S AG("SITE")=$O(^AGPATCH("ER",AGR1,AG("SITE"))) Q:'AG("SITE")  D
 ..S AGR2=0 F  S AGR2=$O(^AGPATCH("ER",AGR1,AG("SITE"),AGR2)),DFN=AGR2 Q:'AGR2  D
 ...;I $P(^DPT(DFN,0),"^",19)>0 K ^AGPATCH("ER",AGR1,AG("SITE"),AGR2) Q  ;merged patient
 ...I ('$D(^DPT(DFN,0)))!$P($G(^DPT(DFN,0)),U,19)>0 K ^AGPATCH("ER",AGR1,AG("SITE"),AGR2) Q  ;merged patient ;IM20163
 ...I '$D(^AGPATCH(AGR1,AG("SITE"),AGR2)) K ^AGPATCH("ER",AGR1,AG("SITE"),AGR2) Q  ;patch node gone
 ...S DUZ(2)=AG("SITE") D TXPER^AGTX0
 S DUZ(2)=AGDZSITE,AGR1=AGR1SAVE K AGTXPER,AGR1SAVE,AGDZSITE
 Q
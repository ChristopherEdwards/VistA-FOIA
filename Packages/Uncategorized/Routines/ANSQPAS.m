ANSQPAS ;IHS/OIRM/DSD/CSC - PRINT PATIENT ACUITY REPORTS; [ 02/25/98  10:32 AM ]
 ;;3.0;NURSING PATIENT ACUITY;;APR 01, 1996
 ;;PRINT PATIENT ACUITY REPORTS
 I '$D(ANSPAR) S ANSPAR=^ANSD(51,1,0)
A0 D HEAD^ANSQPAA
 I $D(ANSUNIT) D SB1
 S ANSPT=0
A1 F  S ANSPT=$O(^TMP("ANS",ANSJOB,"P",ANSPT)) Q:ANSPT=""  D
 .S ANSDFN=0
A2 .S ANSDFN=$O(^TMP("ANS",ANSJOB,"P",ANSPT,ANSDFN)) Q:ANSDFN=""  D
 ..S ANSADM=^TMP("ANS",ANSJOB,"P",ANSPT,ANSDFN)
 ..D ^ANSQPAA
 W:$D(IOF) @IOF
 Q
SB1 S ANSDFN="",ANSJOB=$J
 F  S ANSDFN=$O(^ANSR("PT",ANSDFN)) Q:ANSDFN=""  D
 .Q:'$D(^DPT(ANSDFN,0))
 .S X=$P(^DPT(ANSDFN,0),U)
 .S ANSADM=0
 .F  S ANSADM=$O(^ANSR("PT",ANSDFN,ANSADM)) Q:ANSADM=""  D
 ..Q:'$D(^ANSR(ANSADM,0))
 ..Q:'$D(^ANSR(ANSADM,"DX"))
 ..Q:$P(^ANSR(ANSADM,"DX"),U,2)'=ANSUNIT
 ..S ^TMP("ANS",$J,"P",$E(X,1,30),ANSDFN)=ANSADM
 Q
VAQREQ08 ;ALB/JFP - REQUEST PDX RECORD, COMMENT (WP);01MAR93
 ;;1.5;PATIENT DATA EXCHANGE;;NOV 17, 1993
EP ; -- Main entry point
 ;    - called from VAQREQ02
 ;
COMMENT ;TEST ENTERING OF MULTI-LINED COMMENT
 N DIC,DWLW,DWPK,DIWESUB
 K ^TMP("CMNT",$J)
 S:'$D(VAQCMNT) VAQCMNT=""
 S DIC="^TMP(""CMNT"",$J,"
 S DWLW=80,DWPK=1,DIWESUB="CMNT"
 W !!,"Enter PDX "_VAQCMNT_"Comment:"
 D EN^DIWE
 K DIC,DWLW,DWPK,DIWESUB
 Q
END ; -- End of code
 QUIT
ACRF19EN ;IHS/OIRM/DSD/AEF - PATCH 19 ENVIRONMENT CHECK ROUTINE [ 10/04/2005  3:52 PM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;**19**;NOV 05, 2001
 ;
EN ;EP -- MAIN ENTRY POINT
 ;
 ;CALL GENERIC EN^ACRFPENV(ACRPCHN,ACRPCHS,.XPDQUIT) ENVIRONMENT
 ;CHECK ROUTINE
 ;
 ;      WHERE:
 ;      ACRPCHN  =  PATCH NAME
 ;      ACRPCHS  =  PREREQUISITE PATCH NUMBERS
 ;      XPDQUIT  =  KIDS INSTALL TERMINATOR VARIABLE OUTPUT
 ;                  1 = QUIT
 ;
 K XPDQUIT
 ;
 S ACRPCHN="ACR*2.1*19"
 S ACRPCHS="1,2,3,4,5,6,7,8,12,13,14,15,16,17,18"          ;CHANGE AS NEEDED
 ;
 D EN^ACRFPENV(ACRPCHN,ACRPCHS,.XPDQUIT)
 ;
 Q
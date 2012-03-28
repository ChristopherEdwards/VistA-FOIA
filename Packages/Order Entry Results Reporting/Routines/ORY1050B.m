ORY1050B ;SLC/RJS,CLA - OCX PACKAGE RULE TRANSPORT ROUTINE (Delete after Install of OR*3*105) ;OCT 16,2001 at 15:39
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**105**;Dec 17,1997
 ;;  ;;ORDER CHECK EXPERT version 1.01 released OCT 29,1998
 ;
S ;
 ;
 D DOT^ORY105ES
 ;
 ;
 K REMOTE,LOCAL,OPCODE,REF
 F LINE=1:1:500 S TEXT=$P($T(DATA+LINE),";",2,999) Q:TEXT  I $L(TEXT) D  Q:QUIT
 .S ^TMP("OCXRULE",$J,$O(^TMP("OCXRULE",$J,"A"),-1)+1)=TEXT
 ;
 G ^ORY1050C
 ;
 Q
 ;
DATA ;
 ;
 ;;D^PATIENT.ORDER_ITEM_IEN
 ;;EOR^
 ;;KEY^860.4:^ORDERABLE ITEM NAME
 ;;R^"860.4:",.01,"E"
 ;;D^ORDERABLE ITEM NAME
 ;;R^"860.4:",1,"E"
 ;;D^OI NAME
 ;;R^"860.4:",101,"E"
 ;;D^FREE TEXT
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.01,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.02,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",1,"E"
 ;;D^PATIENT.ORD_ITEM_NAME
 ;;EOR^
 ;;KEY^860.4:^PATIENT IEN
 ;;R^"860.4:",.01,"E"
 ;;D^PATIENT IEN
 ;;R^"860.4:",101,"E"
 ;;D^NUMERIC
 ;;R^"860.4:","860.41:CPRS ORDER PROTOCOL^860.6",.01,"E"
 ;;D^CPRS ORDER PROTOCOL
 ;;R^"860.4:","860.41:CPRS ORDER PROTOCOL^860.6",.02,"E"
 ;;D^OERR ORDER EVENT FLAG PROTOCOL
 ;;R^"860.4:","860.41:CPRS ORDER PROTOCOL^860.6",1,"E"
 ;;D^PATIENT.OERR_ORDER_PATIENT
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.01,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.02,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",1,"E"
 ;;D^PATIENT.IEN
 ;;R^"860.4:","860.41:GENERIC HL7 MESSAGE ARRAY^860.6",.01,"E"
 ;;D^GENERIC HL7 MESSAGE ARRAY
 ;;R^"860.4:","860.41:GENERIC HL7 MESSAGE ARRAY^860.6",.02,"E"
 ;;D^HL7 PATIENT ID SEGMENT
 ;;R^"860.4:","860.41:GENERIC HL7 MESSAGE ARRAY^860.6",1,"E"
 ;;D^PATIENT.HL7_PATIENT_ID
 ;;EOR^
 ;;KEY^860.4:^PATIENT LOCATION
 ;;R^"860.4:",.01,"E"
 ;;D^PATIENT LOCATION
 ;;R^"860.4:",1,"E"
 ;;D^PT LOC
 ;;R^"860.4:",101,"E"
 ;;D^FREE TEXT
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.01,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.02,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",1,"E"
 ;;D^PATIENT.LOCATION
 ;;EOR^
 ;;KEY^860.4:^RECENT CONTRAST MEDIA CREATININE DAYS
 ;;R^"860.4:",.01,"E"
 ;;D^RECENT CONTRAST MEDIA CREATININE DAYS
 ;;R^"860.4:",1,"E"
 ;;D^CM-CREAT DAYS
 ;;R^"860.4:",101,"E"
 ;;D^NUMERIC
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.01,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.02,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",1,"E"
 ;;D^PATIENT.CM_CREAT_DAYS
 ;;EOR^
 ;;KEY^860.4:^RECENT CONTRAST MEDIA CREATININE FLAG
 ;;R^"860.4:",.01,"E"
 ;;D^RECENT CONTRAST MEDIA CREATININE FLAG
 ;;R^"860.4:",1,"E"
 ;;D^CM-CREAT FLAG
 ;;R^"860.4:",101,"E"
 ;;D^BOOLEAN
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.01,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.02,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",1,"E"
 ;;D^PATIENT.CM_CREAT_FLAG
 ;;EOR^
 ;;KEY^860.4:^REQUEST STATUS (OBR)
 ;;R^"860.4:",.01,"E"
 ;;D^REQUEST STATUS (OBR)
 ;;R^"860.4:",101,"E"
 ;;D^FREE TEXT
 ;;R^"860.4:","860.41:GENERIC HL7 MESSAGE ARRAY^860.6",.01,"E"
 ;;D^GENERIC HL7 MESSAGE ARRAY
 ;;R^"860.4:","860.41:GENERIC HL7 MESSAGE ARRAY^860.6",.02,"E"
 ;;D^HL7 OBSERVATION REQUEST SEGMENT
 ;;R^"860.4:","860.41:GENERIC HL7 MESSAGE ARRAY^860.6",1,"E"
 ;;D^PATIENT.HL7_REQUEST_STATUS
 ;;EOR^
 ;;KEY^860.4:^SITE FLAGGED ORDER
 ;;R^"860.4:",.01,"E"
 ;;D^SITE FLAGGED ORDER
 ;;R^"860.4:",1,"E"
 ;;D^SITEORD
 ;;R^"860.4:",101,"E"
 ;;D^BOOLEAN
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.01,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.02,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",1,"E"
 ;;D^PATIENT.SITE_FLAGGED_ORDER
 ;;EOR^
 ;;EOF^OCXS(860.4)^1
 ;;SOF^860.3  ORDER CHECK ELEMENT
 ;;KEY^860.3:^ABNORMAL RENAL RESULTS
 ;;R^"860.3:",.01,"E"
 ;;D^ABNORMAL RENAL RESULTS
 ;;R^"860.3:",.02,"E"
 ;;D^CPRS ORDER PRESCAN
 ;;R^"860.3:","860.31:1",.01,"E"
 ;;D^1
 ;;R^"860.3:","860.31:1",1,"E"
 ;;D^MOST RECENT RENAL TEST ABNORMAL FLAG
 ;;R^"860.3:","860.31:1",2,"E"
 ;;D^LOGICAL TRUE
 ;;EOR^
 ;;KEY^860.3:^CONTRAST MEDIA ORDER
 ;;R^"860.3:",.01,"E"
 ;;D^CONTRAST MEDIA ORDER
 ;;R^"860.3:",.02,"E"
 ;;D^CPRS ORDER PRESCAN
 ;;R^"860.3:","860.31:1",.01,"E"
 ;;D^1
 ;;R^"860.3:","860.31:1",1,"E"
 ;;D^ORDER MODE
 ;;R^"860.3:","860.31:1",2,"E"
 ;;D^EQ FREE TEXT
 ;;R^"860.3:","860.31:1",3,"E"
 ;;D^SELECT
 ;;R^"860.3:","860.31:4",.01,"E"
 ;;D^4
 ;;R^"860.3:","860.31:4",1,"E"
 ;;D^CONTRAST MEDIA CODE
 ;;R^"860.3:","860.31:4",2,"E"
 ;;D^CONTAINS
 ;;R^"860.3:","860.31:4",3,"E"
 ;;D^M
 ;;EOR^
 ;;KEY^860.3:^GREATER THAN LAB THRESHOLD
 ;;R^"860.3:",.01,"E"
 ;;D^GREATER THAN LAB THRESHOLD
 ;;R^"860.3:",.02,"E"
 ;;D^GENERIC HL7 MESSAGE ARRAY
 ;;R^"860.3:","860.31:1",.01,"E"
 ;;D^1
 ;;R^"860.3:","860.31:1",1,"E"
 ;;D^LAB RESULT > THRESHOLD
 ;;R^"860.3:","860.31:1",2,"E"
 ;;D^LOGICAL TRUE
 ;;EOR^
 ;;KEY^860.3:^HL7 FINAL LAB RESULT
 ;;R^"860.3:",.01,"E"
 ;;D^HL7 FINAL LAB RESULT
 ;;R^"860.3:",.02,"E"
 ;;D^GENERIC HL7 MESSAGE ARRAY
 ;;R^"860.3:","860.31:3",.01,"E"
 ;;D^3
 ;;R^"860.3:","860.31:3",1,"E"
 ;;D^CONTROL CODE
 ;;R^"860.3:","860.31:3",2,"E"
 ;;D^EQUALS ELEMENT IN SET
 ;;R^"860.3:","860.31:3",3,"E"
 ;;D^RE
 ;;R^"860.3:","860.31:4",.01,"E"
 ;;D^4
 ;;R^"860.3:","860.31:4",1,"E"
 ;;D^FILLER
 ;;R^"860.3:","860.31:4",2,"E"
 ;;D^STARTS WITH
 ;;R^"860.3:","860.31:4",3,"E"
 ;;D^LR
 ;;R^"860.3:","860.31:5",.01,"E"
 ;;D^5
 ;;R^"860.3:","860.31:5",1,"E"
 ;;D^REQUEST STATUS (OBR)
 ;;R^"860.3:","860.31:5",2,"E"
 ;;D^EQUALS ELEMENT IN SET
 ;;R^"860.3:","860.31:5",3,"E"
 ;;D^F,C
 ;;EOR^
 ;;KEY^860.3:^LESS THAN LAB THRESHOLD
 ;;R^"860.3:",.01,"E"
 ;;D^LESS THAN LAB THRESHOLD
 ;;R^"860.3:",.02,"E"
 ;;D^GENERIC HL7 MESSAGE ARRAY
 ;;R^"860.3:","860.31:1",.01,"E"
 ;;D^1
 ;;R^"860.3:","860.31:1",1,"E"
 ;;D^LAB RESULT < THRESHOLD
 ;;R^"860.3:","860.31:1",2,"E"
 ;;D^LOGICAL TRUE
 ;;EOR^
 ;;KEY^860.3:^NEW SITE FLAGGED ORDER
 ;;R^"860.3:",.01,"E"
 ;;D^NEW SITE FLAGGED ORDER
 ;;R^"860.3:",.02,"E"
 ;;D^GENERIC HL7 MESSAGE ARRAY
 ;;R^"860.3:","860.31:1",.01,"E"
 ;;D^1
 ;;R^"860.3:","860.31:1",1,"E"
 ;;D^SITE FLAGGED ORDER
 ;;R^"860.3:","860.31:1",2,"E"
 ;;D^LOGICAL TRUE
 ;;R^"860.3:","860.31:2",.01,"E"
 ;;D^2
 ;;R^"860.3:","860.31:2",1,"E"
 ;;D^CONTROL CODE
 ;;R^"860.3:","860.31:2",2,"E"
 ;;D^EQUALS ELEMENT IN SET
 ;;R^"860.3:","860.31:2",3,"E"
 ;;D^NW,SN,XO
 ;;EOR^
 ;;KEY^860.3:^NO CREAT RESULTS W/IN X DAYS
 ;;R^"860.3:",.01,"E"
 ;;D^NO CREAT RESULTS W/IN X DAYS
 ;;R^"860.3:",.02,"E"
 ;;D^CPRS ORDER PRESCAN
 ;;R^"860.3:","860.31:1",.01,"E"
 ;;D^1
 ;;R^"860.3:","860.31:1",1,"E"
 ;;D^RECENT CONTRAST MEDIA CREATININE FLAG
 ;;R^"860.3:","860.31:1",2,"E"
 ;;D^LOGICAL FALSE
 ;;EOR^
 ;;KEY^860.3:^ORDER FLAGGED
 ;;R^"860.3:",.01,"E"
 ;;D^ORDER FLAGGED
 ;;R^"860.3:",.02,"E"
 ;;D^CPRS ORDER PROTOCOL
 ;;R^"860.3:","860.31:1",.01,"E"
 ;;D^1
 ;;R^"860.3:","860.31:1",1,"E"
 ;;D^ORDER FLAGGED FOR CLARIFICATION
 ;;R^"860.3:","860.31:1",2,"E"
 ;;D^LOGICAL TRUE
 ;;EOR^
 ;;KEY^860.3:^ORDER UNFLAGGED
 ;;R^"860.3:",.01,"E"
 ;;D^ORDER UNFLAGGED
 ;;R^"860.3:",.02,"E"
 ;;D^CPRS ORDER PROTOCOL
 ;;R^"860.3:","860.31:1",.01,"E"
 ;;D^1
 ;;R^"860.3:","860.31:1",1,"E"
 ;;D^ORDER FLAGGED FOR CLARIFICATION
 ;;R^"860.3:","860.31:1",2,"E"
 ;;D^LOGICAL FALSE
 ;;EOR^
 ;;EOF^OCXS(860.3)^1
 ;;SOF^860.2  ORDER CHECK RULE
 ;;KEY^860.2:^BIOCHEM ABNORMALITIES/CONTRAST MEDIA CHECK
 ;;R^"860.2:",.01,"E"
 ;;D^BIOCHEM ABNORMALITIES/CONTRAST MEDIA CHECK
 ;;R^"860.2:","860.21:1",.01,"E"
 ;;D^CONTRAST MEDIA ORDER
 ;1;
 ;
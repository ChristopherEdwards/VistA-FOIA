PSSCMOPE ;BIR-TTH ENVIRONMENT CHECK CMOP CS PROJECT ; 2/3/2000 15:19
 ;;1.0; PHARMACY DATA MANAGEMENT;**28**;9/30/97
 ;
 ;Reference to $$VERSION^XPDUTL supported by DBIA #10141
 ;Reference to $$PATCH^XPDUTL  supported by DBIA #10141
 ;
 I $$VERSION^XPDUTL("CMOP")?1"2".E,'$$PATCH^XPDUTL("PSX*2.0*23") D BMES^XPDUTL("You must install patch PSX*2*23") S XPDQUIT=1
 Q
BARDYSV1 ; IHS/SD/TPF - DAYS IN A/R REPORT CALLS ; 
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**1,16**;OCT 22,2008
 ;
 Q
FIRLSTPY(BILL3P) ;EP - FIND THE FIRST-LAST PAYMENT MADE IN TRANSACTION FILE
 N RETURN,TRANIEN,BILLAR,FIRST,LAST
 S BILL3P=BILL3P_" ",FIRST=0,LAST=0
 ;FIND AR BILL IEN CORRESPONDING TO 3P BILL IEN USING THE ACTUAL BILL NUMBER
 S BILLAR=$O(^BARBL(DUZ(2),"B",BILL3P))
 Q:BILLAR="" DT_U_DT_U_DT
 S BILLARIE=$O(^BARBL(DUZ(2),"B",BILLAR,""))
 S TRANIEN=""
 F  S TRANIEN=$O(^BARTR(DUZ(2),"AC",BILLARIE,TRANIEN)) Q:TRANIEN=""  D
 .;NOW FIND FIRST PAYMENT TRANSACTION
 .;IF FIELD #101 'TRANSACTION TYPE' = 'PAYMENT' AND
 .;'CREDIT' FIELD #2 IS NOT NULL THEN GET THE EARLIEST DATE
 .Q:$$GET1^DIQ(90050.03,TRANIEN_",",101,"I")'=40
 .Q:$$GET1^DIQ(90050.03,TRANIEN_",",2,"I")=""
 .;W !,"CREDIT: ",$$GET1^DIQ(90050.03,TRANIEN_",",2,"I")
 .;Q:'($$GET1^DIQ(90050.03,TRANIEN_",",101,"I")=40)&($$GET1^DIQ(90050.03,TRANIEN_",",2,"I")'="")
 .;
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","TOTPOST","MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","TOTPOST","MONTHYR",MONTHYR))+$$GET1^DIQ(90050.03,TRANIEN_",",2,"I")
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","TOTPOST",SUB1,SUB2,"MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","TOTPOST",SUB1,SUB2,"MONTHYR",MONTHYR))+$$GET1^DIQ(90050.03,TRANIEN_",",2,"I")
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","TOT PAY MADE","MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","TOT PAY MADE","MONTHYR",MONTHYR))+1
 .;
 .I 'FIRST D  Q
 ..S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","TOT FIRST PAYMENT MADE","MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","TOT FIRST PAYMENT MADE","MONTHYR",MONTHYR))+1
 ..S FIRST=$$GET1^DIQ(90050.03,TRANIEN_",",.01,"I")
 ..S BATCHIEN=$$GET1^DIQ(90050.03,TRANIEN_",",14,"I")
 ..S BATCHFIN=$$GET1^DIQ(90051.01,BATCHIEN_",",25,"I")  ;GET BATCH FINALIZED DATE
 ..S:BATCHFIN="" BATCHFIN=DT
 ..;
 ..S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DYSTOPAY",SUB1,SUB2,"MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DYSTOPAY",SUB1,SUB2,"MONTHYR",MONTHYR))+$$DAYS(BATCHFIN,VSITADMT)
 ..S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DYSTOPAY","MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DYSTOPAY","MONTHYR",MONTHYR))+$$DAYS(BATCHFIN,VSITADMT)
 ..S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DYSTOPAY DATES","MONTHYR",MONTHYR,$S(+BATCHFIN:BATCHFIN,1:"UNDEF"),$S(+VSITADMT:VSITADMT,1:"UNDEF"),TRANIEN,$$DAYS(BATCHFIN,VSITADMT))=""
 .;
 .;IF YOU ALREADY HAVE THE FIRST PAYMENT KEEP PLACING THE FOLLOWING PAYMENTS INTO LAST PAYMENT
 .;UNTIL ALL PAYMENTS HAVE BEEN FOUND
 .I FIRST D
 ..S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DYSTOPAY",SUB1,SUB2,"MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DYSTOPAY",SUB1,SUB2,"MONTHYR",MONTHYR))+$$DAYS(BATCHFIN,VSITADMT)
 ..S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DYSTOPAY","MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DYSTOPAY","MONTHYR",MONTHYR))+$$DAYS(BATCHFIN,VSITADMT)
 ..S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DYSTOPAY DATES","MONTHYR",MONTHYR,$S(+BATCHFIN:BATCHFIN,1:"UNDEF"),$S(+VSITADMT:VSITADMT,1:"UNDEF"),TRANIEN,$$DAYS(BATCHFIN,VSITADMT))=""
 ..S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","TOT LAST PAYMENT MADE","MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","TOT LAST PAYMENT MADE","MONTHYR",MONTHYR))+1
 ..S LAST=$$GET1^DIQ(90050.03,TRANIEN_",",.01,"I")
 ..;B:DUZ=724 "S+"
 S:$G(FIRST)="" FIRST=DT
 S:$G(LAST)="" LAST=DT
 Q $G(FIRST)_U_$G(LAST)_U_$G(BATCHFIN)
 ;GET THE TOTAL DAYS NEEDED TO APPROVE A BILL
 ;AS WELL AS NEEDED TO EXPORT
 ;TPBDAYS(VISITIEN,VSITADMT,DAYSAPP,DAYSEXP,BILLNUM,AMTBILLD) ;EP -TOTAL DAYS FOR BILL
TPBDAYS(VISITIEN,VSITADMT) ;EP -TOTAL DAYS FOR BILL
 Q:'VISITIEN 0
 N TPBEXP,TPBAPPRO,TEMPAYS,BAMOUNT,BILL3P,TEMPAYS,TPBNOEXP
 S TPBNOEXP=0
 S BILLIEN=""
 F  S BILLIEN=$O(^ABMDBILL(DUZ(2),"AV",VISITIEN,BILLIEN)) Q:'BILLIEN  D
 .;Q:'$$GETPRV(BILLIEN,$G(BARY("PRV")))
 .S PROV=$$GETPRV(BILLIEN,$G(BARY("PRV"))) Q:'PROV  ;FIND PROVIDER CHOSEN OR ONLY ATTEND OR RENDERING
 .S PROV=$P($G(PROV,"^UNDEF"),U,2)
 .;
 .S BILLSTAT=$$GET1^DIQ(9002274.4,BILLIEN_",",.04,"I")
 .S:BILLSTAT="" BILLSTAT="UNDEF"
 .;BILL STATUS VALUES
 .;'R' FOR REVIEWED
 .;'A' FOR APPROVED
 .;'B' FOR BILLED
 .;'T' FOR TRANSFERRED TO FINANCE
 .;'C' FOR COMPLETED
 .;'P' FOR PARTIAL PAYMENT
 .;'X' FOR CANCELLED
 .I BILLSTAT="X" D  Q  ;3P BILL STATUS = CANCELLED
 ..S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","CANCELLED 3P BILLS","MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","CANCELLED 3P BILLS","MONTHYR",MONTHYR))+1
 ..S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","CANCELLED 3P BILLS","MONTHYR",MONTHYR,BILLSTAT)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","CANCELLED 3P BILLS","MONTHYR",MONTHYR,BILLSTAT))+1
 .;;IF PROVIDER NOT CHOSEN SORT BY PROVIDER
 .I '$D(BARY("PRV")) D
 ..S SUB4=PROV
 .E  S SUB4="UNCHOSEN"
 .;
 .S BILL3P=$P($G(^ABMDBILL(DUZ(2),BILLIEN,0)),U)_" "
 .S BILLAR=$O(^BARBL(DUZ(2),"B",BILL3P))
 .S:BILLAR'="" BLLARIEN=$O(^BARBL(DUZ(2),"B",BILLAR,""))
 .I '$G(BLLARIEN) S NOARIEN("MONTHYR")=$G(NOARIEN("MONTHYR"))+1 S NOARIEN=NOARIEN+1
 .Q:'$G(BLLARIEN)  ;CAN'T FIND CORRESPONDING A/R BILL
 .S ARACCT=$$GET1^DIQ(90050.01,BLLARIEN_",",3)
 .;
 .;USE BARRCHK TO SCREEN FOR INCLUSION PARAMETERS
 .S BAR=BLLARIEN
 .;B:DUZ=724 "S+"
 .D BILL^BARRCHK
 .I 'BARP("HIT") D  Q
 ..;W !!!,"VISIT IEN: ",VISITIEN
 ..;W !,"3P BILL IEN: ",BILLIEN,?30,$P($G(^ABMDBILL(DUZ(2),BILLIEN,0)),U)
 ..;W !,"A/R BILL IEN: ",BLLARIEN,?30,BILLAR
 ..S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","BILLREJT",SUB1,SUB2,"MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","BILLREJT",SUB1,SUB2,"MONTHYR",MONTHYR))+1
 ..S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","BILLREJT","MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","BILLREJT","MONTHYR",MONTHYR))+1
 ..S BILLREJT=BILLREJT+1
 .;
 .S ACTINS=$$GET1^DIQ(9002274.4,BILLIEN_",",.17,"I")
 .S INSTYP=$$GET1^DIQ(9999999.18,ACTINS_",",.21,"I")
 .S ACTINS=INSTYP_U_ACTINS
 .;
 .;IF NOT BILLING ENTITY CHOSEN DO SORT ON WHAT?
 .I '$D(BARY("BI")) D
 ..S SUB3=ACTINS
 .E  S SUB3="UNCHOSEN"
 .S TPBEXP=$P($$GET1^DIQ(9002274.4,BILLIEN_",",.17,"E"),"@")    ;DATE EXPORTED
 .I TPBEXP'="" D
 ..S X=TPBEXP D ^%DT S TPBEXP=Y
 .E  S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","BLLNOEXP","MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","BLLNOEXP","MONTHYR",MONTHYR))+1  ;ADDED PER EMAIL 7/30/2007
 .S TPBAPPRO=$P($$GET1^DIQ(9002274.4,BILLIEN_",",.15,"I"),".")  ;DATE/TIME APPROVED
 .S BAMOUNT=$$GET1^DIQ(9002274.4,BILLIEN_",",.21)
 .;
 .S AMTBILLD=AMTBILLD+BAMOUNT
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","AMTBILLD",SUB1,SUB2,SUB3,SUB4,VISITIEN,"MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","AMTBILLD",SUB1,SUB2,SUB3,SUB4,VISITIEN,"MONTHYR",MONTHYR))+BAMOUNT
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","AMTBILLD","MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","AMTBILLD","MONTHYR",MONTHYR))+BAMOUNT
 .;
 .;
 .I BILLSTAT'="X" D
 ..S BILLNUM=BILLNUM+1
 ..S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","BILLNUM",SUB1,SUB2,SUB3,SUB4,VISITIEN,"MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","BILLNUM",SUB1,SUB2,SUB3,SUB4,VISITIEN,"MONTHYR",MONTHYR))+1
 ..S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","BILLNUM","MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","BILLNUM","MONTHYR",MONTHYR))+1
 .;
 .;
 .S DAYSAPP=DAYSAPP+$$DAYS(TPBAPPRO,VSITADMT)
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DAYSAPP","MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DAYSAPP","MONTHYR",MONTHYR))+$$DAYS(TPBAPPRO,VSITADMT)
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DAYSAPP",SUB1,SUB2,SUB3,SUB4,VISITIEN,"MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DAYSAPP",SUB1,SUB2,SUB3,SUB4,VISITIEN,"MONTHYR",MONTHYR))+$$DAYS(TPBAPPRO,VSITADMT)
 .;
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DAYSEXP",SUB1,SUB2,SUB3,SUB4,VISITIEN,"MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DAYSEXP",SUB1,SUB2,SUB3,SUB4,VISITIEN,"MONTHYR",MONTHYR))+$$DAYS(TPBEXP,VSITADMT)
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DAYSEXP","MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DAYSEXP","MONTHYR",MONTHYR))+$$DAYS(TPBEXP,VSITADMT)
 .;
 .S BILL3P=$P($G(^ABMDBILL(DUZ(2),BILLIEN,0)),U)
 .S BILL3P=$$GET1^DIQ(9002274.4,BILLIEN_",",.01,"I")
 .S TEMPAYS=$$FIRLSTPY(BILL3P)
 .;
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","EARLYPAY",SUB1,SUB2,SUB3,SUB4,VISITIEN,"MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","EARLYPAY",SUB1,SUB2,SUB3,SUB4,VISITIEN,"MONTHYR",MONTHYR))+$$DAYS($P(TEMPAYS,U),VSITADMT)
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","EARLYPAY","MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","EARLYPAY","MONTHYR",MONTHYR))+$$DAYS($P(TEMPAYS,U),VSITADMT)
 .S TEMPAYS1=$S(+$P(TEMPAYS,U):$P(TEMPAYS,U),1:"UNDEF")
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","EARLYPAY DATES","MONTHYR",MONTHYR,TEMPAYS1,$S(+$P(TEMPAYS,U,2):$P(TEMPAYS,U,2),1:"UNDEF"),$S(+$P(TEMPAYS,U,3):$P(TEMPAYS,U,3),1:"UNDEF"))=$$DAYS($P(TEMPAYS,U),VSITADMT)
 .;
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","LASTPAY",SUB1,SUB2,SUB3,SUB4,VISITIEN,"MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","LASTPAY",SUB1,SUB2,SUB3,SUB4,VISITIEN,"MONTHYR",MONTHYR))+$$DAYS($P(TEMPAYS,U,2),VSITADMT)
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","LASTPAY","MONTHYR",MONTHYR)=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","LASTPAY","MONTHYR",MONTHYR))+$$DAYS($P(TEMPAYS,U,2),VSITADMT)
 Q
GETPRV(BILLIEN,PRV) ;EP - IS PROV RENDERING/ATTENDING
 N PRVREC,FOUND,PRVIEN,TARTYP,PRVTYPE
 S (PRVREC,FOUND)=0
 S TARGTYP=U_"A"_U_"R"_U  ;WE WANT ONLY IF PROVIDER IS FOUND OF TYPE RENDERING OR ATTENDING
 F  S PRVREC=$O(^ABMDBILL(DUZ(2),BILLIEN,41,PRVREC)) Q:'PRVREC  D  Q:FOUND
 .S PRVTYPE=$$GET1^DIQ(9002274.4041,PRVREC_","_BILLIEN_",",.02,"I")
 .S PRVIEN=$$GET1^DIQ(9002274.4041,PRVREC_","_BILLIEN_",",.01,"I")
 .I PRV="",(TARGTYP[(U_PRVTYPE_U)) S FOUND=1_U_PRVIEN Q
 .I PRV'="" I (TARGTYP[(U_PRVTYPE_U)),(PRVIEN=PRV) S FOUND=1_U_PRVIEN
 .;IF NO PROVIDER CHOSEN THEN RETURN TRUE IF ANY ATTENDING/RENDERING PHYSICIAN FOUND INCLUDE THE BILL
 .;IF PROVIDER IS CHOSEN MATCHES THE PROVIDER TYPE OF ATTENDING OR RENDERING THEN INCLUDE THE BILL
 Q FOUND
 ;RETURN DIFF BETWEEN TWO DATES - see glossary item 2 page 19
DAYS(X1,X2) ;EP-
 N DATE1,DATE2
 S:X1="" X1=DT
 S:X2="" X2=DT
 S DATE1=X1
 S DATE2=X2
 N AVG
 D ^%DTC
 S DIFF=$G(X)
 S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DIFF BETWEEN TWO DATES",DATE1,DATE2,$S(DIFF'="":DIFF,1:"UNDEF"))=""
 Q:'DIFF 0
 Q DIFF
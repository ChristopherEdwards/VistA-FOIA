IS00004L ;Compiled from script 'Generated: X1 IHS 276-O' on DEC 09, 2002
 ;Part 13
 ;Copyright 2002 SAIC
EN S @INV@("SVC4")=X K DXS,D0
 ;SET SVC5 = INSGX\^INTHL7FT(1,3)\\999\@2762210ESVC5
 S D0=INDA S X=$G(INA("2762210ESVC5"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("SVC5")=X K DXS,D0
 ;SET SVC6 = INSGX\^INTHL7FT(1,3)\\999\@2762210ESVC6
 S D0=INDA S X=$G(INA("2762210ESVC6"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("SVC6")=X K DXS,D0
 ;SET SVC7 = INSGX\^INTHL7FT(1,3)\\999\@2762210ESVC7
 S D0=INDA S X=$G(INA("2762210ESVC7"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("SVC7")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="SVC" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("SVC1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("SVC2")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP) S L1=$G(@INV@("SVC3"))
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP) S L1=$G(@INV@("SVC4")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,5,L1,.CP)
 S L1=$G(@INV@("SVC5")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,6,L1,.CP) S L1=$G(@INV@("SVC6")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,7,L1,.CP)
 S L1=$G(@INV@("SVC7")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,8,L1,.CP)
 D LINE^INHUT11(.LINE,DELIM,LCT)
 I $L(LINE)'=0 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 SET INSETID=0
 ;SET REF1 = INSGX\^INTHL7FT(1,3)\\999\@2762210EREF1
 S D0=INDA S X=$G(INA("2762210EREF1"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("REF1")=X K DXS,D0
 ;SET REF2 = INSGX\^INTHL7FT(1,3)\\999\@2762210EREF2
 S D0=INDA S X=$G(INA("2762210EREF2"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("REF2")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="REF" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("REF1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("REF2")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP)
 D LINE^INHUT11(.LINE,DELIM,LCT)
 I $L(LINE)'=0 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 SET INSETID=0
 ;SET DTP1 = INSGX\^INTHL7FT(1,3)\\999\@2762210EDTP1
 S D0=INDA S X=$G(INA("2762210EDTP1"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("DTP1")=X K DXS,D0
 ;SET DTP2 = INSGX\^INTHL7FT(1,3)\\999\@2762210EDTP2
 S D0=INDA S X=$G(INA("2762210EDTP2"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("DTP2")=X K DXS,D0
 ;SET DTP3 = INSGX\^INTHL7FT(1,3)\\999\@2762210EDTP3
 S D0=INDA S X=$G(INA("2762210EDTP3"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("DTP3")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="DTP" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("DTP1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("DTP2")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP) S L1=$G(@INV@("DTP3"))
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP)
 D LINE^INHUT11(.LINE,DELIM,LCT)
 I $L(LINE)'=0 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 SET INSETID=0
 D SE^BHLXHDR
 ;SET SE1 = INSGX\^INTHL7FT(1,3)\\999\@SE01
 S D0=INDA S X=$G(INA("SE01"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("SE1")=X K DXS,D0
 ;SET SE2 = INSGX\^INTHL7FT(1,3)\\999\@INSEQ
 S D0=INDA S X=$G(INA("INSEQ"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("SE2")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="SE" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("SE1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("SE2")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP)
 D LINE^INHUT11(.LINE,DELIM,LCT)
 I $L(LINE)'=0 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 SET INSETID=0
 D GE^BHLXHDR
 ;SET GE1 = @GE1
 S D0=INDA S X=$G(INA("GE1"))
 S @INV@("GE1")=X K DXS,D0
 ;SET GE2 = @GE2
9 G EN^IS00004M
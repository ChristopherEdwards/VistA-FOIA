AMHGSINT ; IHS/CMI/MAW - AMHG Intake Form Edits - frmIntake 9/16/2009 10:57:49 AM ;
 ;;4.0;IHS BEHAVIORAL HEALTH;;MAY 14, 2010
 ;
 ;
DEBUG(RETVAL,AMHSTR) ;-- debug entry point
 D DEBUG^%Serenji("EP^AMHGD(RETVAL,.AMHSTR)")
 Q
 ;
DEL(RETVAL,AMHSTR) ;-- delete an intake
 S X="MERR^AMHGU",@^%ZOSF("TRAP") ; m error trap
 N AMHI,P,R,AMHREC
 S P="|",R="~"
 S AMHREC=$P(AMHSTR,P)
 S RETVAL="^AMHTMP("_$J_")"
 S AMHI=0
 K ^AMHTMP($J)
 S DIK="^AMHRINTK(",DA=AMHREC D ^DIK
 S @RETVAL@(AMHI)="T00001Return"_$C(30)
 S @RETVAL@(AMHI+1)=$C(31)
 Q
 ;
ASS(RETVAL,AMHSTR) ;-- save assessment from assessment tab, called from SaveAssessment method of clsVisitDataEntry
 S X="MERR^AMHGU",@^%ZOSF("TRAP") ; m error trap
 N AMHI,P,R,AMHDM,AMHREC,AMHA,AMHP,AMHER,AMHIT,AMHPP,AMHPRG,AMHEDT,AMHIIT,AMHITYP,AMHUDT
 S P="|",R="~"
 S RETVAL="^AMHTMP("_$J_")"
 S AMHI=0
 I $G(AMHSTR)="" D CATSTR^AMHGU(.AMHSTR,.AMHSTR)
 K ^AMHTMP($J)
 S AMHDM=$P(AMHSTR,P)
 S AMHREC=$P(AMHSTR,P,2)
 ;S AMHA=$P(AMHSTR,P,3)
 S AMHP=$P(AMHSTR,P,3)
 S AMHIT=$P(AMHSTR,P,4)
 S AMHPP=$P(AMHSTR,P,5)
 S AMHPRG=$$SCI^AMHGT(9002011.13,.05,$P(AMHSTR,P,6))
 S AMHEDT=$P($P(AMHSTR,P,7),".")
 S AMHIIT=$P(AMHSTR,P,8)
 S AMHITYP=$P(AMHSTR,P,9)
 S AMHUDT=$P(AMHSTR,P,10)
 S AMHA=$P(AMHSTR,P,11)
 D ASSE(AMHDM,AMHREC,AMHA,AMHP,AMHIT,AMHPP,AMHPRG,AMHEDT,AMHIIT,AMHITYP,AMHUDT)
 S @RETVAL@(AMHI)="T00030Result"_$C(30)
 S AMHI=AMHI+1
 S @RETVAL@(AMHI)=$S($G(AMHER)]"":AMHER,1:$G(AMHIT))_$C(30)
 S @RETVAL@(AMHI+1)=$C(31)
 Q
 ;
ASSE(D,RC,A,P,IT,PP,PRG,EDT,IIT,ITYP,UDT) ;EP -- file assessment
 ;Q:$G(A)=""
 I $G(D)="A",$G(A)="" Q
 ;I '$O(^AMHRINTK("AD",RC,0)),$G(A)="" Q
 N AMHWP
 D ARRAYT^AMHGU(.AMHWP,A)  ;parse the text into an array
 N AMHFDA,AMHIENS,AMHERRR
 S AMHIENS=""
 ;S AMHIENS(1)=P
 I $G(IT) D
 . S AMHIENS=IT_","
 . S AMHIT=IT
 . I ITYP="I" D
 .. S AMHFDA(9002011.13,AMHIENS,.01)=EDT
 .. S AMHFDA(9002011.13,AMHIENS,.04)=PP
 .. S AMHFDA(9002011.13,AMHIENS,.05)=PRG
 .. S AMHFDA(9002011.13,AMHIENS,.06)=DUZ
 .. S AMHFDA(9002011.13,AMHIENS,.07)=UDT
 .. ;S AMHFDA(9002011.13,AMHIENS,.13)=DUZ  PR6XX
 . I ITYP="U" D
 .. S AMHFDA(9002011.13,AMHIENS,.01)=EDT
 .. S AMHFDA(9002011.13,AMHIENS,.04)=PP
 .. S AMHFDA(9002011.13,AMHIENS,.05)=PRG
 .. S AMHFDA(9002011.13,AMHIENS,.06)=DUZ
 .. S AMHFDA(9002011.13,AMHIENS,.07)=UDT
 . D FILE^DIE("K","AMHFDA","AMHERRR(1)")
 . ;Q:$O(^AMHRINTK(IT,11,RC,"B",0))
 . ;N AMHFDA,AMHIENS,AMHERRR
 . ;S AMHIENS="+2,"_IT_","
 . ;S AMHFDA(9002011.1311,AMHIENS,.01)=RC
 . ;I '$D(^AMHRINTK(IT,11)) S AMHFDA(9002011.1311,AMHIENS,.02)=1
 . ;D UPDATE^DIE("","AMHFDA","AMHIENS","AMHERRR(1)")
 . I $D(AMHERRR) S AMHER="0~Edit Assessment"
 I '$G(IT) D
 . S AMHFDA(9002011.13,"+1,",.01)=EDT
 . S AMHFDA(9002011.13,"+1,",.02)=P
 . ;S AMHFDA(9002011.13,"+1,",.03)=RC
 . S AMHFDA(9002011.13,"+1,",.04)=PP
 . S AMHFDA(9002011.13,"+1,",.05)=PRG
 . S AMHFDA(9002011.13,"+1,",.06)=DUZ
 . S AMHFDA(9002011.13,"+1,",.07)=UDT
 . S AMHFDA(9002011.13,"+1,",.09)=ITYP
 . I $G(ITYP)="U" D
 .. S AMHFDA(9002011.13,"+1,",.1)=IIT
 . S AMHFDA(9002011.13,"+1,",.13)=DUZ
 . D UPDATE^DIE("","AMHFDA","AMHIENS","AMHERRR(1)")
 . I $D(AMHERRR) S AMHER="0~Add Assessment" Q
 . S AMHIT=$G(AMHIENS(1))
 . ;N AMHVFDA,AMHVIENS,AMHVERR,AMHVRS
 . ;S AMHVIENS="+2,+1,"
 . ;S AMHVFDA(9002011.1311,"+2,"_AMHIT_",",.01)=RC
 . ;S AMHVFDA(9002011.1311,"+2,"_AMHIT_",",.02)=1
 . ;D UPDATE^DIE("","AMHVFDA","AMHVIENS","AMHVERR")
 . ;S AMHVRS=$G(AMHVIENS(2))
 N AMHFDA,AMHIENS,AMHERRR
 S AMHIENS=AMHIT_","
 D WP^AMHGU(.AMHERRR,9002011.13,AMHIENS,4100,.AMHWP)
 Q
 ;
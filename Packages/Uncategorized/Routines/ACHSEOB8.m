ACHSEOB8 ; IHS/ITSC/TPF/PMF - AREA WRITE EOBR FILES FOR FACILITIES (1/2) ;  
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**18,19**;JUN 11, 2001
 ;
 I '$O(^ACHSEOBR(0)) W *7,!!,"NO DATA EXISTS TO EXPORT TO FACILITIES.",!! S ACHSIO=IO D RTRN^ACHS G END
 I $D(^ACHSEOBR("RUN")) U IO(0) W !!?5,*7,"FACILITY FILES HAVE ALREADY BEEN EXPORTED -- JOB CANCELLED" D RTRN^ACHS G END
 S ACHSFLG=0,ACHSMSM=^%ZOSF("OS")["MSM"
 I '$D(^ACHSAOP(DUZ(2),16,0)) S ^ACHSAOP(DUZ(2),16,0)=$$ZEROTH^ACHS(9002079.016,1)
 W !,"Checking EOBR destinations...",!
 S ACHS="0"
 K DUOUT
 D WAIT^DICD,DCHK
 I '$D(DUOUT) G A
 W !!,$$C^XBFUNC("You can use the 'Area Office Parameters' option to add a destination to"),!,$$C^XBFUNC("FACILITIES RECEIVING EOBR DATA.")
 S Y=$$DIR^XBDIR("Y","Want to Continue with Incomplete EOBR Destination Information","N","","","",1)
 I Y=1 G A
 I $D(DUOUT)!(Y'=1) D END G K
A ;
 D HOME^%ZIS
 S ACHSEOBD=$P(^ACHSAOP(DUZ(2),2),U,11)
 S ACHSPFAC="",ACHSMDIA="F"
 F  S ACHSPFAC=$O(^ACHSAOP(DUZ(2),16,"B",ACHSPFAC)) Q:ACHSPFAC=""!(ACHSFLG)  D SEQ,CDATA,START:ACHSFAC
K ;
 K ACHSFAC,ACHSFLG,ACHSMDIA,ACHSMSG,ACHSMSM,ACHSPFAC,ACHSEOBX,ACHSFACN,ACHSMCNT,ACHSR,ACHSRR,ACHSZRCT
 S ACHSIO=IO
 D RTRN^ACHS
 Q
 ;
SEQ ; Load Seq Numbers for facility & file suffix name.
 S ACHSAOSQ=$P(^ACHSAOP(DUZ(2),2),U,9),ACHSEBSQ=+$P(^ACHSAOP(DUZ(2),16,ACHSPFAC,0),U,4)+1
 Q
 ;
CDATA ; Check if there is data to send to the facility.
 S ACHSFACN=""
 S:$D(^AUTTLOC(ACHSPFAC)) ACHSFACN=$P(^AUTTLOC(ACHSPFAC,0),U,10)
 S ACHSFAC=""
 F  S ACHSFAC=$O(^ACHSAOP(DUZ(2),16,"C",ACHSPFAC,ACHSFAC)) Q:ACHSFAC=""  Q:$D(^ACHSEOBR(ACHSFAC))
 Q
 ;
START ;
 U IO(0)
 W !!,"Copying EOBR data for ",$P(^DIC(4,ACHSPFAC,0),U,1),!," to host file.",!
 D HFS
 Q
 ;
HFS ;
 U IO(0)
 W !!,"Host File Being Created",*7
 F  Q:$L(ACHSAOSQ)=3  S ACHSAOSQ="0"_ACHSAOSQ
 S ACHSZFN="EB"_ACHSFACN_"."_ACHSAOSQ
 I $$OPEN^%ZISH($$EX^ACHS,ACHSZFN,"W") S ACHSEMSG="M10" D ERROR^ACHSTCK1 G CLOSE
 U IO(0)
 ;ACHS*3.1*18 PATCH FOR FT DEF
 I $$ASF^ACHS(DUZ(2))=808301 W !,"Please Standby - Copying Data to Host File ",$$IM^ACHS,ACHSZFN,!
 E  W !,"Please Standby - Copying Data to Host File ",$$EX^ACHS,ACHSZFN,!
 D SAVE
 S $P(^ACHSAOP(DUZ(2),16,ACHSPFAC,0),U,4)=ACHSEBSQ,$P(^(0),U,2)=DT
 ;ACHS*3.1*19 2 NEW LINES FOR S UTE
 I $$ASF^ACHS(DUZ(2))=252611,$$MV^%ZISH($$EX^ACHS,ACHSZFN,$$IM^ACHS,ACHSZFN) W !,"Moved files to import directory"
 G:$$ASF^ACHS(DUZ(2))=252611 CLOSE
 I $$OS^ACHS=1,'$L($P($G(^AUTTLOC(ACHSPFAC,1)),U,1)) D  G CLOSE:'$L($P($G(^AUTTLOC(ACHSPFAC,1)),U,1))
 . N DA,DIE,DR
 . W *7,!!?10,"System-ID Missing from Location File for ",$P(^DIC(4,ACHSPFAC,0),U)
 . W !?10,"So the file can be sent, please enter the system ID, now:"
 . S DIE="^AUTTLOC(",DR=.29,DA=ACHSPFAC
 . D ^DIE
 . I $L($P($G(^AUTTLOC(ACHSPFAC,1)),U,1)) W !?10,"Thank you."
 . E  W !?10,"Well....you can STILL send it, manually."
 . D RTRN^ACHS
 .Q
 I $$SEND^%ZISH($$EX^ACHS,ACHSZFN,$P($G(^AUTTLOC(ACHSPFAC,1)),U,1)),$$OS^ACHS=1 W *7,!!?10,"$$SEND^%ZISH() of ",$$EX^ACHS,ACHSZFN," to ",$P($G(^AUTTLOC(ACHSPFAC,1)),U,1)," failed -- Notify Supervisor",! G CLOSE
 ; NOTE:  Above has to check OS because the Unix SEND returns 0 if
 ;        successful, and the DOS SEND returns a positive integer if
 ;        successful.   GTH 06-24-96.
 W !!,"Export file ",ACHSZFN," queued up to be sent to ",$P($G(^AUTTLOC(ACHSPFAC,1)),U),"...",!
CLOSE ;EP.
 D ^%ZISC
 I ACHSFLG S ACHSIO=IO I ACHSMDIA'="F" D RTRN^ACHS
 S ^ACHSEOBR("RUN")=$$HTFM^XLFDT($H)_"^"_DUZ
END ;
 K %MT,ACHS,ACHSFAC,R,ACHSRCTR,X1,X2
 Q
 ;
SAVE ;EP.
 D WAIT^DICD
 U IO(0)
 W !
 S ACHSFAC="",ACHSZRCT=0
 U IO
 W "$$"_ACHSEOBD_" "_ACHSEBSQ,! ;W:IOPAR'["V" !
 I +$P(^ACHSAOP(DUZ(2),2),U,10)'<+$P(^ACHSAOP(DUZ(2),16,ACHSPFAC,0),U,3) D EXPMSG I 1
 E  W "$$",! ;W:IOPAR'["V" !
 U IO
 F  S ACHSFAC=$O(^ACHSAOP(DUZ(2),16,"C",ACHSPFAC,ACHSFAC)) Q:ACHSFAC=""  D
 . F ACHSCTR=0:0 S ACHSCTR=$O(^ACHSEOBR(ACHSFAC,ACHSCTR)) Q:'ACHSCTR  W ^(ACHSCTR),! D
 .. I $E(^ACHSEOBR(ACHSFAC,ACHSCTR),19)="A" D ADD^ACHSAOPO($TR($E(^(ACHSCTR),52,63),"-"),"EOBR",^(ACHSCTR))
 .. S ACHSZRCT=ACHSZRCT+1
 .. I ACHSZRCT#50=0 U IO(0) W $J(ACHSZRCT,8) U IO
 ..Q
 .Q
 W "**"_DT ;W:IOPAR'["V" !
 U IO(0)
 Q
 ;
EXPMSG ;
 S (ACHSR,ACHSRR,ACHSMCNT)=0
EXP1 ;
 S ACHSR=$O(^ACHSEOBM(ACHSR))
 G EXPEND:+ACHSR=0
 S ACHSRR=0
EXP2 ;
 S ACHSRR=$O(^ACHSEOBM(ACHSR,1,ACHSRR))
 G EXP1:+ACHSRR=0
 S ACHSMCNT=ACHSMCNT+1,ACHSEOBX=$E("000",1,3-$L(ACHSMCNT))_ACHSMCNT_$P(^ACHSEOBM(ACHSR,0),U,1)_^ACHSEOBM(ACHSR,1,ACHSRR,0)
 U IO
 W ACHSEOBX
 W:IOPAR'["V" !
 G EXP2
 ;
EXPEND ;
 U IO
 W "$$"
 W:IOPAR'["V" !
 U IO(0)
 W !?10,"EOBR Messages Copied to Output Media",!
 S $P(^ACHSAOP(DUZ(2),16,ACHSPFAC,0),U,3)=DT
 Q
 ;
DCHK ;Check Destinations of EOBRs.
 S ACHS=$O(^ACHSEOBR(ACHS))
 Q:+ACHS=0!(ACHS="ER")
 I $D(^ACHSAOP(DUZ(2),16,"D",ACHS)) G DCHK
 W *7,!,"Destination not on file for ",$P(^DIC(4,ACHS,0),U,1)
 S DUOUT=""
 G DCHK
 ;
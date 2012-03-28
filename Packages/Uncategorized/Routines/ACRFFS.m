ACRFFS ;IHS/OIRM/DSD/THL,AEF - FEDSTRIP PRINT FORMAT; [ 09/23/2005   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;**19**;NOV 05, 2001
 ;;ROUTINE TO PRINT FEDSTRIP ORDERS
EN K ACRPAGE,ACRQUIT
 D EN1
EXIT K ACR,ACRQUIT,ACROUT,ACRFINDA,ACRFINRQ,ACRFL,ACRFLDA,ACRFLRQ,ACRFUND,ACRJDATE,ACRPAGE,ACRRQD,ACRSN,ACRSSRQ,ACRRTID,ACRPRIOR,ACRRDATE,ACRPOFON
 Q
EN1 ;
 D DOC
 Q:$D(ACRQUIT)
 S (ACRSSDA,ACRSSTOT)=0
 F ACRI=1:1 S ACRSSDA=$O(^ACRSS("J",ACRDOCDA,ACRSSDA)) Q:'ACRSSDA  S ACRSSTOT=ACRSSTOT+$P(^ACRSS(ACRSSDA,"DT"),U,4)
 D HEAD
 Q:$D(ACRQUIT)
 D SS
 Q
SS S ACRSSDA=0
 F ACRI=1:1 S ACRSSDA=$O(^ACRSS("J",ACRDOCDA,ACRSSDA)) Q:'ACRSSDA  D S1 Q:$D(ACRQUIT)!$D(ACROUT)
 S ACRREFX=103
 I $E(IOST,1,2)="P-",IOSL-20<$Y W @IOF D HEAD Q:$D(ACRQUIT)
 D ^ACRFPAPV
 D ^ACRFPSS
 Q
S1 D SETSS^ACRFSSA
 S ACRNSN=$P(ACRSSNMS,U,2)
 S ACRSSDC1=$P(ACRSSDSC,U)
 S:ACRNSN="" ACRNSN=ACRSSDC1
 S:ACRNSN'?4N1"-"2UN1"-"3N1"-"4N.E ACRNSN="9999-99-999-9999"
 S ACRNSN=$TR(ACRNSN,"-"," ")
 S ACRSN=$P(ACRSS0,U,14)
 F ACRI=1:1:4-($L(ACRRQD)-1) S ACRRQD="0"_ACRRQD
 F ACRI=1:1:3-($L(ACRSN)-1) S ACRSN="0"_ACRSN
 D L4
 I IOSL-5<$Y,$O(^ACRSS("J",ACRDOCDA,ACRSSDA)) D PAUSE^ACRFWARN W @IOF Q
 I '$O(^ACRSS("J",ACRDOCDA,ACRSSDA)) D PAUSE^ACRFWARN Q
 I $E(IOST,1,2)="P-",IOSL-5<$Y,$O(^ACRSS("J",ACRDOCDA,ACRSSDA)) W @IOF D HEAD
 Q
DOC D SETDOC^ACRFEA1
DOC1 ;EP;TO SET FEDSTRIP VARIABLES
 K ACRFLDA,ACRFINDA
 S ACRFS=$G(^ACRDOC(ACRDOCDA,3))
 S ACRDOCDT=$G(^ACRDOC(ACRDOCDA,"DT"))
 N ACRI
 F ACRI=11:1:15 I $P(ACRFS,U,ACRI)="" S ACRQUIT="" Q
 S ACRFLDA=$P(ACRFS,U,13)
 S ACRRTID=$P(ACRFS,U,11)
 S ACRRTID=$P($G(^ACRFSRI(+ACRRTID,0)),U)
 S ACRFSID=$P(ACRFS,U,12)
 S ACRFSID=$P($G(^ACRFSDI(+ACRFSID,0)),U)
 S ACRFINDA=$P(ACRFS,U,14)
 S ACRSIG=$P(ACRFS,U,15),X=$P(ACRDOCDT,U,4)
 S ACRPRIOR=$S(X="E":"03",X="P":"08",1:15)
 S X=+$G(^ACRDOC(ACRDOCDA,"PA"))
 ;S X=$S(X:$P(^VA(200,X,0),U),1:"")  ;ACR*2.1*19.02 IM16848
 S X=$S(X:$$NAME2^ACRFUTL1(X),1:"")  ;ACR*2.1*19.02 IM16848
 S ACRPURA=$P($P(X,",",2)," ")_" "_$P(X,",")
 S ACRLBDA=$P(ACRDOC0,U,6)
 S ACRDPTDA=$P(^ACRLOCB(ACRLBDA,0),U,5)
 S:'ACRFLDA ACRFLDA=$P(^ACRDEPT(ACRDPTDA,0),U,2)
 S ACRFL=$G(^ACRFSCD(+ACRFLDA,0))
 S ACRFLRQ=$P(ACRFL,U,2)
 S ACRFUND=$P(ACRFL,U,3)
 S ACRPODA=$P(ACRDOC0,U,8)
 S ACRPOFON=$P(^ACRPO(ACRPODA,0),U,9)
 S:'ACRFINDA ACRFINDA=$S($P(ACRFL,U,5):$P(ACRFL,U,5),1:ACRFLDA)
 S ACRFL=$G(^ACRFSCD(+ACRFINDA,0))
 S ACRFINRQ=$P(ACRFL,U,2)
 S ACRRDATE=$P(ACRDOCPO,U,12)
 I ACRRDATE D
 .S X=$E(DT,1,3)_"0101"
 .D H^%DTC
 .S ACRFY=%H
 .S X=ACRRDATE
 .D H^%DTC
 .S X=%H+1-ACRFY
 .S X=$E("000",1,3-$L(X))_X
 .S ACRRDATE=X
 S X2=$E($P(ACRDOC0,U,3),1,3)_"0101"
 S X1=$P(ACRDOC0,U,3)+1
 D ^%DTC
 S ACRJDATE=$P(ACRDOC0,U,26)
 Q
HEAD ;PRINT HEADER DATA
 S ACRPAGE=$S('$D(ACRPAGE):1,1:ACRPAGE+1)
 W !
 I $E($G(IOST),1,2)="C-" W "ARMS REF: ",$P($G(ACRDOC0),U,6),"/",ACRDOCDA
 W ?16,"DOCUMENT IDENTIFICATION"
 W ?50,"PAGE  ",ACRPAGE
 W ?70,"STANDARD FORM 344"
 D L1
 W !,"1.   |2.   |3. |DOCUMENT NUMBER |13.|14-15.  |16.|17.  |18.  |19.  |20.  |21.  |"
 W:ACRPAGE=1 ?$X+3,"For Questions concerning this order contact:"
 W !,"     |     | M |9-10.    |11.   | D | SUPPLE | S |     |DIST |     | PRI | RQD |"
 W:ACRPAGE=1 ?$X+3,ACRPURA
 W !," DOC.| ROUT| & | REQUISI |      | E | MENTARY| I |     |RIBU |PRO  | OR  | DEL |"
 W:ACRPAGE=1 ?$X+3,ACRPOFON
 W !,"IDEN | IDEN| S | TIONER  | DATE | M | ADDRESS| G |FUND |TION |JECT | ITY |DATE |"
 W !," 1-3 | 4-6 | 7 | 30-35   | 36-39| 44| 45-50  | 51|52-53|54-56|57-59|60-61|62-64|"
 I ACRPAGE=1 D
 .W ?$X+3,"REQ. #: ",$P(^ACRDOC(ACRDOCDA,0),U)
 .W ?$X+3,"PO #: ",$P(^ACRDOC(ACRDOCDA,0),U,2)
 D L2
 W !," "
 W $S(ACRFSID]"":ACRFSID,1:"***")," | "
 W $S(ACRRTID]"":ACRRTID,1:"***")," | A | "
 W $S(ACRFLRQ]"":ACRFLRQ,1:"******"),"  | "
 W $S(ACRJDATE]"":ACRJDATE,1:"****")," |   | "
 W $S(ACRFINRQ]"":ACRFINRQ,1:"******")," | "
 W $S(ACRSIG]"":ACRSIG,1:"*")," | "
 W $S(ACRFUND]"":ACRFUND,1:"**"),"  |     |     | "
 W $S(ACRPRIOR]"":ACRPRIOR,1:"**"),"  | "
 W $S(ACRRDATE]"":ACRRDATE,1:"***")," |"
 W:ACRPAGE=1 ?$X+3,"TOTAL:  ",$FN(ACRSSTOT,"P,",2)
 D L1
 D PAUSE^ACRFWARN
 Q:$D(ACRQUIT)
 W !?30,"REQUISITION DATA"
 D L1
 W !,"     STOCK NUMBER   |6.   |7.   |8.     |12.  |14-15. |16.|18.  |19.  |22.  |"
 W !,"--------------------|     |UNIT |       | SER |SUPPLE-| S |DIST |     |     |"
 W !,"4.    |5.           | ADD-| OF  | QUAN- | IAL |MENTARY| I |RIBU |PRO- | AD- |"
 W !," FSC  |    NSN      | TNL |ISSUE| TITY  | NO. |ADDRESS| G |TION |JECT |VICE |"
 D L3
 W !," 8-11 |    12-20    |21-22|23-24| 25-29 |40-43| 45-50 | 51|54-56|57-59|65-66|"
 D L1
 Q
L W $$DASH^ACRFMENU
 Q
L1 W $$DASH^ACRFMENU(132)
 Q
L2 W !,"-----|-----|---|---------|------|---|--------|---|-----|-----|-----|-----|-----|"
 Q
L4 W !?1,$E(ACRNSN,1,4)," | ",$E(ACRNSN,6,17)
 W ?20,"|     | ",$S(ACRUI]"":ACRUI,1:"**"),"  | ",ACRRQD," | ",ACRSN,"|       |   |     |     |     |",$J(ACRUC,9)
 W ?$X+1,$E(ACRSSDC1,1,28)
 W ?120,$J($FN(ACRRQD*ACRUC,"P",2),10)
 I $P(ACRSSDT,U,22)]"" W !?81,$P(ACRSSDT,U,22)
L3 W !,"------|-------------|-----|-----|-------|-----|-------|---|-----|-----|-----|----------------------------------------------------"
 Q
NURCPP7 ;HIRMFO/JH/RM-NURSING CARE PLAN DATA OUTPUT   Part 3 ;4/29/93
 ;;4.0;NURSING SERVICE;;Apr 25, 1997
 ; This is the Patient Problem Listing,Data Processor,Output Routine
 ; 132 Col. Compressed print
ILP1 ;
 S NURSA(0)=$S($D(^TMP($J,"GMRGNAR",NURSRTK,NURSI(1),0)):^(0),1:""),NURSA=$P(NURSA(0),"^"),NURSA(1)=+$P(NURSA(0),"^",3)
 F NURSK=1:1:$P(NURSA(0),"^",2) S NURS=$E(^TMP($J,"GMRGNAR",NURSRTK,NURSI(1),NURSK)_NURSSS,1,29)_"||",NURS(0)=2,NURS(1)=NURSO2 D X^NURCPP8 S NURSO2=NURSO2+1
 F NURSI=0:0 S NURSI=$O(^TMP($J,"GMRGNAR",NURSI(1),NURSI)) Q:NURSI'>0  S NURSI(0)=NURSI(1) D INTER
 S NURSA(0)=+$O(^GMR(124.3,GMRGPDA,1,"B",NURSA(1),0)) I $D(^GMR(124.3,GMRGPDA,1,NURSA(0),"ADD")),^("ADD")]"" S NURSADD=^("ADD"),NURSLGT=0,NURSO4=NURSO2,NURSRET=3 D FORMAT S NURSO2=NURSO4
 S NURSO2=NURSO2+1,NURS="||",NURS(0)=2,NURS(1)=NURSO2 D X^NURCPP8
 Q
INTER ; CHECK FOR INTERVENTION DATE
 S NURST=0,NURSJ=1
 S NURS=$S($D(^TMP($J,"GMRGNAR",NURSI(0),NURSI,NURSJ)):$E(NURSSS,1,NURSA*3)_^(NURSJ),1:"")
 F NURST(0)=0:0 S NURST(0)=$O(^TMP($J,"NURSDATE",NURSI,NURST(0))) Q:NURST(0)'>0  F NURST=0:0 S NURST=$O(^TMP($J,"NURSDATE",NURSI,NURST(0),NURST)) Q:NURST'>0  D INTER1
 F NURST=NURSJ:0 Q:NURS=""  S NURS(0)=2,NURS(1)=NURSO2 D X^NURCPP8 S NURSO2=NURSO2+1 S NURST=$O(^TMP($J,"GMRGNAR",NURSI(0),NURSI,NURST)) Q:NURST=""  S NURS=$E(NURSSS,1,NURSA*3+1)_^TMP($J,"GMRGNAR",NURSI(0),NURSI,NURST)_"||"
 Q
 ;
INTER1 ;
 S X=$S($D(^TMP($J,"NURSDATE",NURSI,NURST(0),NURST)):^(NURST),1:"")
 S Y=$P(X,"^",2) S:Y'="" Y=$E(Y,4,5)_"/"_$E(Y,6,7)_"/"_$E(Y,2,3)
 S NURSTAT=$S($L($P(X,"^",4)):"("_$P(X,"^",4)_")"_$E(" ",1,2-$L($P(X,"^",4))),1:"    "),NURSRN=$E($S($D(^VA(200,+$P(X,"^",3),0)):$E($P($P(^(0),"^"),",",2))_$E($P($P(^(0),"^"),",")),1:"")_"  ",1,2)
 S NURS=NURS_"|"_Y_NURSTAT_NURSRN,NURS(0)=2,NURS(1)=NURSO2 D X^NURCPP8 S NURSO2=NURSO2+1
 I $D(^TMP($J,"GMRGNAR",NURSI(0),NURSI,NURSJ+1)),$P(^(NURSJ+1),"^")'="" S NURSJ=NURSJ+1,NURS=$E(NURSSS,1,NURSA*3+1)_^TMP($J,"GMRGNAR",NURSI(0),NURSI,NURSJ)
 E  S NURS=""
 Q
FORMAT ;
 S NURS=$S(NURSLGT:"",1:$E(NURSSS,1,NURSA*3))_"-Additional Text:||",NURS(0)=$S(NURSRET=2:1,NURSRET=3:2,1:0),NURS(1)=NURSO4 D X^NURCPP8
 S NURSLGT(0)=28-$S(NURSLGT:0,1:(NURSA*3)),GMRGLEN=NURSLGT(0),GMRGPLN=$E(NURSADD,1,227),NURSO4=NURSO4+1
 D FITLINE^GMRGRUT1 S NURS=$E(NURSSS,1,$S(NURSLGT:1,1:NURSA*3+1))_GMRGPLN(0)_"||",NURS(0)=$S(NURSRET=2:1,NURSRET=3:2,1:0),NURS(1)=NURSO4 D X^NURCPP8
 S NURSO4=NURSO4+1,GMRGLEN=NURSLGT(0),GMRGPLN=GMRGPLN(1)_$E(NURSADD,228,245) D FITLINE^GMRGRUT1
 F NURSK=0:0 Q:GMRGPLN(0)=""  S NURS=$E(NURSSS,1,$S(NURSLGT:1,1:NURSA*3+1))_GMRGPLN(0)_"||",NURS(0)=$S(NURSRET=2:1,NURSRET=3:2,1:0),NURS(1)=NURSO4 D X^NURCPP8 S NURSO4=NURSO4+1,GMRGPLN=GMRGPLN(1),GMRGLEN=NURSLGT(0) D FITLINE^GMRGRUT1
 Q
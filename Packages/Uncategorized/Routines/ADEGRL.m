ADEGRL ; IHS/HQT/MJL - DENTAL DATA ENTRY PT 1 ; [ 03/24/1999   9:04 AM ]
 ;;6.0;ADE;;APRIL 1999
 ;V4.31 ORIG 5-14-88
 ;------->INITIALIZE
 D INIT^ADEGRL0 G:'Y END
ONE ;------->RESET CONSTANT VALUES
 D RESET^ADEGRL1 G:Y<1 END
TWO ;------->LOOK UP A PATIENT
 W !!,"Press RETURN to change LOCATION of ENCOUNTER"
 W !,?15,"-OR-"
 D PTLOOK^ADEGRL1 G:Y<1 ONE
THREE ;------->GET A VISIT DATE
 D ^ADEGRL2 I Y<1 K ^ADEUTL("ADELOCK",ADEPAT) G TWO
FOUR ;------->LOAD LOCAL VARIABLES WITH CURRENT VISIT DATA
 D MOD
FIVE ;------->COLLECT VISIT INFO
 D ^ADEGRL3
SIX ;------->WRITE DATA TO DISK
 D ^ADEGRL6
SEVEN ;------->GET ANOTHER PATIENT
 K ADETCH,ADETCHF G TWO
END ;EP
 S:$D(ADEDUZ(2)) DUZ(2)=ADEDUZ(2) ;IHS/MFD added set, U lookup IHS/HMW added condition
 I $D(^ADEUTL($J,"DUZ2")) S DUZ(2)=^ADEUTL($J,"DUZ2")
 K ^ADEUTL($J,"DUZ2")
 K ADE,ADECNT,ADECOD,ADECON,ADED0,ADEDEF,ADEDEL,ADEDENT,ADEDES,ADEDFN,ADEDIC,ADEDICS,ADEDIR,ADEDUP,ADEFAC,ADEFACD,ADEFAST,ADEFEE,ADEFLG,ADEHOLD
 K ADEHRN,ADEI,ADEJ,ADEK,ADELIN,ADELN,ADELOE,ADELOED,ADEMOD,ADENEW,ADENEWPT,ADENEWVS,ADENOOP,ADENOTE,ADENOUPD,ADEODFN,ADEOP,ADEPAT,ADEPC,ADEPNM,ADEPRO
 K ADEPROD,ADEPVNM,ADEPVNMD,ADEQTY,ADERDNM,ADERDNMD,ADEREB,ADEREP,ADEREPD,ADES,ADESTR,ADESVC,ADETCH,ADETCHF,ADETFE,ADETITL,ADETMP,ADEV,ADEVCNT,ADEVDATE
 K ADEVDFN,ADEVFM,ADEVIS,ADEX,ADEY,ADEQUIT,ADELOCSI,ADELOCFC,ADEDUZ,AUPNLK("ALL")
 Q
MOD ;EP
 I ADENEWVS S ADELOE=ADEFAC,ADEPVNM=ADEPRO,ADERDNM=ADEREP,ADELOED=ADEFACD,ADEPVNMD=ADEPROD,ADERDNMD=ADEREPD,ADENOTE="",ADETCH=0,ADETCHF=0
 E  D LOAD(ADEDFN)
 Q
LOAD(ADEDFN) ;Given ADEDFN, loads local arrays with visit data
 N ADEJ,ADEOP,ADEK,ADESFC,ADETFE,ADEX,ADEY,ADEZ,ADENONR,ADENOD
MOD0 S ADEJ=0,ADEOP=""
MOD1 S ADEJ=$O(^ADEPCD(ADEDFN,"ADA","B",ADEJ)) I ADEJ="" K ADECNT,ADEK,ADEOP G MOD4
 G:'$D(^AUTTADA(ADEJ)) MOD1
 S (ADECNT,ADEK,ADETFE)=0,ADEOP="",ADESFC="",ADENONR=""
MOD2 S ADEK=$O(^ADEPCD(ADEDFN,"ADA","B",ADEJ,ADEK))
 I ADEK="" S ADEK=$P(^AUTTADA(ADEJ,0),U),ADEV(ADEK)=ADECNT_U_ADEOP,ADEDES(ADEK)=$P(^AUTTADA(ADEJ,0),U,6) S:ADECON ADEV(ADEK)=ADEV(ADEK)_U_ADETFE S $P(ADEV(ADEK),U,4)=ADESFC,$P(ADEV(ADEK),U,5)=ADENONR G MOD1
 S ADECNT=ADECNT+1
 S ADENOD=^ADEPCD(ADEDFN,"ADA",ADEK,0)
A I ADECON,'ADETFE S ADETFE=+$P(ADENOD,U,3)
 S ADEX=$P(ADENOD,U,2)
 S ADEZ=$P(ADENOD,U,5)
 S $P(ADENONR,",",ADECNT)=ADEZ G:ADEX="" MOD2
Z S ADEY=$P(ADENOD,U,4)
 G:'$D(^ADEOPS(ADEX,88)) MOD2
 S $P(ADEOP,",",ADECNT)=ADEX
 S $P(ADESFC,",",ADECNT)=ADEY
 G MOD2
MOD4 ;------->Get Location, Provider, etc.
 K ADELOE,ADEPVNM,ADERDNM,ADELOED,ADEPVNMD,ADERDNMD
 I $P(^ADEPCD(ADEDFN,0),U,3)]"",$D(^DIC(4,$P(^ADEPCD(ADEDFN,0),U,3),0)) S ADELOE=$P(^(0),U),ADELOED=$P(^ADEPCD(ADEDFN,0),U,3)
 S:'$D(ADELOE) (ADELOE,ADELOED)=""
 I $P(^ADEPCD(ADEDFN,0),U,5)]"",$D(^DIC(16,$P(^ADEPCD(ADEDFN,0),U,5),0)) S ADEPVNM=$P(^(0),U),ADEPVNMD=$P(^ADEPCD(ADEDFN,0),U,5)
 S:'$D(ADEPVNM) (ADEPVNM,ADEPVNMD)=""
 I $P(^ADEPCD(ADEDFN,0),U,4)]"",$D(^DIC(16,$P(^ADEPCD(ADEDFN,0),U,4),0)) S ADERDNM=$P(^(0),U),ADERDNMD=$P(^ADEPCD(ADEDFN,0),U,4)
 S:'$D(ADERDNM) (ADERDNM,ADERDNMD)=""
 I $P(^ADEPCD(ADEDFN,0),U,7)]"" S ADENOTE=$P(^(0),U,7)
 S:'$D(ADENOTE) ADENOTE=""
 S ADETCHF=1,ADETCH=+$P(^ADEPCD(ADEDFN,0),U,8)
 Q
CHKQ S Y=1 Q:'$D(^ADEPOST)
 I $O(^ADEPOST(0))&('$D(^ADEUTL("ADEDQUE"))) S Y=0 W !,*7,"ERROR DETECTED -- DENTAL RECORDS ARE IN THE QUEUE WHICH ARE NOT BEING",!,"POSTED.  CONTACT SITE MANAGER OR DENTAL HEADQUARTERS FOR ASSISTANCE BEFORE",!,"ENTERING MORE DATA" Q
 S Y=1 Q
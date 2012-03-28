AICDTICD ; IHS/OHPRD/ACC - DRIVER ROUTINE FOR ICD LOOKUP UTILITY ;
 ;;3.51;IHS ICD/CPT lookup & grouper;;MAY 30, 1991
 ;
 W !!,"AICDTICD CANNOT BE ENTERED AT THE TOP.",!! Q
 ;
P S AICDTTYP="PROCEDURES" G COMMON
D S AICDTTYP="DIAGNOSES" G COMMON
C S AICDTTYP="CPT PROCEDURES" G COMMON
 ;
COMMON W ! F Q=0:0 R "NARRATIVE: ",X:$S($D(DTIME):DTIME,1:300) S:'$T X="^" Q:"^"[X  W:X?.E1C.E *7," -- NO CONTROL CHARACTERS ALLOWED!",! D:X'?.E1C.E LOOKUP
 W !
 K AICDTTYP,Q,DIC
 Q
 ;
LOOKUP ;
 I X="^SYN" S DIE="^AICDKWLC(",DR=".011:999",DA=$O(^AICDKWLC("B",AICDTTYP,"")) D ^DIE W ! Q
 K DIC S DIC("S")="I $P(^(0),""^"",9)=""""" ; SCREEN OUT INACTIVE CODES
 S:$E(AICDTTYP)="D" DIC("S")=DIC("S")_",'(+^(0)>300&+^(0)<400&($L($P($P(^(0),""^"",1),""."",2))=3))"
 S:$E(AICDTTYP)="P" DIC("S")=DIC("S")_",'($L($P($P(^(0),""^"",1),""."",2))=3)"
 I X'?1N.E,X'?1"E"1N.E,X'?1"V"1N.E,X'?1"."1N.N G NARR
CODE S DIC=$S($E(AICDTTYP)="D":80,$E(AICDTTYP)="P":80.1,1:81),DIC(0)="EQMZ" D ^DIC W ! Q
NARR W ! G ICDDX^AICDKWLD:$E(AICDTTYP)="D",ICDOP^AICDKWLD:$E(AICDTTYP)="P",CPTOP^AICDKWLD
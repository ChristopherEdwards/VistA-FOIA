BGONTEG5 ;ISC/XTSUMBLD KERNEL - Package checksum checker ;3090506.143435
 ;;1.1;BGO COMPONENTS;;Apr 24,2009
 ;;7.3;3090506.143435
 S XT4="I 1",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
CONT F XT1=1:1 S XT2=$T(ROU+XT1) Q:XT2=""  S X=$P(XT2," ",1),XT3=$P(XT2,";",3) X XT4 I $T W !,X X ^%ZOSF("TEST") S:'$T XT3=0 X:XT3 ^%ZOSF("RSUM") W ?10,$S('XT3:"Routine not in UCI",XT3'=Y:"Calculated "_$C(7)_Y_", off by "_(Y-XT3),1:"ok")
 ;
 K %1,%2,%3,X,Y,XT1,XT2,XT3,XT4 Q
ONE S XT4="I $D(^UTILITY($J,X))",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
 W !,"Check a subset of routines:" K ^UTILITY($J) X ^%ZOSF("RSEL")
 W ! G CONT
ROU ;;
BGOUTL ;;9297118
BGOVCPT ;;10946849
BGOVIMM ;;11357173
BGOVPOV ;;10339925
BGOVSK ;;5020619
BGOTRG ;;6662158
BGOCPTP2 ;;8042058
BGOEDTPR ;;2869289
BGOVPED ;;10902168
BGOCPTPR ;;3644266
BGOICDPR ;;2273150
BGOREP ;;2557351
BGOUTL2 ;;6687835
BGOVCPT2 ;;2854316
BGOWEB ;;2983655
BGOREF ;;1285821
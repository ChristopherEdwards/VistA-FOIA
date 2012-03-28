DPTDPO ; IHS/TUCSON/JCM - PATIENT POST-MERGE ROUTINE ; [ 02/03/94  7:28 AM ]
 ;;1.0;PATIENT MERGE;;FEB 02, 1994
 ;
 ; Calls: DIC,DIK
 ;
START ;
 D INIT
 D RESET
END D EOJ
 Q
 ;
INIT ;
 K DPTDPO
 S DPTDPO("FR NAME")=$P(^DPT(XDRMRG("FR"),0),U,1)
 I DPTDPO("FR NAME")'=$P(^DPT(XDRMRG("TO"),0),U,1) D OTHER
 Q
 ;
OTHER ;
 S DIC="^DPT("_XDRMRG("TO")_",.01,",DIC(0)="FL"
 S DIC("P")=$P(^DD(2,1,0),U,2),DA(1)=XDRMRG("TO"),X=DPTDPO("FR NAME")
 D ^DIC K DA,DIC,DIE
 Q
 ;
RESET ;
 S DIK="^DPT(",DA=XDRMRG("FR") D ^DIK K DA,DIK
 S ^DPT(XDRMRG("FR"),0)="*"_$E(DPTDPO("FR NAME"),1,28)_"*",$P(^(0),U,19)=XDRMRG("TO")
 S ^DPT("B","*"_$E(DPTDPO("FR NAME"),1,28)_"*",XDRMRG("FR"))=""
 L +^DPT(0):0 S $P(^(0),U,4)=($P(^DPT(0),U,4)+1) L -^DPT(0):0
 Q
 ;
EOJ ;
 K DPTDPO
 Q
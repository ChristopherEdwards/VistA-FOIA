IBXS72 ; ;10/26/11
 S X=DE(45),DIC=DIE
 ;
 S X=DE(45),DIC=DIE
 S DGRVRCAL=2
 S X=DE(45),DIC=DIE
 ;
 S X=DE(45),DIC=DIE
 K:$P(^DGCR(399,DA,0),"^",2) ^DGCR(399,"APDS",$P(^(0),U,2),-X,DA)

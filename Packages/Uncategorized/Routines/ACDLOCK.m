ACDLOCK ;IHS/ADC/EDE/KML - MAKE OPTIONS UNAVAILABLE DURING DATA EXTRACTS/IMPORTS; 
 ;;4.1;CHEMICAL DEPENDENCY MIS;;MAY 11, 1998
EN ;EP
 ;LOCK
 F ACDOPT="ACDINMENU","ACDDIK","ACDDIK1","ACDREMENU" S DA=$O(^DIC(19,"B",ACDOPT,0)) I DA S DIE=19,DR="2////"_$S($D(^ACDPTMP):"DATA TRANSFER IN PROGRESS",1:"DATA PURGE/DELETION IN PROGRESS") D DIE^ACDFMC
 K ACDOPT
 Q
 ;
 ;
EN1 ;EP
 ;UNLOCK
 F ACDOPT="ACDINMENU","ACDDIK","ACDDIK1","ACDREMENU" S DA=$O(^DIC(19,"B",ACDOPT,0)) I DA S DIE=19,DR="2///@" D DIE^ACDFMC
 K ACDOPT
 Q
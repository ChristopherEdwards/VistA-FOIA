AGTMAPPT ; IHS/SD/TPF - EDIT/ENTER PATIENT APPLICATION TYPES
 ;;7.1;PATIENT REGISTRATION;;AUG 25,2005
 ;USED BY OPTION [AG TM EDIT PAT. APP. TYPES]
EN K DIC
 S DIC="^AUPNAPPT("
 S DIC(0)="AELM"
 D ^DIC
 Q:Y<0
 D EDIT(+Y)
 G EN
EDIT(DA) ;EP -
 S DIE="^AUPNAPPT("
 S DR=.01
 D ^DIE
 Q
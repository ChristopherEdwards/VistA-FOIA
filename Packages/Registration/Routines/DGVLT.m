DGVLT ; List Template Exporter ; 13-AUG-1993
 ;;5.3;Registration;;Aug 13, 1993
 ;; ;
 W !,"'DGJ COMP EDIT SINGLE' List Template..."
 S DA=$O(^SD(409.61,"B","DGJ COMP EDIT SINGLE",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="DGJ COMP EDIT SINGLE" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="DGJ COMP EDIT SINGLE^1^^80^5^17^1^1^Deficiencie^DGJ COMPLETE EDIT MENU^Edit a Completed IRT^1"
 .S ^SD(409.61,VALM,1)="^VALM HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP(""DGJDEF"",$J)"
 .S ^SD(409.61,VALM,"COL",0)="^409.621^5^5"
 .S ^SD(409.61,VALM,"COL",1,0)="DEFICIENCY^5^12^Deficiency"
 .S ^SD(409.61,VALM,"COL",2,0)="PHYSICIAN^19^10^Physician"
 .S ^SD(409.61,VALM,"COL",3,0)="STATUS^37^10^Status"
 .S ^SD(409.61,VALM,"COL",4,0)="CATEGORY^50^10^Category"
 .S ^SD(409.61,VALM,"COL",5,0)="EVENT DATE^62^18^Event Date"
 .S ^SD(409.61,VALM,"FNL")="D FNL^DGJTEE"
 .S ^SD(409.61,VALM,"HDR")="D HDR^DGJTEE"
 .S ^SD(409.61,VALM,"HLP")="D HLP^DGJTHLP"
 .S ^SD(409.61,VALM,"INIT")="D EN^DGJTEE"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .W "Filed."
 ;
 W !,"'DGJ COMP EDIT SUPER' List Template..."
 S DA=$O(^SD(409.61,"B","DGJ COMP EDIT SUPER",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="DGJ COMP EDIT SUPER" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="DGJ COMP EDIT SUPER^1^^80^5^17^1^1^Deficiencie^DGJ COMPLETE EDIT MENU^Edit a Completed IRT^1"
 .S ^SD(409.61,VALM,1)="^VALM HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP(""DGJDEF"",$J)"
 .S ^SD(409.61,VALM,"COL",0)="^409.621^5^5"
 .S ^SD(409.61,VALM,"COL",1,0)="DEFICIENCY^5^12^Deficiency"
 .S ^SD(409.61,VALM,"COL",2,0)="PHYSICIAN^19^10^Physician"
 .S ^SD(409.61,VALM,"COL",3,0)="STATUS^37^10^Status"
 .S ^SD(409.61,VALM,"COL",4,0)="CATEGORY^50^10^Category"
 .S ^SD(409.61,VALM,"COL",5,0)="EVENT DATE^62^18^Event Date"
 .S ^SD(409.61,VALM,"FNL")="K DGJTCOM"
 .S ^SD(409.61,VALM,"HDR")="D HDR^DGJTEE"
 .S ^SD(409.61,VALM,"HLP")="D HLP^DGJTHLP"
 .S ^SD(409.61,VALM,"INIT")="D EVDT^DGJTEE"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .W "Filed."
 ;
 W !,"'DGJ DEF EDIT' List Template..."
 S DA=$O(^SD(409.61,"B","DGJ DEF EDIT",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="DGJ DEF EDIT" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="DGJ DEF EDIT^1^^^5^17^1^1^Deficiencie^DGJ IRT SUMMARIES^Edit IRT Deficiency^3"
 .S ^SD(409.61,VALM,1)="^VALM HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP(""DGJRPT"",$J)"
 .S ^SD(409.61,VALM,"FNL")="K DGJTDEF"
 .S ^SD(409.61,VALM,"HDR")="D HDR^DGJTEE"
 .S ^SD(409.61,VALM,"HLP")="D HLP1^DGJTHLP"
 .S ^SD(409.61,VALM,"INIT")="S DGJTDEF=1 D ^DGJTVW3"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .W "Filed."
 ;
 W !,"'DGJ DEFICIENCY LIST' List Template..."
 S DA=$O(^SD(409.61,"B","DGJ DEFICIENCY LIST",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="DGJ DEFICIENCY LIST" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="DGJ DEFICIENCY LIST^1^^^5^17^1^1^Deficiencie^DGJ ENTER/EDIT DEFICIENCY MENU^Record Deficiency list^2"
 .S ^SD(409.61,VALM,1)="^VALM HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP(""DGJDEF"",$J)"
 .S ^SD(409.61,VALM,"COL",0)="^409.621^5^5"
 .S ^SD(409.61,VALM,"COL",1,0)="DEFICIENCY^5^12^Deficiency"
 .S ^SD(409.61,VALM,"COL",2,0)="PHYSICIAN^19^10^Physician"
 .S ^SD(409.61,VALM,"COL",3,0)="STATUS^37^10^Status"
 .S ^SD(409.61,VALM,"COL",4,0)="CATEGORY^50^10^Category"
 .S ^SD(409.61,VALM,"COL",5,0)="EVENT DATE^62^18^Event Date"
 .S ^SD(409.61,VALM,"FNL")="D FNL^DGJTEE"
 .S ^SD(409.61,VALM,"HDR")="D HDR^DGJTEE"
 .S ^SD(409.61,VALM,"HLP")="D HLP^DGJTHLP"
 .S ^SD(409.61,VALM,"INIT")="D EN^DGJTEE"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .W "Filed."
 ;
 W !,"'DGJ DELETE DEFICIENCY' List Template..."
 S DA=$O(^SD(409.61,"B","DGJ DELETE DEFICIENCY",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="DGJ DELETE DEFICIENCY" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="DGJ DELETE DEFICIENCY^2^^^5^17^1^1^Deficiencie^^Deficiency to Delete^2"
 .S ^SD(409.61,VALM,1)="^VALM HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP(""DGJRPT"",$J)"
 .S ^SD(409.61,VALM,"FNL")="D QUIT1^DGJTVW1"
 .S ^SD(409.61,VALM,"HDR")="D HDR^DGJTEE"
 .S ^SD(409.61,VALM,"INIT")="D ^DGJTVW3"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .W "Filed."
 ;
 W !,"'DGJ DELETE RECORD' List Template..."
 S DA=$O(^SD(409.61,"B","DGJ DELETE RECORD",0)),DIK="^SD(409.61," D ^DIK:DA
 G ^DGVLT1
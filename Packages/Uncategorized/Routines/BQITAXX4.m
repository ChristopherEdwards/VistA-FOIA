BQITAXX4 ;VNGT/HS/ALA-Update Taxonomy List ; 21 Apr 2009  9:34 AM
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
UPD(NTAX,SITE,ID,CAT) ;EP - Update taxonomy list
 ; Input parameters
 ;  NTAX - Taxonomy name
 ;  SITE - site-populated flag (1)
 ;  ID   - Taxonomy ID (DX:DIAGNOSES;M:MEDICATIONS;PR:PROCEDURES;
 ;                      T:LAB TESTS;C:CPTS;O:OTHERS;CM:COMMUNITIES
 ;  CAT  - Taxonomy category (1:Diagnoses;2:CPT Procedures;
 ;                            3:ICD Procedures;4:Medications;
 ;                            5:Lab Tests;6:Other;7:Communities
 ;
 NEW DA,DIC,X,DLAYGO,IENS,BQIUPD,TIEN,NDA
 S TIEN=$O(^ATXAX("B",NTAX,"")) I TIEN="" Q
 S DA(1)=$O(^BQI(90508,0)),X=NTAX
 S DA=$O(^BQI(90508,DA(1),10,"B",NTAX,""))
 I DA="" D
 . S DIC(0)="L",DIC="^BQI(90508,"_DA(1)_",10,",DLAYGO=90508.03
 . K DO,DD D FILE^DICN
 . S DA=+Y
 I DA'=-1 S NDA=DA
 ;I DA=-1 K DO,DD D FILE^DICN S NDA=+Y
 S IENS=$$IENS^DILF(.DA)
 ;
 S BQIUPD(90508.03,IENS,.01)=NTAX
 D FILE^DIE("E","BQIUPD","ERROR")
 ;
 S BQIUPD(90508.03,IENS,.02)=TIEN_";ATXAX("
 S BQIUPD(90508.03,IENS,.03)=$G(CAT)
 S BQIUPD(90508.03,IENS,.04)=$G(SITE)
 S BQIUPD(90508.03,IENS,.05)=$G(ID)
 D FILE^DIE("I","BQIUPD","ERROR")
 K BQIUPD
 Q
 ;
ALL ; All taxonomies
 ; T00030TAXONOMY_NAME^T00015TAXONOMY_IEN^T00020TAX_CATEGORY^T00003TAX_SITE_DEFINED^T00030TAX_ID^T00003TAX_ITEMS^T00030REGISTER^T00003USER_EDITABLE
 NEW TXIEN,FILE,CAT,SITE,ID,TAXN,TXN,ITEM,USER
 S TXIEN=0
 F  S TXIEN=$O(^ATXAX(TXIEN)) Q:'TXIEN  D
 . S FILE=$P($G(^ATXAX(TXIEN,0)),U,15) I FILE="" Q
 . S TAXNM=$P(^ATXAX(TXIEN,0),U,1)
 . S TXN=$O(^BQI(90508.4,"B",FILE,""))
 . S CAT="",SITE="",ID="",TAXN=TXIEN_";ATXAX("
 . D FIN
 ;
 S TXIEN=0
 F  S TXIEN=$O(^ATXLAB(TXIEN)) Q:'TXIEN  D
 . S TAXNM=$P(^ATXLAB(TXIEN,0),U,1)
 . S CAT="",SITE="",ID="",TAXN=TXIEN_";ATXLAB(",FILE=60
 . S TXN=$O(^BQI(90508.4,"B",FILE,""))
 . D FIN
 Q
 ;
FIN ; Finish
 I TXN'="" S CN=$P(^BQI(90508.4,TXN,0),U,2),SITE=$P(^BQI(90508.4,TXN,0),U,3)
 I $G(CN)'="" S CAT=$P(^BQI(90508.3,CN,0),U,1),ID=$P(^BQI(90508.3,CN,0),U,2)
 S ITEM=$S('$$ENTRS^BQITAXX(TAXN):"NO",1:"YES")
 S SITE=$S(SITE=1:"YES",1:"NO")
 S:CAT="" CAT="OTHER" S:ID="" ID="OTHERS"
 S USER=$S(ID="COMMUNITIES":"YES",1:"NO")
 I ID="COMMUNITIES" S USER=$S(DUZ=$P(^ATXAX(TXIEN,0),U,5):"YES",1:"NO")
 S II=II+1,@DATA@(II)=TAXNM_U_TAXN_U_CAT_U_SITE_U_ID_U_ITEM_U_U_USER_$C(30)
 Q
BUD0ZA25 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON DEC 13, 2010;
 ;;5.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 18, 2011;Build 12
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1062,49999-0108-00 ",.02)
 ;;49999-0108-00
 ;;9002226.02101,"1062,49999-0108-30 ",.01)
 ;;49999-0108-30
 ;;9002226.02101,"1062,49999-0108-30 ",.02)
 ;;49999-0108-30
 ;;9002226.02101,"1062,49999-0108-60 ",.01)
 ;;49999-0108-60
 ;;9002226.02101,"1062,49999-0108-60 ",.02)
 ;;49999-0108-60
 ;;9002226.02101,"1062,49999-0113-00 ",.01)
 ;;49999-0113-00
 ;;9002226.02101,"1062,49999-0113-00 ",.02)
 ;;49999-0113-00
 ;;9002226.02101,"1062,49999-0113-01 ",.01)
 ;;49999-0113-01
 ;;9002226.02101,"1062,49999-0113-01 ",.02)
 ;;49999-0113-01
 ;;9002226.02101,"1062,49999-0113-30 ",.01)
 ;;49999-0113-30
 ;;9002226.02101,"1062,49999-0113-30 ",.02)
 ;;49999-0113-30
 ;;9002226.02101,"1062,49999-0113-60 ",.01)
 ;;49999-0113-60
 ;;9002226.02101,"1062,49999-0113-60 ",.02)
 ;;49999-0113-60
 ;;9002226.02101,"1062,49999-0113-90 ",.01)
 ;;49999-0113-90
 ;;9002226.02101,"1062,49999-0113-90 ",.02)
 ;;49999-0113-90
 ;;9002226.02101,"1062,49999-0304-30 ",.01)
 ;;49999-0304-30
 ;;9002226.02101,"1062,49999-0304-30 ",.02)
 ;;49999-0304-30
 ;;9002226.02101,"1062,49999-0401-30 ",.01)
 ;;49999-0401-30
 ;;9002226.02101,"1062,49999-0401-30 ",.02)
 ;;49999-0401-30
 ;;9002226.02101,"1062,49999-0401-60 ",.01)
 ;;49999-0401-60
 ;;9002226.02101,"1062,49999-0401-60 ",.02)
 ;;49999-0401-60
 ;;9002226.02101,"1062,49999-0450-30 ",.01)
 ;;49999-0450-30
 ;;9002226.02101,"1062,49999-0450-30 ",.02)
 ;;49999-0450-30
 ;;9002226.02101,"1062,49999-0451-30 ",.01)
 ;;49999-0451-30
 ;;9002226.02101,"1062,49999-0451-30 ",.02)
 ;;49999-0451-30
 ;;9002226.02101,"1062,49999-0514-30 ",.01)
 ;;49999-0514-30
 ;;9002226.02101,"1062,49999-0514-30 ",.02)
 ;;49999-0514-30
 ;;9002226.02101,"1062,49999-0571-60 ",.01)
 ;;49999-0571-60
 ;;9002226.02101,"1062,49999-0571-60 ",.02)
 ;;49999-0571-60
 ;;9002226.02101,"1062,49999-0660-30 ",.01)
 ;;49999-0660-30
 ;;9002226.02101,"1062,49999-0660-30 ",.02)
 ;;49999-0660-30
 ;;9002226.02101,"1062,49999-0660-60 ",.01)
 ;;49999-0660-60
 ;;9002226.02101,"1062,49999-0660-60 ",.02)
 ;;49999-0660-60
 ;;9002226.02101,"1062,49999-0781-00 ",.01)
 ;;49999-0781-00
 ;;9002226.02101,"1062,49999-0781-00 ",.02)
 ;;49999-0781-00
 ;;9002226.02101,"1062,49999-0807-00 ",.01)
 ;;49999-0807-00
 ;;9002226.02101,"1062,49999-0807-00 ",.02)
 ;;49999-0807-00
 ;;9002226.02101,"1062,49999-0808-00 ",.01)
 ;;49999-0808-00
 ;;9002226.02101,"1062,49999-0808-00 ",.02)
 ;;49999-0808-00
 ;;9002226.02101,"1062,49999-0935-30 ",.01)
 ;;49999-0935-30
 ;;9002226.02101,"1062,49999-0935-30 ",.02)
 ;;49999-0935-30
 ;;9002226.02101,"1062,49999-0993-10 ",.01)
 ;;49999-0993-10
 ;;9002226.02101,"1062,49999-0993-10 ",.02)
 ;;49999-0993-10
 ;;9002226.02101,"1062,49999-0994-10 ",.01)
 ;;49999-0994-10
 ;;9002226.02101,"1062,49999-0994-10 ",.02)
 ;;49999-0994-10
 ;;9002226.02101,"1062,50111-0372-01 ",.01)
 ;;50111-0372-01
 ;;9002226.02101,"1062,50111-0372-01 ",.02)
 ;;50111-0372-01
 ;;9002226.02101,"1062,50111-0373-01 ",.01)
 ;;50111-0373-01
 ;;9002226.02101,"1062,50111-0373-01 ",.02)
 ;;50111-0373-01
 ;;9002226.02101,"1062,50111-0373-03 ",.01)
 ;;50111-0373-03
 ;;9002226.02101,"1062,50111-0373-03 ",.02)
 ;;50111-0373-03
 ;;9002226.02101,"1062,51079-0202-01 ",.01)
 ;;51079-0202-01
 ;;9002226.02101,"1062,51079-0202-01 ",.02)
 ;;51079-0202-01
 ;;9002226.02101,"1062,51079-0202-20 ",.01)
 ;;51079-0202-20
 ;;9002226.02101,"1062,51079-0202-20 ",.02)
 ;;51079-0202-20
 ;;9002226.02101,"1062,51079-0203-01 ",.01)
 ;;51079-0203-01
 ;;9002226.02101,"1062,51079-0203-01 ",.02)
 ;;51079-0203-01
 ;;9002226.02101,"1062,51079-0203-20 ",.01)
 ;;51079-0203-20
 ;;9002226.02101,"1062,51079-0203-20 ",.02)
 ;;51079-0203-20
 ;;9002226.02101,"1062,51079-0425-01 ",.01)
 ;;51079-0425-01
 ;;9002226.02101,"1062,51079-0425-01 ",.02)
 ;;51079-0425-01
 ;;9002226.02101,"1062,51079-0425-20 ",.01)
 ;;51079-0425-20
 ;;9002226.02101,"1062,51079-0425-20 ",.02)
 ;;51079-0425-20
 ;;9002226.02101,"1062,51079-0426-01 ",.01)
 ;;51079-0426-01
 ;;9002226.02101,"1062,51079-0426-01 ",.02)
 ;;51079-0426-01
 ;;9002226.02101,"1062,51079-0426-20 ",.01)
 ;;51079-0426-20
 ;;9002226.02101,"1062,51079-0426-20 ",.02)
 ;;51079-0426-20
 ;;9002226.02101,"1062,51079-0560-01 ",.01)
 ;;51079-0560-01
 ;;9002226.02101,"1062,51079-0560-01 ",.02)
 ;;51079-0560-01
 ;;9002226.02101,"1062,51079-0560-20 ",.01)
 ;;51079-0560-20
 ;;9002226.02101,"1062,51079-0560-20 ",.02)
 ;;51079-0560-20
 ;;9002226.02101,"1062,51079-0810-01 ",.01)
 ;;51079-0810-01
 ;;9002226.02101,"1062,51079-0810-01 ",.02)
 ;;51079-0810-01
 ;;9002226.02101,"1062,51079-0810-19 ",.01)
 ;;51079-0810-19
 ;;9002226.02101,"1062,51079-0810-19 ",.02)
 ;;51079-0810-19
 ;;9002226.02101,"1062,51079-0810-20 ",.01)
 ;;51079-0810-20
 ;;9002226.02101,"1062,51079-0810-20 ",.02)
 ;;51079-0810-20
 ;;9002226.02101,"1062,51079-0811-01 ",.01)
 ;;51079-0811-01
 ;;9002226.02101,"1062,51079-0811-01 ",.02)
 ;;51079-0811-01
 ;;9002226.02101,"1062,51079-0811-19 ",.01)
 ;;51079-0811-19
 ;;9002226.02101,"1062,51079-0811-19 ",.02)
 ;;51079-0811-19
 ;;9002226.02101,"1062,51079-0811-20 ",.01)
 ;;51079-0811-20
 ;;9002226.02101,"1062,51079-0811-20 ",.02)
 ;;51079-0811-20
 ;;9002226.02101,"1062,51079-0872-01 ",.01)
 ;;51079-0872-01
 ;;9002226.02101,"1062,51079-0872-01 ",.02)
 ;;51079-0872-01
BGP13X24 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1100,21695-0327-60 ",.01)
 ;;21695-0327-60
 ;;9002226.02101,"1100,21695-0327-60 ",.02)
 ;;21695-0327-60
 ;;9002226.02101,"1100,21695-0327-90 ",.01)
 ;;21695-0327-90
 ;;9002226.02101,"1100,21695-0327-90 ",.02)
 ;;21695-0327-90
 ;;9002226.02101,"1100,21695-0328-30 ",.01)
 ;;21695-0328-30
 ;;9002226.02101,"1100,21695-0328-30 ",.02)
 ;;21695-0328-30
 ;;9002226.02101,"1100,21695-0328-90 ",.01)
 ;;21695-0328-90
 ;;9002226.02101,"1100,21695-0328-90 ",.02)
 ;;21695-0328-90
 ;;9002226.02101,"1100,21695-0329-30 ",.01)
 ;;21695-0329-30
 ;;9002226.02101,"1100,21695-0329-30 ",.02)
 ;;21695-0329-30
 ;;9002226.02101,"1100,21695-0329-78 ",.01)
 ;;21695-0329-78
 ;;9002226.02101,"1100,21695-0329-78 ",.02)
 ;;21695-0329-78
 ;;9002226.02101,"1100,21695-0329-90 ",.01)
 ;;21695-0329-90
 ;;9002226.02101,"1100,21695-0329-90 ",.02)
 ;;21695-0329-90
 ;;9002226.02101,"1100,21695-0330-20 ",.01)
 ;;21695-0330-20
 ;;9002226.02101,"1100,21695-0330-20 ",.02)
 ;;21695-0330-20
 ;;9002226.02101,"1100,21695-0330-30 ",.01)
 ;;21695-0330-30
 ;;9002226.02101,"1100,21695-0330-30 ",.02)
 ;;21695-0330-30
 ;;9002226.02101,"1100,21695-0330-90 ",.01)
 ;;21695-0330-90
 ;;9002226.02101,"1100,21695-0330-90 ",.02)
 ;;21695-0330-90
 ;;9002226.02101,"1100,21695-0331-30 ",.01)
 ;;21695-0331-30
 ;;9002226.02101,"1100,21695-0331-30 ",.02)
 ;;21695-0331-30
 ;;9002226.02101,"1100,21695-0331-90 ",.01)
 ;;21695-0331-90
 ;;9002226.02101,"1100,21695-0331-90 ",.02)
 ;;21695-0331-90
 ;;9002226.02101,"1100,21695-0345-90 ",.01)
 ;;21695-0345-90
 ;;9002226.02101,"1100,21695-0345-90 ",.02)
 ;;21695-0345-90
 ;;9002226.02101,"1100,21695-0393-30 ",.01)
 ;;21695-0393-30
 ;;9002226.02101,"1100,21695-0393-30 ",.02)
 ;;21695-0393-30
 ;;9002226.02101,"1100,21695-0394-30 ",.01)
 ;;21695-0394-30
 ;;9002226.02101,"1100,21695-0394-30 ",.02)
 ;;21695-0394-30
 ;;9002226.02101,"1100,21695-0477-30 ",.01)
 ;;21695-0477-30
 ;;9002226.02101,"1100,21695-0477-30 ",.02)
 ;;21695-0477-30
 ;;9002226.02101,"1100,21695-0477-78 ",.01)
 ;;21695-0477-78
 ;;9002226.02101,"1100,21695-0477-78 ",.02)
 ;;21695-0477-78
 ;;9002226.02101,"1100,21695-0478-30 ",.01)
 ;;21695-0478-30
 ;;9002226.02101,"1100,21695-0478-30 ",.02)
 ;;21695-0478-30
 ;;9002226.02101,"1100,21695-0487-30 ",.01)
 ;;21695-0487-30
 ;;9002226.02101,"1100,21695-0487-30 ",.02)
 ;;21695-0487-30
 ;;9002226.02101,"1100,21695-0488-30 ",.01)
 ;;21695-0488-30
 ;;9002226.02101,"1100,21695-0488-30 ",.02)
 ;;21695-0488-30
 ;;9002226.02101,"1100,21695-0488-60 ",.01)
 ;;21695-0488-60
 ;;9002226.02101,"1100,21695-0488-60 ",.02)
 ;;21695-0488-60
 ;;9002226.02101,"1100,21695-0489-30 ",.01)
 ;;21695-0489-30
 ;;9002226.02101,"1100,21695-0489-30 ",.02)
 ;;21695-0489-30
 ;;9002226.02101,"1100,21695-0489-90 ",.01)
 ;;21695-0489-90
 ;;9002226.02101,"1100,21695-0489-90 ",.02)
 ;;21695-0489-90
 ;;9002226.02101,"1100,21695-0612-90 ",.01)
 ;;21695-0612-90
 ;;9002226.02101,"1100,21695-0612-90 ",.02)
 ;;21695-0612-90
 ;;9002226.02101,"1100,21695-0714-30 ",.01)
 ;;21695-0714-30
 ;;9002226.02101,"1100,21695-0714-30 ",.02)
 ;;21695-0714-30
 ;;9002226.02101,"1100,21695-0714-90 ",.01)
 ;;21695-0714-90
 ;;9002226.02101,"1100,21695-0714-90 ",.02)
 ;;21695-0714-90
 ;;9002226.02101,"1100,21695-0717-30 ",.01)
 ;;21695-0717-30
 ;;9002226.02101,"1100,21695-0717-30 ",.02)
 ;;21695-0717-30
 ;;9002226.02101,"1100,21695-0717-90 ",.01)
 ;;21695-0717-90
 ;;9002226.02101,"1100,21695-0717-90 ",.02)
 ;;21695-0717-90
 ;;9002226.02101,"1100,21695-0733-30 ",.01)
 ;;21695-0733-30
 ;;9002226.02101,"1100,21695-0733-30 ",.02)
 ;;21695-0733-30
 ;;9002226.02101,"1100,21695-0734-30 ",.01)
 ;;21695-0734-30
 ;;9002226.02101,"1100,21695-0734-30 ",.02)
 ;;21695-0734-30
 ;;9002226.02101,"1100,21695-0734-60 ",.01)
 ;;21695-0734-60
 ;;9002226.02101,"1100,21695-0734-60 ",.02)
 ;;21695-0734-60
 ;;9002226.02101,"1100,21695-0735-30 ",.01)
 ;;21695-0735-30
 ;;9002226.02101,"1100,21695-0735-30 ",.02)
 ;;21695-0735-30
 ;;9002226.02101,"1100,21695-0735-60 ",.01)
 ;;21695-0735-60
 ;;9002226.02101,"1100,21695-0735-60 ",.02)
 ;;21695-0735-60
 ;;9002226.02101,"1100,21695-0780-30 ",.01)
 ;;21695-0780-30
 ;;9002226.02101,"1100,21695-0780-30 ",.02)
 ;;21695-0780-30
 ;;9002226.02101,"1100,21695-0821-30 ",.01)
 ;;21695-0821-30
 ;;9002226.02101,"1100,21695-0821-30 ",.02)
 ;;21695-0821-30
 ;;9002226.02101,"1100,21695-0822-30 ",.01)
 ;;21695-0822-30
 ;;9002226.02101,"1100,21695-0822-30 ",.02)
 ;;21695-0822-30
 ;;9002226.02101,"1100,21695-0822-90 ",.01)
 ;;21695-0822-90
 ;;9002226.02101,"1100,21695-0822-90 ",.02)
 ;;21695-0822-90
 ;;9002226.02101,"1100,21695-0823-30 ",.01)
 ;;21695-0823-30
 ;;9002226.02101,"1100,21695-0823-30 ",.02)
 ;;21695-0823-30
 ;;9002226.02101,"1100,21695-0823-60 ",.01)
 ;;21695-0823-60
 ;;9002226.02101,"1100,21695-0823-60 ",.02)
 ;;21695-0823-60
 ;;9002226.02101,"1100,21695-0877-30 ",.01)
 ;;21695-0877-30
 ;;9002226.02101,"1100,21695-0877-30 ",.02)
 ;;21695-0877-30
 ;;9002226.02101,"1100,21695-0877-90 ",.01)
 ;;21695-0877-90
 ;;9002226.02101,"1100,21695-0877-90 ",.02)
 ;;21695-0877-90
 ;;9002226.02101,"1100,23490-5118-01 ",.01)
 ;;23490-5118-01
 ;;9002226.02101,"1100,23490-5118-01 ",.02)
 ;;23490-5118-01
 ;;9002226.02101,"1100,23490-5119-01 ",.01)
 ;;23490-5119-01
 ;;9002226.02101,"1100,23490-5119-01 ",.02)
 ;;23490-5119-01
 ;;9002226.02101,"1100,23490-5120-03 ",.01)
 ;;23490-5120-03
 ;;9002226.02101,"1100,23490-5120-03 ",.02)
 ;;23490-5120-03
 ;;9002226.02101,"1100,23490-5120-09 ",.01)
 ;;23490-5120-09
 ;;9002226.02101,"1100,23490-5120-09 ",.02)
 ;;23490-5120-09
 ;;9002226.02101,"1100,23490-5121-01 ",.01)
 ;;23490-5121-01
 ;;9002226.02101,"1100,23490-5121-01 ",.02)
 ;;23490-5121-01
 ;;9002226.02101,"1100,23490-5191-01 ",.01)
 ;;23490-5191-01
 ;;9002226.02101,"1100,23490-5191-01 ",.02)
 ;;23490-5191-01
 ;;9002226.02101,"1100,23490-5192-01 ",.01)
 ;;23490-5192-01
 ;;9002226.02101,"1100,23490-5192-01 ",.02)
 ;;23490-5192-01
 ;;9002226.02101,"1100,23490-5193-01 ",.01)
 ;;23490-5193-01
 ;;9002226.02101,"1100,23490-5193-01 ",.02)
 ;;23490-5193-01
 ;;9002226.02101,"1100,23490-5193-02 ",.01)
 ;;23490-5193-02
 ;;9002226.02101,"1100,23490-5193-02 ",.02)
 ;;23490-5193-02
 ;;9002226.02101,"1100,23490-5193-03 ",.01)
 ;;23490-5193-03
 ;;9002226.02101,"1100,23490-5193-03 ",.02)
 ;;23490-5193-03
 ;;9002226.02101,"1100,23490-5194-00 ",.01)
 ;;23490-5194-00
 ;;9002226.02101,"1100,23490-5194-00 ",.02)
 ;;23490-5194-00
 ;;9002226.02101,"1100,23490-5194-01 ",.01)
 ;;23490-5194-01
 ;;9002226.02101,"1100,23490-5194-01 ",.02)
 ;;23490-5194-01
 ;;9002226.02101,"1100,23490-5194-02 ",.01)
 ;;23490-5194-02
 ;;9002226.02101,"1100,23490-5194-02 ",.02)
 ;;23490-5194-02
 ;;9002226.02101,"1100,23490-5491-01 ",.01)
 ;;23490-5491-01
 ;;9002226.02101,"1100,23490-5491-01 ",.02)
 ;;23490-5491-01
 ;;9002226.02101,"1100,23490-5491-02 ",.01)
 ;;23490-5491-02
 ;;9002226.02101,"1100,23490-5491-02 ",.02)
 ;;23490-5491-02
 ;;9002226.02101,"1100,23490-5491-08 ",.01)
 ;;23490-5491-08
 ;;9002226.02101,"1100,23490-5491-08 ",.02)
 ;;23490-5491-08
 ;;9002226.02101,"1100,23490-5491-09 ",.01)
 ;;23490-5491-09
 ;;9002226.02101,"1100,23490-5491-09 ",.02)
 ;;23490-5491-09
 ;;9002226.02101,"1100,23490-5492-01 ",.01)
 ;;23490-5492-01
 ;;9002226.02101,"1100,23490-5492-01 ",.02)
 ;;23490-5492-01
 ;;9002226.02101,"1100,23490-5492-02 ",.01)
 ;;23490-5492-02
 ;;9002226.02101,"1100,23490-5492-02 ",.02)
 ;;23490-5492-02
 ;;9002226.02101,"1100,23490-5494-01 ",.01)
 ;;23490-5494-01
 ;;9002226.02101,"1100,23490-5494-01 ",.02)
 ;;23490-5494-01
 ;;9002226.02101,"1100,23490-5494-02 ",.01)
 ;;23490-5494-02
 ;;9002226.02101,"1100,23490-5494-02 ",.02)
 ;;23490-5494-02
 ;;9002226.02101,"1100,23490-5815-00 ",.01)
 ;;23490-5815-00
 ;;9002226.02101,"1100,23490-5815-00 ",.02)
 ;;23490-5815-00
 ;;9002226.02101,"1100,23490-5815-01 ",.01)
 ;;23490-5815-01
 ;;9002226.02101,"1100,23490-5815-01 ",.02)
 ;;23490-5815-01
 ;;9002226.02101,"1100,23490-5816-01 ",.01)
 ;;23490-5816-01
 ;;9002226.02101,"1100,23490-5816-01 ",.02)
 ;;23490-5816-01
 ;;9002226.02101,"1100,23490-5816-02 ",.01)
 ;;23490-5816-02
 ;;9002226.02101,"1100,23490-5816-02 ",.02)
 ;;23490-5816-02
 ;;9002226.02101,"1100,23490-5816-06 ",.01)
 ;;23490-5816-06
 ;;9002226.02101,"1100,23490-5816-06 ",.02)
 ;;23490-5816-06
 ;;9002226.02101,"1100,23490-5817-02 ",.01)
 ;;23490-5817-02
 ;;9002226.02101,"1100,23490-5817-02 ",.02)
 ;;23490-5817-02
 ;;9002226.02101,"1100,23490-5818-02 ",.01)
 ;;23490-5818-02
 ;;9002226.02101,"1100,23490-5818-02 ",.02)
 ;;23490-5818-02
 ;;9002226.02101,"1100,23490-5819-02 ",.01)
 ;;23490-5819-02
 ;;9002226.02101,"1100,23490-5819-02 ",.02)
 ;;23490-5819-02
 ;;9002226.02101,"1100,23490-5820-01 ",.01)
 ;;23490-5820-01
 ;;9002226.02101,"1100,23490-5820-01 ",.02)
 ;;23490-5820-01
 ;;9002226.02101,"1100,23490-5821-01 ",.01)
 ;;23490-5821-01
 ;;9002226.02101,"1100,23490-5821-01 ",.02)
 ;;23490-5821-01
 ;;9002226.02101,"1100,23490-5822-01 ",.01)
 ;;23490-5822-01
 ;;9002226.02101,"1100,23490-5822-01 ",.02)
 ;;23490-5822-01
 ;;9002226.02101,"1100,23490-9364-03 ",.01)
 ;;23490-9364-03
 ;;9002226.02101,"1100,23490-9364-03 ",.02)
 ;;23490-9364-03
 ;;9002226.02101,"1100,23490-9409-03 ",.01)
 ;;23490-9409-03
 ;;9002226.02101,"1100,23490-9409-03 ",.02)
 ;;23490-9409-03
 ;;9002226.02101,"1100,23490-9409-09 ",.01)
 ;;23490-9409-09
 ;;9002226.02101,"1100,23490-9409-09 ",.02)
 ;;23490-9409-09
 ;;9002226.02101,"1100,23490-9410-03 ",.01)
 ;;23490-9410-03
 ;;9002226.02101,"1100,23490-9410-03 ",.02)
 ;;23490-9410-03
 ;;9002226.02101,"1100,23490-9410-09 ",.01)
 ;;23490-9410-09
 ;;9002226.02101,"1100,23490-9410-09 ",.02)
 ;;23490-9410-09
 ;;9002226.02101,"1100,23490-9411-03 ",.01)
 ;;23490-9411-03
 ;;9002226.02101,"1100,23490-9411-03 ",.02)
 ;;23490-9411-03
 ;;9002226.02101,"1100,23490-9411-09 ",.01)
 ;;23490-9411-09
 ;;9002226.02101,"1100,23490-9411-09 ",.02)
 ;;23490-9411-09
 ;;9002226.02101,"1100,23490-9412-03 ",.01)
 ;;23490-9412-03
 ;;9002226.02101,"1100,23490-9412-03 ",.02)
 ;;23490-9412-03
 ;;9002226.02101,"1100,23490-9412-09 ",.01)
 ;;23490-9412-09
 ;;9002226.02101,"1100,23490-9412-09 ",.02)
 ;;23490-9412-09
 ;;9002226.02101,"1100,23629-0007-10 ",.01)
 ;;23629-0007-10
 ;;9002226.02101,"1100,23629-0007-10 ",.02)
 ;;23629-0007-10
 ;;9002226.02101,"1100,23629-0021-10 ",.01)
 ;;23629-0021-10
 ;;9002226.02101,"1100,23629-0021-10 ",.02)
 ;;23629-0021-10
 ;;9002226.02101,"1100,24658-0100-10 ",.01)
 ;;24658-0100-10
 ;;9002226.02101,"1100,24658-0100-10 ",.02)
 ;;24658-0100-10
 ;;9002226.02101,"1100,24658-0100-90 ",.01)
 ;;24658-0100-90
 ;;9002226.02101,"1100,24658-0100-90 ",.02)
 ;;24658-0100-90
 ;;9002226.02101,"1100,24658-0101-10 ",.01)
 ;;24658-0101-10
 ;;9002226.02101,"1100,24658-0101-10 ",.02)
 ;;24658-0101-10
 ;;9002226.02101,"1100,24658-0101-90 ",.01)
 ;;24658-0101-90
 ;;9002226.02101,"1100,24658-0101-90 ",.02)
 ;;24658-0101-90
 ;;9002226.02101,"1100,24658-0102-10 ",.01)
 ;;24658-0102-10
 ;;9002226.02101,"1100,24658-0102-10 ",.02)
 ;;24658-0102-10
 ;;9002226.02101,"1100,24658-0102-90 ",.01)
 ;;24658-0102-90
 ;;9002226.02101,"1100,24658-0102-90 ",.02)
 ;;24658-0102-90
 ;;9002226.02101,"1100,24658-0200-01 ",.01)
 ;;24658-0200-01
 ;;9002226.02101,"1100,24658-0200-01 ",.02)
 ;;24658-0200-01
 ;;9002226.02101,"1100,24658-0200-05 ",.01)
 ;;24658-0200-05
 ;;9002226.02101,"1100,24658-0200-05 ",.02)
 ;;24658-0200-05
 ;;9002226.02101,"1100,24658-0201-01 ",.01)
 ;;24658-0201-01
 ;;9002226.02101,"1100,24658-0201-01 ",.02)
 ;;24658-0201-01
 ;;9002226.02101,"1100,24658-0201-05 ",.01)
 ;;24658-0201-05
 ;;9002226.02101,"1100,24658-0201-05 ",.02)
 ;;24658-0201-05
 ;;9002226.02101,"1100,24658-0202-01 ",.01)
 ;;24658-0202-01
 ;;9002226.02101,"1100,24658-0202-01 ",.02)
 ;;24658-0202-01
 ;;9002226.02101,"1100,24658-0202-05 ",.01)
 ;;24658-0202-05
 ;;9002226.02101,"1100,24658-0202-05 ",.02)
 ;;24658-0202-05
 ;;9002226.02101,"1100,24658-0203-01 ",.01)
 ;;24658-0203-01
 ;;9002226.02101,"1100,24658-0203-01 ",.02)
 ;;24658-0203-01
 ;;9002226.02101,"1100,24658-0203-05 ",.01)
 ;;24658-0203-05
 ;;9002226.02101,"1100,24658-0203-05 ",.02)
 ;;24658-0203-05
 ;;9002226.02101,"1100,24658-0240-10 ",.01)
 ;;24658-0240-10
 ;;9002226.02101,"1100,24658-0240-10 ",.02)
 ;;24658-0240-10
 ;;9002226.02101,"1100,24658-0240-90 ",.01)
 ;;24658-0240-90
 ;;9002226.02101,"1100,24658-0240-90 ",.02)
 ;;24658-0240-90
 ;;9002226.02101,"1100,24658-0241-10 ",.01)
 ;;24658-0241-10
 ;;9002226.02101,"1100,24658-0241-10 ",.02)
 ;;24658-0241-10
 ;;9002226.02101,"1100,24658-0241-30 ",.01)
 ;;24658-0241-30
 ;;9002226.02101,"1100,24658-0241-30 ",.02)
 ;;24658-0241-30
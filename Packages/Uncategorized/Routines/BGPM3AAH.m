BGPM3AAH ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON APR 21, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"774,00615455029 ",.02)
 ;;00615455029
 ;;9002226.02101,"774,00615455031 ",.01)
 ;;00615455031
 ;;9002226.02101,"774,00615455031 ",.02)
 ;;00615455031
 ;;9002226.02101,"774,00615455039 ",.01)
 ;;00615455039
 ;;9002226.02101,"774,00615455039 ",.02)
 ;;00615455039
 ;;9002226.02101,"774,00615455129 ",.01)
 ;;00615455129
 ;;9002226.02101,"774,00615455129 ",.02)
 ;;00615455129
 ;;9002226.02101,"774,00641039102 ",.01)
 ;;00641039102
 ;;9002226.02101,"774,00641039102 ",.02)
 ;;00641039102
 ;;9002226.02101,"774,00641039125 ",.01)
 ;;00641039125
 ;;9002226.02101,"774,00641039125 ",.02)
 ;;00641039125
 ;;9002226.02101,"774,00641039164 ",.01)
 ;;00641039164
 ;;9002226.02101,"774,00641039164 ",.02)
 ;;00641039164
 ;;9002226.02101,"774,00641040002 ",.01)
 ;;00641040002
 ;;9002226.02101,"774,00641040002 ",.02)
 ;;00641040002
 ;;9002226.02101,"774,00641040021 ",.01)
 ;;00641040021
 ;;9002226.02101,"774,00641040021 ",.02)
 ;;00641040021
 ;;9002226.02101,"774,00641040025 ",.01)
 ;;00641040025
 ;;9002226.02101,"774,00641040025 ",.02)
 ;;00641040025
 ;;9002226.02101,"774,00641040064 ",.01)
 ;;00641040064
 ;;9002226.02101,"774,00641040064 ",.02)
 ;;00641040064
 ;;9002226.02101,"774,00641040125 ",.01)
 ;;00641040125
 ;;9002226.02101,"774,00641040125 ",.02)
 ;;00641040125
 ;;9002226.02101,"774,00641041002 ",.01)
 ;;00641041002
 ;;9002226.02101,"774,00641041002 ",.02)
 ;;00641041002
 ;;9002226.02101,"774,00641041025 ",.01)
 ;;00641041025
 ;;9002226.02101,"774,00641041025 ",.02)
 ;;00641041025
 ;;9002226.02101,"774,00641041064 ",.01)
 ;;00641041064
 ;;9002226.02101,"774,00641041064 ",.02)
 ;;00641041064
 ;;9002226.02101,"774,00641244041 ",.01)
 ;;00641244041
 ;;9002226.02101,"774,00641244041 ",.02)
 ;;00641244041
 ;;9002226.02101,"774,00641244045 ",.01)
 ;;00641244045
 ;;9002226.02101,"774,00641244045 ",.02)
 ;;00641244045
 ;;9002226.02101,"774,00641245041 ",.01)
 ;;00641245041
 ;;9002226.02101,"774,00641245041 ",.02)
 ;;00641245041
 ;;9002226.02101,"774,00641245045 ",.01)
 ;;00641245045
 ;;9002226.02101,"774,00641245045 ",.02)
 ;;00641245045
 ;;9002226.02101,"774,00641246041 ",.01)
 ;;00641246041
 ;;9002226.02101,"774,00641246041 ",.02)
 ;;00641246041
 ;;9002226.02101,"774,00641246045 ",.01)
 ;;00641246045
 ;;9002226.02101,"774,00641246045 ",.02)
 ;;00641246045
 ;;9002226.02101,"774,00641247041 ",.01)
 ;;00641247041
 ;;9002226.02101,"774,00641247041 ",.02)
 ;;00641247041
 ;;9002226.02101,"774,00641247045 ",.01)
 ;;00641247045
 ;;9002226.02101,"774,00641247045 ",.02)
 ;;00641247045
 ;;9002226.02101,"774,00641326209 ",.01)
 ;;00641326209
 ;;9002226.02101,"774,00641326209 ",.02)
 ;;00641326209
 ;;9002226.02101,"774,00641326403 ",.01)
 ;;00641326403
 ;;9002226.02101,"774,00641326403 ",.02)
 ;;00641326403
 ;;9002226.02101,"774,00641326503 ",.01)
 ;;00641326503
 ;;9002226.02101,"774,00641326503 ",.02)
 ;;00641326503
 ;;9002226.02101,"774,00641326603 ",.01)
 ;;00641326603
 ;;9002226.02101,"774,00641326603 ",.02)
 ;;00641326603
 ;;9002226.02101,"774,00641326703 ",.01)
 ;;00641326703
 ;;9002226.02101,"774,00641326703 ",.02)
 ;;00641326703
 ;;9002226.02101,"774,00641326803 ",.01)
 ;;00641326803
 ;;9002226.02101,"774,00641326803 ",.02)
 ;;00641326803
 ;;9002226.02101,"774,00677027521 ",.01)
 ;;00677027521
 ;;9002226.02101,"774,00677027521 ",.02)
 ;;00677027521
 ;;9002226.02101,"774,00677079301 ",.01)
 ;;00677079301
 ;;9002226.02101,"774,00677079301 ",.02)
 ;;00677079301
 ;;9002226.02101,"774,00677079401 ",.01)
 ;;00677079401
 ;;9002226.02101,"774,00677079401 ",.02)
 ;;00677079401
 ;;9002226.02101,"774,00686001101 ",.01)
 ;;00686001101
 ;;9002226.02101,"774,00686001101 ",.02)
 ;;00686001101
 ;;9002226.02101,"774,00686001105 ",.01)
 ;;00686001105
 ;;9002226.02101,"774,00686001105 ",.02)
 ;;00686001105
 ;;9002226.02101,"774,00686001910 ",.01)
 ;;00686001910
 ;;9002226.02101,"774,00686001910 ",.02)
 ;;00686001910
 ;;9002226.02101,"774,00719199310 ",.01)
 ;;00719199310
 ;;9002226.02101,"774,00719199310 ",.02)
 ;;00719199310
 ;;9002226.02101,"774,00719199313 ",.01)
 ;;00719199313
 ;;9002226.02101,"774,00719199313 ",.02)
 ;;00719199313
 ;;9002226.02101,"774,00725004401 ",.01)
 ;;00725004401
 ;;9002226.02101,"774,00725004401 ",.02)
 ;;00725004401
 ;;9002226.02101,"774,00725004410 ",.01)
 ;;00725004410
 ;;9002226.02101,"774,00725004410 ",.02)
 ;;00725004410
 ;;9002226.02101,"774,00725004501 ",.01)
 ;;00725004501
 ;;9002226.02101,"774,00725004501 ",.02)
 ;;00725004501
 ;;9002226.02101,"774,00725004510 ",.01)
 ;;00725004510
 ;;9002226.02101,"774,00725004510 ",.02)
 ;;00725004510
 ;;9002226.02101,"774,00725004601 ",.01)
 ;;00725004601
 ;;9002226.02101,"774,00725004601 ",.02)
 ;;00725004601
 ;;9002226.02101,"774,00725004610 ",.01)
 ;;00725004610
 ;;9002226.02101,"774,00725004610 ",.02)
 ;;00725004610
 ;;9002226.02101,"774,00725004701 ",.01)
 ;;00725004701
 ;;9002226.02101,"774,00725004701 ",.02)
 ;;00725004701
 ;;9002226.02101,"774,00725004710 ",.01)
 ;;00725004710
 ;;9002226.02101,"774,00725004710 ",.02)
 ;;00725004710
 ;;9002226.02101,"774,00725005001 ",.01)
 ;;00725005001
 ;;9002226.02101,"774,00725005001 ",.02)
 ;;00725005001
 ;;9002226.02101,"774,00725005010 ",.01)
 ;;00725005010
 ;;9002226.02101,"774,00725005010 ",.02)
 ;;00725005010
 ;;9002226.02101,"774,00781035207 ",.01)
 ;;00781035207
 ;;9002226.02101,"774,00781035207 ",.02)
 ;;00781035207
 ;;9002226.02101,"774,00781035208 ",.01)
 ;;00781035208
 ;;9002226.02101,"774,00781035208 ",.02)
 ;;00781035208
 ;;9002226.02101,"774,00781036306 ",.01)
 ;;00781036306
 ;;9002226.02101,"774,00781036306 ",.02)
 ;;00781036306
 ;;9002226.02101,"774,00781036307 ",.01)
 ;;00781036307
 ;;9002226.02101,"774,00781036307 ",.02)
 ;;00781036307
 ;;9002226.02101,"774,00781036308 ",.01)
 ;;00781036308
 ;;9002226.02101,"774,00781036308 ",.02)
 ;;00781036308
 ;;9002226.02101,"774,00781036406 ",.01)
 ;;00781036406
 ;;9002226.02101,"774,00781036406 ",.02)
 ;;00781036406
 ;;9002226.02101,"774,00781036407 ",.01)
 ;;00781036407
 ;;9002226.02101,"774,00781036407 ",.02)
 ;;00781036407
 ;;9002226.02101,"774,00781036408 ",.01)
 ;;00781036408
 ;;9002226.02101,"774,00781036408 ",.02)
 ;;00781036408
 ;;9002226.02101,"774,00781036607 ",.01)
 ;;00781036607
 ;;9002226.02101,"774,00781036607 ",.02)
 ;;00781036607
 ;;9002226.02101,"774,00781036608 ",.01)
 ;;00781036608
 ;;9002226.02101,"774,00781036608 ",.02)
 ;;00781036608
 ;;9002226.02101,"774,00781036907 ",.01)
 ;;00781036907
 ;;9002226.02101,"774,00781036907 ",.02)
 ;;00781036907
 ;;9002226.02101,"774,00781036908 ",.01)
 ;;00781036908
 ;;9002226.02101,"774,00781036908 ",.02)
 ;;00781036908
 ;;9002226.02101,"774,00781037704 ",.01)
 ;;00781037704
 ;;9002226.02101,"774,00781037704 ",.02)
 ;;00781037704
 ;;9002226.02101,"774,00781037706 ",.01)
 ;;00781037706
 ;;9002226.02101,"774,00781037706 ",.02)
 ;;00781037706
 ;;9002226.02101,"774,00781037707 ",.01)
 ;;00781037707
 ;;9002226.02101,"774,00781037707 ",.02)
 ;;00781037707
 ;;9002226.02101,"774,00781037708 ",.01)
 ;;00781037708
 ;;9002226.02101,"774,00781037708 ",.02)
 ;;00781037708
 ;;9002226.02101,"774,00781038107 ",.01)
 ;;00781038107
 ;;9002226.02101,"774,00781038107 ",.02)
 ;;00781038107
 ;;9002226.02101,"774,00781038108 ",.01)
 ;;00781038108
 ;;9002226.02101,"774,00781038108 ",.02)
 ;;00781038108
 ;;9002226.02101,"774,00781038607 ",.01)
 ;;00781038607
 ;;9002226.02101,"774,00781038607 ",.02)
 ;;00781038607
 ;;9002226.02101,"774,00781038608 ",.01)
 ;;00781038608
 ;;9002226.02101,"774,00781038608 ",.02)
 ;;00781038608
 ;;9002226.02101,"774,00781038707 ",.01)
 ;;00781038707
 ;;9002226.02101,"774,00781038707 ",.02)
 ;;00781038707
 ;;9002226.02101,"774,00781038708 ",.01)
 ;;00781038708
 ;;9002226.02101,"774,00781038708 ",.02)
 ;;00781038708
 ;;9002226.02101,"774,00781311963 ",.01)
 ;;00781311963
 ;;9002226.02101,"774,00781311963 ",.02)
 ;;00781311963
 ;;9002226.02101,"774,00781311964 ",.01)
 ;;00781311964
 ;;9002226.02101,"774,00781311964 ",.02)
 ;;00781311964
 ;;9002226.02101,"774,00781311966 ",.01)
 ;;00781311966
 ;;9002226.02101,"774,00781311966 ",.02)
 ;;00781311966
 ;;9002226.02101,"774,00781311968 ",.01)
 ;;00781311968
 ;;9002226.02101,"774,00781311968 ",.02)
 ;;00781311968
 ;;9002226.02101,"774,00781311969 ",.01)
 ;;00781311969
 ;;9002226.02101,"774,00781311969 ",.02)
 ;;00781311969
 ;;9002226.02101,"774,00781312168 ",.01)
 ;;00781312168
 ;;9002226.02101,"774,00781312168 ",.02)
 ;;00781312168
 ;;9002226.02101,"774,00781312169 ",.01)
 ;;00781312169
 ;;9002226.02101,"774,00781312169 ",.02)
 ;;00781312169
 ;;9002226.02101,"774,00814365046 ",.01)
 ;;00814365046
 ;;9002226.02101,"774,00814365046 ",.02)
 ;;00814365046
 ;;9002226.02101,"774,00814365540 ",.01)
 ;;00814365540
 ;;9002226.02101,"774,00814365540 ",.02)
 ;;00814365540
 ;;9002226.02101,"774,00814852114 ",.01)
 ;;00814852114
 ;;9002226.02101,"774,00814852114 ",.02)
 ;;00814852114
 ;;9002226.02101,"774,00814852214 ",.01)
 ;;00814852214
 ;;9002226.02101,"774,00814852214 ",.02)
 ;;00814852214
 ;;9002226.02101,"774,00814852230 ",.01)
 ;;00814852230
 ;;9002226.02101,"774,00814852230 ",.02)
 ;;00814852230
 ;;9002226.02101,"774,00832062500 ",.01)
 ;;00832062500
 ;;9002226.02101,"774,00832062500 ",.02)
 ;;00832062500
 ;;9002226.02101,"774,00832062600 ",.01)
 ;;00832062600
 ;;9002226.02101,"774,00832062600 ",.02)
 ;;00832062600
 ;;9002226.02101,"774,00832062700 ",.01)
 ;;00832062700
 ;;9002226.02101,"774,00832062700 ",.02)
 ;;00832062700
 ;;9002226.02101,"774,00832062710 ",.01)
 ;;00832062710
 ;;9002226.02101,"774,00832062710 ",.02)
 ;;00832062710
 ;;9002226.02101,"774,00832062725 ",.01)
 ;;00832062725
 ;;9002226.02101,"774,00832062725 ",.02)
 ;;00832062725
 ;;9002226.02101,"774,00839517530 ",.01)
 ;;00839517530
 ;;9002226.02101,"774,00839517530 ",.02)
 ;;00839517530
 ;;9002226.02101,"774,00839558930 ",.01)
 ;;00839558930
 ;;9002226.02101,"774,00839558930 ",.02)
 ;;00839558930
 ;;9002226.02101,"774,00839559025 ",.01)
 ;;00839559025
 ;;9002226.02101,"774,00839559025 ",.02)
 ;;00839559025
 ;;9002226.02101,"774,00839662606 ",.01)
 ;;00839662606
 ;;9002226.02101,"774,00839662606 ",.02)
 ;;00839662606
 ;;9002226.02101,"774,00839662706 ",.01)
 ;;00839662706
 ;;9002226.02101,"774,00839662706 ",.02)
 ;;00839662706
 ;;9002226.02101,"774,00839662806 ",.01)
 ;;00839662806
 ;;9002226.02101,"774,00839662806 ",.02)
 ;;00839662806
 ;;9002226.02101,"774,00839662906 ",.01)
 ;;00839662906
 ;;9002226.02101,"774,00839662906 ",.02)
 ;;00839662906
 ;;9002226.02101,"774,00839663006 ",.01)
 ;;00839663006
 ;;9002226.02101,"774,00839663006 ",.02)
 ;;00839663006
 ;;9002226.02101,"774,00894556001 ",.01)
 ;;00894556001
 ;;9002226.02101,"774,00894556001 ",.02)
 ;;00894556001
 ;;9002226.02101,"774,00894556002 ",.01)
 ;;00894556002
 ;;9002226.02101,"774,00894556002 ",.02)
 ;;00894556002
 ;;9002226.02101,"774,00894556501 ",.01)
 ;;00894556501
 ;;9002226.02101,"774,00894556501 ",.02)
 ;;00894556501
 ;;9002226.02101,"774,00894556502 ",.01)
 ;;00894556502
 ;;9002226.02101,"774,00894556502 ",.02)
 ;;00894556502
 ;;9002226.02101,"774,00894557001 ",.01)
 ;;00894557001
 ;;9002226.02101,"774,00894557001 ",.02)
 ;;00894557001
 ;;9002226.02101,"774,00894557002 ",.01)
 ;;00894557002
 ;;9002226.02101,"774,00894557002 ",.02)
 ;;00894557002
 ;;9002226.02101,"774,00894557601 ",.01)
 ;;00894557601
 ;;9002226.02101,"774,00894557601 ",.02)
 ;;00894557601
 ;;9002226.02101,"774,00894557602 ",.01)
 ;;00894557602
 ;;9002226.02101,"774,00894557602 ",.02)
 ;;00894557602
 ;;9002226.02101,"774,00894558001 ",.01)
 ;;00894558001
BGPM5ADB ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"846,58016038630 ",.02)
 ;;58016038630
 ;;9002226.02101,"846,58016038632 ",.01)
 ;;58016038632
 ;;9002226.02101,"846,58016038632 ",.02)
 ;;58016038632
 ;;9002226.02101,"846,58016038635 ",.01)
 ;;58016038635
 ;;9002226.02101,"846,58016038635 ",.02)
 ;;58016038635
 ;;9002226.02101,"846,58016038636 ",.01)
 ;;58016038636
 ;;9002226.02101,"846,58016038636 ",.02)
 ;;58016038636
 ;;9002226.02101,"846,58016038640 ",.01)
 ;;58016038640
 ;;9002226.02101,"846,58016038640 ",.02)
 ;;58016038640
 ;;9002226.02101,"846,58016038642 ",.01)
 ;;58016038642
 ;;9002226.02101,"846,58016038642 ",.02)
 ;;58016038642
 ;;9002226.02101,"846,58016038644 ",.01)
 ;;58016038644
 ;;9002226.02101,"846,58016038644 ",.02)
 ;;58016038644
 ;;9002226.02101,"846,58016038645 ",.01)
 ;;58016038645
 ;;9002226.02101,"846,58016038645 ",.02)
 ;;58016038645
 ;;9002226.02101,"846,58016038648 ",.01)
 ;;58016038648
 ;;9002226.02101,"846,58016038648 ",.02)
 ;;58016038648
 ;;9002226.02101,"846,58016038650 ",.01)
 ;;58016038650
 ;;9002226.02101,"846,58016038650 ",.02)
 ;;58016038650
 ;;9002226.02101,"846,58016038656 ",.01)
 ;;58016038656
 ;;9002226.02101,"846,58016038656 ",.02)
 ;;58016038656
 ;;9002226.02101,"846,58016038660 ",.01)
 ;;58016038660
 ;;9002226.02101,"846,58016038660 ",.02)
 ;;58016038660
 ;;9002226.02101,"846,58016038667 ",.01)
 ;;58016038667
 ;;9002226.02101,"846,58016038667 ",.02)
 ;;58016038667
 ;;9002226.02101,"846,58016038669 ",.01)
 ;;58016038669
 ;;9002226.02101,"846,58016038669 ",.02)
 ;;58016038669
 ;;9002226.02101,"846,58016038670 ",.01)
 ;;58016038670
 ;;9002226.02101,"846,58016038670 ",.02)
 ;;58016038670
 ;;9002226.02101,"846,58016038671 ",.01)
 ;;58016038671
 ;;9002226.02101,"846,58016038671 ",.02)
 ;;58016038671
 ;;9002226.02101,"846,58016038672 ",.01)
 ;;58016038672
 ;;9002226.02101,"846,58016038672 ",.02)
 ;;58016038672
 ;;9002226.02101,"846,58016038673 ",.01)
 ;;58016038673
 ;;9002226.02101,"846,58016038673 ",.02)
 ;;58016038673
 ;;9002226.02101,"846,58016038675 ",.01)
 ;;58016038675
 ;;9002226.02101,"846,58016038675 ",.02)
 ;;58016038675
 ;;9002226.02101,"846,58016038676 ",.01)
 ;;58016038676
 ;;9002226.02101,"846,58016038676 ",.02)
 ;;58016038676
 ;;9002226.02101,"846,58016038677 ",.01)
 ;;58016038677
 ;;9002226.02101,"846,58016038677 ",.02)
 ;;58016038677
 ;;9002226.02101,"846,58016038679 ",.01)
 ;;58016038679
 ;;9002226.02101,"846,58016038679 ",.02)
 ;;58016038679
 ;;9002226.02101,"846,58016038680 ",.01)
 ;;58016038680
 ;;9002226.02101,"846,58016038680 ",.02)
 ;;58016038680
 ;;9002226.02101,"846,58016038681 ",.01)
 ;;58016038681
 ;;9002226.02101,"846,58016038681 ",.02)
 ;;58016038681
 ;;9002226.02101,"846,58016038682 ",.01)
 ;;58016038682
 ;;9002226.02101,"846,58016038682 ",.02)
 ;;58016038682
 ;;9002226.02101,"846,58016038683 ",.01)
 ;;58016038683
 ;;9002226.02101,"846,58016038683 ",.02)
 ;;58016038683
 ;;9002226.02101,"846,58016038684 ",.01)
 ;;58016038684
 ;;9002226.02101,"846,58016038684 ",.02)
 ;;58016038684
 ;;9002226.02101,"846,58016038687 ",.01)
 ;;58016038687
 ;;9002226.02101,"846,58016038687 ",.02)
 ;;58016038687
 ;;9002226.02101,"846,58016038689 ",.01)
 ;;58016038689
 ;;9002226.02101,"846,58016038689 ",.02)
 ;;58016038689
 ;;9002226.02101,"846,58016038690 ",.01)
 ;;58016038690
 ;;9002226.02101,"846,58016038690 ",.02)
 ;;58016038690
 ;;9002226.02101,"846,58016038691 ",.01)
 ;;58016038691
 ;;9002226.02101,"846,58016038691 ",.02)
 ;;58016038691
 ;;9002226.02101,"846,58016038692 ",.01)
 ;;58016038692
 ;;9002226.02101,"846,58016038692 ",.02)
 ;;58016038692
 ;;9002226.02101,"846,58016038693 ",.01)
 ;;58016038693
 ;;9002226.02101,"846,58016038693 ",.02)
 ;;58016038693
 ;;9002226.02101,"846,58016038696 ",.01)
 ;;58016038696
 ;;9002226.02101,"846,58016038696 ",.02)
 ;;58016038696
 ;;9002226.02101,"846,58016038697 ",.01)
 ;;58016038697
 ;;9002226.02101,"846,58016038697 ",.02)
 ;;58016038697
 ;;9002226.02101,"846,58016038698 ",.01)
 ;;58016038698
 ;;9002226.02101,"846,58016038698 ",.02)
 ;;58016038698
 ;;9002226.02101,"846,58016038699 ",.01)
 ;;58016038699
 ;;9002226.02101,"846,58016038699 ",.02)
 ;;58016038699
 ;;9002226.02101,"846,58016041100 ",.01)
 ;;58016041100
 ;;9002226.02101,"846,58016041100 ",.02)
 ;;58016041100
 ;;9002226.02101,"846,58016041102 ",.01)
 ;;58016041102
 ;;9002226.02101,"846,58016041102 ",.02)
 ;;58016041102
 ;;9002226.02101,"846,58016041130 ",.01)
 ;;58016041130
 ;;9002226.02101,"846,58016041130 ",.02)
 ;;58016041130
 ;;9002226.02101,"846,58016041160 ",.01)
 ;;58016041160
 ;;9002226.02101,"846,58016041160 ",.02)
 ;;58016041160
 ;;9002226.02101,"846,58016041190 ",.01)
 ;;58016041190
 ;;9002226.02101,"846,58016041190 ",.02)
 ;;58016041190
 ;;9002226.02101,"846,58016046700 ",.01)
 ;;58016046700
 ;;9002226.02101,"846,58016046700 ",.02)
 ;;58016046700
 ;;9002226.02101,"846,58016046730 ",.01)
 ;;58016046730
 ;;9002226.02101,"846,58016046730 ",.02)
 ;;58016046730
 ;;9002226.02101,"846,58016046760 ",.01)
 ;;58016046760
 ;;9002226.02101,"846,58016046760 ",.02)
 ;;58016046760
 ;;9002226.02101,"846,58016046790 ",.01)
 ;;58016046790
 ;;9002226.02101,"846,58016046790 ",.02)
 ;;58016046790
 ;;9002226.02101,"846,58016069100 ",.01)
 ;;58016069100
 ;;9002226.02101,"846,58016069100 ",.02)
 ;;58016069100
 ;;9002226.02101,"846,58016069101 ",.01)
 ;;58016069101
 ;;9002226.02101,"846,58016069101 ",.02)
 ;;58016069101
 ;;9002226.02101,"846,58016069102 ",.01)
 ;;58016069102
 ;;9002226.02101,"846,58016069102 ",.02)
 ;;58016069102
 ;;9002226.02101,"846,58016069103 ",.01)
 ;;58016069103
 ;;9002226.02101,"846,58016069103 ",.02)
 ;;58016069103
 ;;9002226.02101,"846,58016069104 ",.01)
 ;;58016069104
 ;;9002226.02101,"846,58016069104 ",.02)
 ;;58016069104
 ;;9002226.02101,"846,58016069105 ",.01)
 ;;58016069105
 ;;9002226.02101,"846,58016069105 ",.02)
 ;;58016069105
 ;;9002226.02101,"846,58016069106 ",.01)
 ;;58016069106
 ;;9002226.02101,"846,58016069106 ",.02)
 ;;58016069106
 ;;9002226.02101,"846,58016069107 ",.01)
 ;;58016069107
 ;;9002226.02101,"846,58016069107 ",.02)
 ;;58016069107
 ;;9002226.02101,"846,58016069108 ",.01)
 ;;58016069108
 ;;9002226.02101,"846,58016069108 ",.02)
 ;;58016069108
 ;;9002226.02101,"846,58016069109 ",.01)
 ;;58016069109
 ;;9002226.02101,"846,58016069109 ",.02)
 ;;58016069109
 ;;9002226.02101,"846,58016069110 ",.01)
 ;;58016069110
 ;;9002226.02101,"846,58016069110 ",.02)
 ;;58016069110
 ;;9002226.02101,"846,58016069112 ",.01)
 ;;58016069112
 ;;9002226.02101,"846,58016069112 ",.02)
 ;;58016069112
 ;;9002226.02101,"846,58016069114 ",.01)
 ;;58016069114
 ;;9002226.02101,"846,58016069114 ",.02)
 ;;58016069114
 ;;9002226.02101,"846,58016069115 ",.01)
 ;;58016069115
 ;;9002226.02101,"846,58016069115 ",.02)
 ;;58016069115
 ;;9002226.02101,"846,58016069116 ",.01)
 ;;58016069116
 ;;9002226.02101,"846,58016069116 ",.02)
 ;;58016069116
 ;;9002226.02101,"846,58016069118 ",.01)
 ;;58016069118
 ;;9002226.02101,"846,58016069118 ",.02)
 ;;58016069118
 ;;9002226.02101,"846,58016069120 ",.01)
 ;;58016069120
 ;;9002226.02101,"846,58016069120 ",.02)
 ;;58016069120
 ;;9002226.02101,"846,58016069121 ",.01)
 ;;58016069121
 ;;9002226.02101,"846,58016069121 ",.02)
 ;;58016069121
 ;;9002226.02101,"846,58016069124 ",.01)
 ;;58016069124
 ;;9002226.02101,"846,58016069124 ",.02)
 ;;58016069124
 ;;9002226.02101,"846,58016069125 ",.01)
 ;;58016069125
 ;;9002226.02101,"846,58016069125 ",.02)
 ;;58016069125
 ;;9002226.02101,"846,58016069126 ",.01)
 ;;58016069126
 ;;9002226.02101,"846,58016069126 ",.02)
 ;;58016069126
 ;;9002226.02101,"846,58016069127 ",.01)
 ;;58016069127
 ;;9002226.02101,"846,58016069127 ",.02)
 ;;58016069127
 ;;9002226.02101,"846,58016069128 ",.01)
 ;;58016069128
 ;;9002226.02101,"846,58016069128 ",.02)
 ;;58016069128
 ;;9002226.02101,"846,58016069130 ",.01)
 ;;58016069130
 ;;9002226.02101,"846,58016069130 ",.02)
 ;;58016069130
 ;;9002226.02101,"846,58016069132 ",.01)
 ;;58016069132
 ;;9002226.02101,"846,58016069132 ",.02)
 ;;58016069132
 ;;9002226.02101,"846,58016069135 ",.01)
 ;;58016069135
 ;;9002226.02101,"846,58016069135 ",.02)
 ;;58016069135
 ;;9002226.02101,"846,58016069136 ",.01)
 ;;58016069136
 ;;9002226.02101,"846,58016069136 ",.02)
 ;;58016069136
 ;;9002226.02101,"846,58016069140 ",.01)
 ;;58016069140
 ;;9002226.02101,"846,58016069140 ",.02)
 ;;58016069140
 ;;9002226.02101,"846,58016069142 ",.01)
 ;;58016069142
 ;;9002226.02101,"846,58016069142 ",.02)
 ;;58016069142
 ;;9002226.02101,"846,58016069144 ",.01)
 ;;58016069144
 ;;9002226.02101,"846,58016069144 ",.02)
 ;;58016069144
 ;;9002226.02101,"846,58016069145 ",.01)
 ;;58016069145
 ;;9002226.02101,"846,58016069145 ",.02)
 ;;58016069145
 ;;9002226.02101,"846,58016069148 ",.01)
 ;;58016069148
 ;;9002226.02101,"846,58016069148 ",.02)
 ;;58016069148
 ;;9002226.02101,"846,58016069150 ",.01)
 ;;58016069150
 ;;9002226.02101,"846,58016069150 ",.02)
 ;;58016069150
 ;;9002226.02101,"846,58016069156 ",.01)
 ;;58016069156
 ;;9002226.02101,"846,58016069156 ",.02)
 ;;58016069156
 ;;9002226.02101,"846,58016069160 ",.01)
 ;;58016069160
 ;;9002226.02101,"846,58016069160 ",.02)
 ;;58016069160
 ;;9002226.02101,"846,58016069167 ",.01)
 ;;58016069167
 ;;9002226.02101,"846,58016069167 ",.02)
 ;;58016069167
 ;;9002226.02101,"846,58016069169 ",.01)
 ;;58016069169
 ;;9002226.02101,"846,58016069169 ",.02)
 ;;58016069169
 ;;9002226.02101,"846,58016069170 ",.01)
 ;;58016069170
 ;;9002226.02101,"846,58016069170 ",.02)
 ;;58016069170
 ;;9002226.02101,"846,58016069171 ",.01)
 ;;58016069171
 ;;9002226.02101,"846,58016069171 ",.02)
 ;;58016069171
 ;;9002226.02101,"846,58016069172 ",.01)
 ;;58016069172
 ;;9002226.02101,"846,58016069172 ",.02)
 ;;58016069172
 ;;9002226.02101,"846,58016069173 ",.01)
 ;;58016069173
 ;;9002226.02101,"846,58016069173 ",.02)
 ;;58016069173
 ;;9002226.02101,"846,58016069175 ",.01)
 ;;58016069175
 ;;9002226.02101,"846,58016069175 ",.02)
 ;;58016069175
 ;;9002226.02101,"846,58016069176 ",.01)
 ;;58016069176
 ;;9002226.02101,"846,58016069176 ",.02)
 ;;58016069176
 ;;9002226.02101,"846,58016069177 ",.01)
 ;;58016069177
 ;;9002226.02101,"846,58016069177 ",.02)
 ;;58016069177
 ;;9002226.02101,"846,58016069179 ",.01)
 ;;58016069179
 ;;9002226.02101,"846,58016069179 ",.02)
 ;;58016069179
 ;;9002226.02101,"846,58016069180 ",.01)
 ;;58016069180
 ;;9002226.02101,"846,58016069180 ",.02)
 ;;58016069180
 ;;9002226.02101,"846,58016069181 ",.01)
 ;;58016069181
 ;;9002226.02101,"846,58016069181 ",.02)
 ;;58016069181
 ;;9002226.02101,"846,58016069182 ",.01)
 ;;58016069182
 ;;9002226.02101,"846,58016069182 ",.02)
 ;;58016069182
 ;;9002226.02101,"846,58016069183 ",.01)
 ;;58016069183
 ;;9002226.02101,"846,58016069183 ",.02)
 ;;58016069183
 ;;9002226.02101,"846,58016069184 ",.01)
 ;;58016069184
 ;;9002226.02101,"846,58016069184 ",.02)
 ;;58016069184
 ;;9002226.02101,"846,58016069187 ",.01)
 ;;58016069187
 ;;9002226.02101,"846,58016069187 ",.02)
 ;;58016069187
 ;;9002226.02101,"846,58016069189 ",.01)
 ;;58016069189
 ;;9002226.02101,"846,58016069189 ",.02)
 ;;58016069189
 ;;9002226.02101,"846,58016069190 ",.01)
 ;;58016069190
 ;;9002226.02101,"846,58016069190 ",.02)
 ;;58016069190
 ;;9002226.02101,"846,58016069191 ",.01)
 ;;58016069191
 ;;9002226.02101,"846,58016069191 ",.02)
 ;;58016069191
 ;;9002226.02101,"846,58016069192 ",.01)
 ;;58016069192
 ;;9002226.02101,"846,58016069192 ",.02)
 ;;58016069192
 ;;9002226.02101,"846,58016069193 ",.01)
 ;;58016069193
 ;;9002226.02101,"846,58016069193 ",.02)
 ;;58016069193
 ;;9002226.02101,"846,58016069196 ",.01)
 ;;58016069196
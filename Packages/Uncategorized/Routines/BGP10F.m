BGP10F ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON NOV 17, 2010 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;;BGP PREGNANCY DIAGNOSES 2
 ;
 ; This routine loads Taxonomy BGP PREGNANCY DIAGNOSES 2
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"640.03 ")
 ;;1
 ;;21,"640.83 ")
 ;;2
 ;;21,"640.93 ")
 ;;3
 ;;21,"641.03 ")
 ;;4
 ;;21,"641.13 ")
 ;;5
 ;;21,"641.23 ")
 ;;6
 ;;21,"641.33 ")
 ;;7
 ;;21,"641.83 ")
 ;;8
 ;;21,"641.93 ")
 ;;9
 ;;21,"642.03 ")
 ;;10
 ;;21,"642.13 ")
 ;;11
 ;;21,"642.23 ")
 ;;12
 ;;21,"642.33 ")
 ;;13
 ;;21,"642.43 ")
 ;;14
 ;;21,"642.53 ")
 ;;15
 ;;21,"642.63 ")
 ;;16
 ;;21,"642.73 ")
 ;;17
 ;;21,"642.93 ")
 ;;18
 ;;21,"643.03 ")
 ;;19
 ;;21,"643.13 ")
 ;;20
 ;;21,"643.23 ")
 ;;21
 ;;21,"643.83 ")
 ;;22
 ;;21,"643.93 ")
 ;;23
 ;;21,"644.03 ")
 ;;24
 ;;21,"644.13 ")
 ;;25
 ;;21,"645.13 ")
 ;;26
 ;;21,"645.23 ")
 ;;27
 ;;21,"646.03 ")
 ;;28
 ;;21,"646.13 ")
 ;;29
 ;;21,"646.23 ")
 ;;30
 ;;21,"646.33 ")
 ;;31
 ;;21,"646.43 ")
 ;;32
 ;;21,"646.53 ")
 ;;33
 ;;21,"646.63 ")
 ;;34
 ;;21,"646.73 ")
 ;;35
 ;;21,"646.83 ")
 ;;36
 ;;21,"646.93 ")
 ;;37
 ;;21,"647.03 ")
 ;;38
 ;;21,"647.13 ")
 ;;39
 ;;21,"647.23 ")
 ;;40
 ;;21,"647.33 ")
 ;;41
 ;;21,"647.43 ")
 ;;42
 ;;21,"647.53 ")
 ;;43
 ;;21,"647.63 ")
 ;;44
 ;;21,"647.83 ")
 ;;45
 ;;21,"647.93 ")
 ;;46
 ;;21,"648.03 ")
 ;;47
 ;;21,"648.13 ")
 ;;48
 ;;21,"648.23 ")
 ;;49
 ;;21,"648.33 ")
 ;;50
 ;;21,"648.43 ")
 ;;51
 ;;21,"648.53 ")
 ;;52
 ;;21,"648.63 ")
 ;;53
 ;;21,"648.73 ")
 ;;54
 ;;21,"648.83 ")
 ;;55
 ;;21,"648.93 ")
 ;;56
 ;;21,"649.03 ")
 ;;57
 ;;21,"649.13 ")
 ;;58
 ;;21,"649.23 ")
 ;;59
 ;;21,"649.33 ")
 ;;60
 ;;21,"649.43 ")
 ;;61
 ;;21,"649.53 ")
 ;;62
 ;;21,"649.63 ")
 ;;63
 ;;21,"649.73 ")
 ;;64
 ;;21,"651.03 ")
 ;;65
 ;;21,"651.13 ")
 ;;66
 ;;21,"651.23 ")
 ;;67
 ;;21,"651.33 ")
 ;;68
 ;;21,"651.43 ")
 ;;69
 ;;21,"651.53 ")
 ;;70
 ;;21,"651.63 ")
 ;;71
 ;;21,"651.73 ")
 ;;72
 ;;21,"651.83 ")
 ;;73
 ;;21,"651.93 ")
 ;;74
 ;;21,"652.03 ")
 ;;75
 ;;21,"652.13 ")
 ;;76
 ;;21,"652.23 ")
 ;;77
 ;;21,"652.33 ")
 ;;78
 ;;21,"652.43 ")
 ;;79
 ;;21,"652.53 ")
 ;;80
 ;;21,"652.63 ")
 ;;81
 ;;21,"652.73 ")
 ;;82
 ;;21,"652.83 ")
 ;;83
 ;;21,"652.93 ")
 ;;84
 ;;21,"653.03 ")
 ;;85
 ;;21,"653.13 ")
 ;;86
 ;;21,"653.23 ")
 ;;87
 ;;21,"653.33 ")
 ;;88
 ;;21,"653.43 ")
 ;;89
 ;;21,"653.53 ")
 ;;90
 ;;21,"653.63 ")
 ;;91
 ;;21,"653.73 ")
 ;;92
 ;;21,"653.83 ")
 ;;93
 ;;21,"653.93 ")
 ;;94
 ;;21,"654.03 ")
 ;;95
 ;;21,"654.13 ")
 ;;96
 ;;21,"654.23 ")
 ;;97
 ;;21,"654.33 ")
 ;;98
 ;;21,"654.43 ")
 ;;99
 ;;21,"654.53 ")
 ;;100
 ;;21,"654.63 ")
 ;;101
 ;;21,"654.73 ")
 ;;102
 ;;21,"654.83 ")
 ;;103
 ;;21,"654.93 ")
 ;;104
 ;;21,"655.03 ")
 ;;105
 ;;21,"655.13 ")
 ;;106
 ;;21,"655.23 ")
 ;;107
 ;;21,"655.33 ")
 ;;108
 ;;21,"655.43 ")
 ;;109
 ;;21,"655.53 ")
 ;;110
 ;;21,"655.63 ")
 ;;111
 ;;21,"655.73 ")
 ;;112
 ;;21,"655.83 ")
 ;;113
 ;;21,"655.93 ")
 ;;114
 ;;21,"656.03 ")
 ;;115
 ;;21,"656.13 ")
 ;;116
 ;;21,"656.23 ")
 ;;117
 ;;21,"656.33 ")
 ;;118
 ;;21,"656.43 ")
 ;;119
 ;;21,"656.53 ")
 ;;120
 ;;21,"656.63 ")
 ;;121
 ;;21,"656.73 ")
 ;;122
 ;;21,"656.83 ")
 ;;123
 ;;21,"656.93 ")
 ;;124
 ;;21,"657.03 ")
 ;;125
 ;;21,"658.03 ")
 ;;126
 ;;21,"658.13 ")
 ;;127
 ;;21,"658.23 ")
 ;;128
 ;;21,"658.33 ")
 ;;129
 ;;21,"658.43 ")
 ;;130
 ;;21,"658.83 ")
 ;;131
 ;;21,"658.93 ")
 ;;132
 ;;21,"659.03 ")
 ;;133
 ;;21,"659.13 ")
 ;;134
 ;;21,"659.23 ")
 ;;135
 ;;21,"659.33 ")
 ;;136
 ;;21,"659.43 ")
 ;;137
 ;;21,"659.53 ")
 ;;138
 ;;21,"659.63 ")
 ;;139
 ;;21,"659.73 ")
 ;;140
 ;;21,"659.83 ")
 ;;141
 ;;21,"659.93 ")
 ;;142
 ;;21,"660.03 ")
 ;;143
 ;;21,"660.13 ")
 ;;144
 ;;21,"660.23 ")
 ;;145
 ;;21,"660.33 ")
 ;;146
 ;;21,"660.43 ")
 ;;147
 ;;21,"660.53 ")
 ;;148
 ;;21,"660.63 ")
 ;;149
 ;;21,"660.73 ")
 ;;150
 ;;21,"660.83 ")
 ;;151
 ;;21,"660.93 ")
 ;;152
 ;;21,"661.03 ")
 ;;153
 ;;21,"661.13 ")
 ;;154
 ;;21,"661.23 ")
 ;;155
 ;;21,"661.33 ")
 ;;156
 ;;21,"661.43 ")
 ;;157
 ;;21,"661.93 ")
 ;;158
 ;;21,"662.03 ")
 ;;159
 ;;21,"662.13 ")
 ;;160
 ;;21,"662.23 ")
 ;;161
 ;;21,"662.33 ")
 ;;162
 ;;21,"663.03 ")
 ;;163
 ;;21,"663.13 ")
 ;;164
 ;;21,"663.23 ")
 ;;165
 ;;21,"663.33 ")
 ;;166
 ;;21,"663.43 ")
 ;;167
 ;;21,"663.53 ")
 ;;168
 ;;21,"663.63 ")
 ;;169
 ;;21,"663.83 ")
 ;;170
 ;;21,"663.93 ")
 ;;171
 ;;21,"665.03 ")
 ;;172
 ;;21,"665.83 ")
 ;;173
 ;;21,"665.93 ")
 ;;174
 ;;21,"668.03 ")
 ;;175
 ;;21,"668.13 ")
 ;;176
 ;;21,"668.23 ")
 ;;177
 ;;21,"668.83 ")
 ;;178
 ;;21,"668.93 ")
 ;;179
 ;;21,"669.03 ")
 ;;180
 ;;21,"669.13 ")
 ;;181
 ;;21,"669.23 ")
 ;;182
 ;;21,"669.43 ")
 ;;183
 ;;21,"669.83 ")
 ;;184
 ;;21,"669.93 ")
 ;;185
 ;
OTHER ; OTHER ROUTINES
 D ^BGP10FB
 D ^BGP10FC
 D ^BGP10FD
 D ^BGP10FE
 D ^BGP10FF
 Q
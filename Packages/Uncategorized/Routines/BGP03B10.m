BGP03B10 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"843,482.40 ",.02)
 ;;482.40 
 ;;9002226.02101,"843,482.41 ",.01)
 ;;482.41 
 ;;9002226.02101,"843,482.41 ",.02)
 ;;482.41 
 ;;9002226.02101,"843,482.49 ",.01)
 ;;482.49 
 ;;9002226.02101,"843,482.49 ",.02)
 ;;482.49 
 ;;9002226.02101,"843,482.81 ",.01)
 ;;482.81 
 ;;9002226.02101,"843,482.81 ",.02)
 ;;482.81 
 ;;9002226.02101,"843,482.82 ",.01)
 ;;482.82 
 ;;9002226.02101,"843,482.82 ",.02)
 ;;482.82 
 ;;9002226.02101,"843,482.83 ",.01)
 ;;482.83 
 ;;9002226.02101,"843,482.83 ",.02)
 ;;482.83 
 ;;9002226.02101,"843,482.84 ",.01)
 ;;482.84 
 ;;9002226.02101,"843,482.84 ",.02)
 ;;482.84 
 ;;9002226.02101,"843,482.89 ",.01)
 ;;482.89 
 ;;9002226.02101,"843,482.89 ",.02)
 ;;482.89 
 ;;9002226.02101,"843,482.9 ",.01)
 ;;482.9 
 ;;9002226.02101,"843,482.9 ",.02)
 ;;482.9 
 ;;9002226.02101,"843,483.0 ",.01)
 ;;483.0 
 ;;9002226.02101,"843,483.0 ",.02)
 ;;483.0 
 ;;9002226.02101,"843,483.1 ",.01)
 ;;483.1 
 ;;9002226.02101,"843,483.1 ",.02)
 ;;483.1 
 ;;9002226.02101,"843,483.8 ",.01)
 ;;483.8 
 ;;9002226.02101,"843,483.8 ",.02)
 ;;483.8 
 ;;9002226.02101,"843,484.1 ",.01)
 ;;484.1 
 ;;9002226.02101,"843,484.1 ",.02)
 ;;484.1 
 ;;9002226.02101,"843,484.3 ",.01)
 ;;484.3 
 ;;9002226.02101,"843,484.3 ",.02)
 ;;484.3 
 ;;9002226.02101,"843,484.5 ",.01)
 ;;484.5 
 ;;9002226.02101,"843,484.5 ",.02)
 ;;484.5 
 ;;9002226.02101,"843,484.6 ",.01)
 ;;484.6 
 ;;9002226.02101,"843,484.6 ",.02)
 ;;484.6 
 ;;9002226.02101,"843,484.7 ",.01)
 ;;484.7 
 ;;9002226.02101,"843,484.7 ",.02)
 ;;484.7 
 ;;9002226.02101,"843,484.8 ",.01)
 ;;484.8 
 ;;9002226.02101,"843,484.8 ",.02)
 ;;484.8 
 ;;9002226.02101,"843,485 ",.01)
 ;;485 
 ;;9002226.02101,"843,485 ",.02)
 ;;485 
 ;;9002226.02101,"843,486 ",.01)
 ;;486 
 ;;9002226.02101,"843,486 ",.02)
 ;;486 
 ;;9002226.02101,"843,487.0 ",.01)
 ;;487.0 
 ;;9002226.02101,"843,487.0 ",.02)
 ;;487.0 
 ;;9002226.02101,"843,487.1 ",.01)
 ;;487.1 
 ;;9002226.02101,"843,487.1 ",.02)
 ;;487.1 
 ;;9002226.02101,"843,487.8 ",.01)
 ;;487.8 
 ;;9002226.02101,"843,487.8 ",.02)
 ;;487.8 
 ;;9002226.02101,"843,490 ",.01)
 ;;490 
 ;;9002226.02101,"843,490 ",.02)
 ;;490 
 ;;9002226.02101,"843,491.0 ",.01)
 ;;491.0 
 ;;9002226.02101,"843,491.0 ",.02)
 ;;491.0 
 ;;9002226.02101,"843,491.1 ",.01)
 ;;491.1 
 ;;9002226.02101,"843,491.1 ",.02)
 ;;491.1 
 ;;9002226.02101,"843,491.20 ",.01)
 ;;491.20 
 ;;9002226.02101,"843,491.20 ",.02)
 ;;491.20 
 ;;9002226.02101,"843,491.21 ",.01)
 ;;491.21 
 ;;9002226.02101,"843,491.21 ",.02)
 ;;491.21 
 ;;9002226.02101,"843,491.22 ",.01)
 ;;491.22 
 ;;9002226.02101,"843,491.22 ",.02)
 ;;491.22 
 ;;9002226.02101,"843,491.8 ",.01)
 ;;491.8 
 ;;9002226.02101,"843,491.8 ",.02)
 ;;491.8 
 ;;9002226.02101,"843,491.9 ",.01)
 ;;491.9 
 ;;9002226.02101,"843,491.9 ",.02)
 ;;491.9 
 ;;9002226.02101,"843,510.0 ",.01)
 ;;510.0 
 ;;9002226.02101,"843,510.0 ",.02)
 ;;510.0 
 ;;9002226.02101,"843,510.9 ",.01)
 ;;510.9 
 ;;9002226.02101,"843,510.9 ",.02)
 ;;510.9 
 ;;9002226.02101,"843,511.0 ",.01)
 ;;511.0 
 ;;9002226.02101,"843,511.0 ",.02)
 ;;511.0 
 ;;9002226.02101,"843,511.1 ",.01)
 ;;511.1 
 ;;9002226.02101,"843,511.1 ",.02)
 ;;511.1 
 ;;9002226.02101,"843,511.8 ",.01)
 ;;511.8 
 ;;9002226.02101,"843,511.8 ",.02)
 ;;511.8 
 ;;9002226.02101,"843,511.9 ",.01)
 ;;511.9 
 ;;9002226.02101,"843,511.9 ",.02)
 ;;511.9 
 ;;9002226.02101,"843,513.0 ",.01)
 ;;513.0 
 ;;9002226.02101,"843,513.0 ",.02)
 ;;513.0 
 ;;9002226.02101,"843,513.1 ",.01)
 ;;513.1 
 ;;9002226.02101,"843,513.1 ",.02)
 ;;513.1 
 ;;9002226.02101,"843,540.0 ",.01)
 ;;540.0 
 ;;9002226.02101,"843,540.0 ",.02)
 ;;540.0 
 ;;9002226.02101,"843,540.1 ",.01)
 ;;540.1 
 ;;9002226.02101,"843,540.1 ",.02)
 ;;540.1 
 ;;9002226.02101,"843,540.9 ",.01)
 ;;540.9 
 ;;9002226.02101,"843,540.9 ",.02)
 ;;540.9 
 ;;9002226.02101,"843,541 ",.01)
 ;;541 
 ;;9002226.02101,"843,541 ",.02)
 ;;541 
 ;;9002226.02101,"843,542 ",.01)
 ;;542 
 ;;9002226.02101,"843,542 ",.02)
 ;;542 
 ;;9002226.02101,"843,562.01 ",.01)
 ;;562.01 
 ;;9002226.02101,"843,562.01 ",.02)
 ;;562.01 
 ;;9002226.02101,"843,562.11 ",.01)
 ;;562.11 
 ;;9002226.02101,"843,562.11 ",.02)
 ;;562.11 
 ;;9002226.02101,"843,562.13 ",.01)
 ;;562.13 
 ;;9002226.02101,"843,562.13 ",.02)
 ;;562.13 
 ;;9002226.02101,"843,566 ",.01)
 ;;566 
 ;;9002226.02101,"843,566 ",.02)
 ;;566 
 ;;9002226.02101,"843,567.21 ",.01)
 ;;567.21 
 ;;9002226.02101,"843,567.21 ",.02)
 ;;567.21 
 ;;9002226.02101,"843,567.22 ",.01)
 ;;567.22 
 ;;9002226.02101,"843,567.22 ",.02)
 ;;567.22 
 ;;9002226.02101,"843,567.23 ",.01)
 ;;567.23 
 ;;9002226.02101,"843,567.23 ",.02)
 ;;567.23 
 ;;9002226.02101,"843,567.29 ",.01)
 ;;567.29 
 ;;9002226.02101,"843,567.29 ",.02)
 ;;567.29 
 ;;9002226.02101,"843,567.31 ",.01)
 ;;567.31 
 ;;9002226.02101,"843,567.31 ",.02)
 ;;567.31 
 ;;9002226.02101,"843,567.38 ",.01)
 ;;567.38 
 ;;9002226.02101,"843,567.38 ",.02)
 ;;567.38 
 ;;9002226.02101,"843,567.39 ",.01)
 ;;567.39 
 ;;9002226.02101,"843,567.39 ",.02)
 ;;567.39 
 ;;9002226.02101,"843,567.81 ",.01)
 ;;567.81 
 ;;9002226.02101,"843,567.81 ",.02)
 ;;567.81 
 ;;9002226.02101,"843,567.82 ",.01)
 ;;567.82 
 ;;9002226.02101,"843,567.82 ",.02)
 ;;567.82 
 ;;9002226.02101,"843,567.89 ",.01)
 ;;567.89 
 ;;9002226.02101,"843,567.89 ",.02)
 ;;567.89 
 ;;9002226.02101,"843,567.9 ",.01)
 ;;567.9 
 ;;9002226.02101,"843,567.9 ",.02)
 ;;567.9 
 ;;9002226.02101,"843,569.5 ",.01)
 ;;569.5 
 ;;9002226.02101,"843,569.5 ",.02)
 ;;569.5 
 ;;9002226.02101,"843,569.61 ",.01)
 ;;569.61 
 ;;9002226.02101,"843,569.61 ",.02)
 ;;569.61 
 ;;9002226.02101,"843,575.0 ",.01)
 ;;575.0 
 ;;9002226.02101,"843,575.0 ",.02)
 ;;575.0 
 ;;9002226.02101,"843,590.00 ",.01)
 ;;590.00 
 ;;9002226.02101,"843,590.00 ",.02)
 ;;590.00 
 ;;9002226.02101,"843,590.01 ",.01)
 ;;590.01 
 ;;9002226.02101,"843,590.01 ",.02)
 ;;590.01 
 ;;9002226.02101,"843,590.10 ",.01)
 ;;590.10 
 ;;9002226.02101,"843,590.10 ",.02)
 ;;590.10 
 ;;9002226.02101,"843,590.11 ",.01)
 ;;590.11 
 ;;9002226.02101,"843,590.11 ",.02)
 ;;590.11 
 ;;9002226.02101,"843,590.2 ",.01)
 ;;590.2 
 ;;9002226.02101,"843,590.2 ",.02)
 ;;590.2 
 ;;9002226.02101,"843,590.3 ",.01)
 ;;590.3 
 ;;9002226.02101,"843,590.3 ",.02)
 ;;590.3 
 ;;9002226.02101,"843,590.80 ",.01)
 ;;590.80 
 ;;9002226.02101,"843,590.80 ",.02)
 ;;590.80 
 ;;9002226.02101,"843,590.81 ",.01)
 ;;590.81 
 ;;9002226.02101,"843,590.81 ",.02)
 ;;590.81 
 ;;9002226.02101,"843,590.9 ",.01)
 ;;590.9 
 ;;9002226.02101,"843,590.9 ",.02)
 ;;590.9 
 ;;9002226.02101,"843,595.0 ",.01)
 ;;595.0 
 ;;9002226.02101,"843,595.0 ",.02)
 ;;595.0 
 ;;9002226.02101,"843,599.0 ",.01)
 ;;599.0 
 ;;9002226.02101,"843,599.0 ",.02)
 ;;599.0 
 ;;9002226.02101,"843,601.0 ",.01)
 ;;601.0 
 ;;9002226.02101,"843,601.0 ",.02)
 ;;601.0 
 ;;9002226.02101,"843,601.1 ",.01)
 ;;601.1 
 ;;9002226.02101,"843,601.1 ",.02)
 ;;601.1 
 ;;9002226.02101,"843,601.2 ",.01)
 ;;601.2 
 ;;9002226.02101,"843,601.2 ",.02)
 ;;601.2 
 ;;9002226.02101,"843,601.3 ",.01)
 ;;601.3 
 ;;9002226.02101,"843,601.3 ",.02)
 ;;601.3 
 ;;9002226.02101,"843,601.4 ",.01)
 ;;601.4 
 ;;9002226.02101,"843,601.4 ",.02)
 ;;601.4 
 ;;9002226.02101,"843,601.8 ",.01)
 ;;601.8 
 ;;9002226.02101,"843,601.8 ",.02)
 ;;601.8 
 ;;9002226.02101,"843,601.9 ",.01)
 ;;601.9 
 ;;9002226.02101,"843,601.9 ",.02)
 ;;601.9 
 ;;9002226.02101,"843,608.83 ",.01)
 ;;608.83 
 ;;9002226.02101,"843,608.83 ",.02)
 ;;608.83 
 ;;9002226.02101,"843,614.0 ",.01)
 ;;614.0 
 ;;9002226.02101,"843,614.0 ",.02)
 ;;614.9 
 ;;9002226.02101,"843,616.0 ",.01)
 ;;616.0 
 ;;9002226.02101,"843,616.0 ",.02)
 ;;616.0 
 ;;9002226.02101,"843,616.10 ",.01)
 ;;616.10 
 ;;9002226.02101,"843,616.10 ",.02)
 ;;616.10 
 ;;9002226.02101,"843,616.11 ",.01)
 ;;616.11 
 ;;9002226.02101,"843,616.11 ",.02)
 ;;616.11 
 ;;9002226.02101,"843,616.2 ",.01)
 ;;616.2 
 ;;9002226.02101,"843,616.2 ",.02)
 ;;616.2 
 ;;9002226.02101,"843,616.3 ",.01)
 ;;616.3 
 ;;9002226.02101,"843,616.3 ",.02)
 ;;616.3 
 ;;9002226.02101,"843,616.4 ",.01)
 ;;616.4 
 ;;9002226.02101,"843,616.4 ",.02)
 ;;616.4 
 ;;9002226.02101,"843,639.0 ",.01)
 ;;639.0 
 ;;9002226.02101,"843,639.0 ",.02)
 ;;639.0 
 ;;9002226.02101,"843,646.60 ",.01)
 ;;646.60 
 ;;9002226.02101,"843,646.60 ",.02)
 ;;646.60 
 ;;9002226.02101,"843,646.61 ",.01)
 ;;646.61 
 ;;9002226.02101,"843,646.61 ",.02)
 ;;646.61 
 ;;9002226.02101,"843,646.62 ",.01)
 ;;646.62 
 ;;9002226.02101,"843,646.62 ",.02)
 ;;646.62 
 ;;9002226.02101,"843,646.63 ",.01)
 ;;646.63 
 ;;9002226.02101,"843,646.63 ",.02)
 ;;646.63 
 ;;9002226.02101,"843,646.64 ",.01)
 ;;646.64 
 ;;9002226.02101,"843,646.64 ",.02)
 ;;646.64 
 ;;9002226.02101,"843,670.00 ",.01)
 ;;670.00 
 ;;9002226.02101,"843,670.00 ",.02)
 ;;670.00 
 ;;9002226.02101,"843,670.02 ",.01)
 ;;670.02 
 ;;9002226.02101,"843,670.02 ",.02)
 ;;670.02 
 ;;9002226.02101,"843,670.04 ",.01)
 ;;670.04 
 ;;9002226.02101,"843,670.04 ",.02)
 ;;670.04 
 ;;9002226.02101,"843,674.30 ",.01)
 ;;674.30 
 ;;9002226.02101,"843,674.30 ",.02)
 ;;674.30 
 ;;9002226.02101,"843,674.32 ",.01)
 ;;674.32 
 ;;9002226.02101,"843,674.32 ",.02)
 ;;674.32 
 ;;9002226.02101,"843,674.34 ",.01)
 ;;674.34 
 ;;9002226.02101,"843,674.34 ",.02)
 ;;674.34 
 ;;9002226.02101,"843,680.0 ",.01)
 ;;680.0 
 ;;9002226.02101,"843,680.0 ",.02)
 ;;680.9 
 ;;9002226.02101,"843,681.00 ",.01)
 ;;681.00 
 ;;9002226.02101,"843,681.00 ",.02)
 ;;681.9 
 ;;9002226.02101,"843,682.0 ",.01)
 ;;682.0 
 ;;9002226.02101,"843,682.0 ",.02)
 ;;682.9 
 ;;9002226.02101,"843,683 ",.01)
 ;;683 
 ;;9002226.02101,"843,683 ",.02)
 ;;683 
 ;;9002226.02101,"843,684 ",.01)
 ;;684 
 ;;9002226.02101,"843,684 ",.02)
 ;;684 
 ;;9002226.02101,"843,685.0 ",.01)
 ;;685.0 
 ;;9002226.02101,"843,685.0 ",.02)
 ;;685.0 
 ;;9002226.02101,"843,685.1 ",.01)
 ;;685.1 
 ;;9002226.02101,"843,685.1 ",.02)
 ;;685.1 
 ;;9002226.02101,"843,686.0 ",.01)
 ;;686.0 
 ;;9002226.02101,"843,686.0 ",.02)
 ;;686.9 
 ;;9002226.02101,"843,711.90 ",.01)
 ;;711.90 
 ;;9002226.02101,"843,711.90 ",.02)
 ;;711.99 
 ;;9002226.02101,"843,730.00 ",.01)
 ;;730.00 
 ;;9002226.02101,"843,730.00 ",.02)
 ;;730.99 
 ;;9002226.02101,"843,785.52 ",.01)
 ;;785.52 
 ;;9002226.02101,"843,785.52 ",.02)
 ;;785.52 
 ;;9002226.02101,"843,785.59 ",.01)
 ;;785.59 
 ;;9002226.02101,"843,785.59 ",.02)
 ;;785.59 
 ;;9002226.02101,"843,790.7 ",.01)
 ;;790.7 
 ;;9002226.02101,"843,790.7 ",.02)
 ;;790.7 
 ;;9002226.02101,"843,996.6 ",.01)
 ;;996.6 
 ;;9002226.02101,"843,996.6 ",.02)
 ;;996.69 
 ;;9002226.02101,"843,998.51 ",.01)
 ;;998.51 
 ;;9002226.02101,"843,998.51 ",.02)
 ;;998.51 
 ;;9002226.02101,"843,998.59 ",.01)
 ;;998.59 
 ;;9002226.02101,"843,998.59 ",.02)
 ;;998.59 
 ;;
 ;;3148
 ;;
 ;;897
 ;;
 ;;3191
 ;;
 ;;3196
 ;;
 ;;3197
 ;;
 ;;3149
 ;;
 ;;3150
 ;;
 ;;3151
 ;;
 ;;3208
 ;;
 ;;3209
 ;;
 ;;3435
 ;;
 ;;3436
 ;;
 ;;584
 ;;
 ;;583
 ;;
 ;;2440
 ;;
 ;;2091
 ;;
 ;;2092
 ;;
 ;;2093
 ;;
 ;;2094
 ;;
 ;;2096
 ;;
 ;;2097
 ;;
 ;;2098
 ;;
 ;;2095
 ;;
 ;;3314
 ;;
 ;;3315
 ;;
 ;;3316
 ;;
 ;;300
 ;;
 ;;298
 ;;
 ;;299
 ;;
 ;;301
 ;;
 ;;3446
 ;;
 ;;3447
 ;;
 ;;3448
 ;;
 ;;3449
 ;;
 ;;3450
 ;;
 ;;3451
 ;;
 ;;3453
 ;;
 ;;3452
 ;;
 ;;296
 ;;
 ;;261
 ;;
 ;;262
 ;;
 ;;263
 ;;
 ;;1223
 ;;
 ;;1224
 ;;
 ;;302
 ;;
 ;;1084
 ;;
 ;;2089
 ;;
 ;;2090
 ;;
 ;;535
 ;;
 ;;536
 ;;
 ;;571
 ;;
 ;;572
 ;;
 ;;2527
 ;;
 ;;58
 ;;
 ;;60
 ;;
 ;;61
 ;;
 ;;63
 ;;
 ;;59
 ;;
 ;;62
 ;;
 ;;1524
 ;;
 ;;1525
 ;;
 ;;826
 ;;
 ;;828
 ;;
 ;;824
 ;;
 ;;825
 ;;
 ;;827
 ;;
 ;;829
 ;;
 ;;2553
 ;;
 ;;2554
 ;;
 ;;2555
 ;;
 ;;2556
 ;;
 ;;2557
 ;;
 ;;2558
 ;;
 ;;2559
 ;;
 ;;2560
 ;;
 ;;844
 ;;
 ;;2985
 ;;
 ;;2986
 ;;
 ;;2987
 ;;
 ;;2988
 ;;
 ;;2989
 ;;
 ;;2990
 ;;
 ;;1581
 ;;
 ;;1582
 ;;
 ;;3401
 ;;
 ;;3402
 ;;
 ;;3400
 ;;
 ;;1374
 ;;
 ;;1375
 ;;
 ;;1376
 ;;
 ;;392
 ;;
 ;;3234
 ;;
 ;;3235
 ;;
 ;;3
 ;;
 ;;4
 ;;
 ;;2911
 ;;
 ;;2912
 ;;
 ;;2913
 ;;
 ;;2914
 ;;
 ;;1115
 ;;
 ;;1116
 ;;
 ;;83
 ;;
 ;;395
 ;;
 ;;393
 ;;
 ;;2371
 ;;
 ;;2372
 ;;
 ;;2373
 ;;
 ;;394
 ;;
 ;;391
 ;;
 ;;1053
 ;;
 ;;2996
 ;;
 ;;2997
 ;;
 ;;2995
 ;;
 ;;1754
 ;;
 ;;611
 ;;
 ;;613
 ;;
 ;;614
 ;;
 ;;616
 ;;
 ;;1109
 ;;
 ;;1110
 ;;
 ;;1111
 ;;
 ;;1112
 ;;
 ;;1113
 ;;
 ;;1114
 ;;
 ;;1538
 ;;
 ;;3229
 ;;
 ;;3230
 ;;
 ;;3231
 ;;
 ;;612
 ;;
 ;;615
 ;;
 ;;1752
 ;;
 ;;1753
 ;;
 ;;3364
 ;;
 ;;3363
 ;;
 ;;2490
 ;;
 ;;2491
 ;;
 ;;345
 ;;
 ;;346
 ;;
 ;;347
 ;;
 ;;343
 ;;
 ;;344
 ;;
 ;;3225
 ;;
 ;;3226
 ;;
 ;;1105
 ;;
 ;;1106
 ;;
 ;;1107
 ;;
 ;;1108
 ;;
 ;;600
 ;;
 ;;601
 ;;
 ;;599
 ;;
 ;;1698
 ;;
 ;;1699
 ;;
 ;;1700
 ;;
 ;;1701
 ;;
 ;;1702
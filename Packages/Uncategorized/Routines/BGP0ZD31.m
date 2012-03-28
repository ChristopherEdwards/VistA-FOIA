BGP0ZD31 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"976,58016-0314-15 ",.02)
 ;;58016-0314-15
 ;;9002226.02101,"976,58016-0314-20 ",.01)
 ;;58016-0314-20
 ;;9002226.02101,"976,58016-0314-20 ",.02)
 ;;58016-0314-20
 ;;9002226.02101,"976,58016-0314-21 ",.01)
 ;;58016-0314-21
 ;;9002226.02101,"976,58016-0314-21 ",.02)
 ;;58016-0314-21
 ;;9002226.02101,"976,58016-0314-24 ",.01)
 ;;58016-0314-24
 ;;9002226.02101,"976,58016-0314-24 ",.02)
 ;;58016-0314-24
 ;;9002226.02101,"976,58016-0314-28 ",.01)
 ;;58016-0314-28
 ;;9002226.02101,"976,58016-0314-28 ",.02)
 ;;58016-0314-28
 ;;9002226.02101,"976,58016-0314-30 ",.01)
 ;;58016-0314-30
 ;;9002226.02101,"976,58016-0314-30 ",.02)
 ;;58016-0314-30
 ;;9002226.02101,"976,58016-0314-40 ",.01)
 ;;58016-0314-40
 ;;9002226.02101,"976,58016-0314-40 ",.02)
 ;;58016-0314-40
 ;;9002226.02101,"976,58016-0314-60 ",.01)
 ;;58016-0314-60
 ;;9002226.02101,"976,58016-0314-60 ",.02)
 ;;58016-0314-60
 ;;9002226.02101,"976,58016-0314-73 ",.01)
 ;;58016-0314-73
 ;;9002226.02101,"976,58016-0314-73 ",.02)
 ;;58016-0314-73
 ;;9002226.02101,"976,58016-0314-89 ",.01)
 ;;58016-0314-89
 ;;9002226.02101,"976,58016-0314-89 ",.02)
 ;;58016-0314-89
 ;;9002226.02101,"976,58016-0321-00 ",.01)
 ;;58016-0321-00
 ;;9002226.02101,"976,58016-0321-00 ",.02)
 ;;58016-0321-00
 ;;9002226.02101,"976,58016-0321-02 ",.01)
 ;;58016-0321-02
 ;;9002226.02101,"976,58016-0321-02 ",.02)
 ;;58016-0321-02
 ;;9002226.02101,"976,58016-0321-03 ",.01)
 ;;58016-0321-03
 ;;9002226.02101,"976,58016-0321-03 ",.02)
 ;;58016-0321-03
 ;;9002226.02101,"976,58016-0321-10 ",.01)
 ;;58016-0321-10
 ;;9002226.02101,"976,58016-0321-10 ",.02)
 ;;58016-0321-10
 ;;9002226.02101,"976,58016-0321-12 ",.01)
 ;;58016-0321-12
 ;;9002226.02101,"976,58016-0321-12 ",.02)
 ;;58016-0321-12
 ;;9002226.02101,"976,58016-0321-14 ",.01)
 ;;58016-0321-14
 ;;9002226.02101,"976,58016-0321-14 ",.02)
 ;;58016-0321-14
 ;;9002226.02101,"976,58016-0321-15 ",.01)
 ;;58016-0321-15
 ;;9002226.02101,"976,58016-0321-15 ",.02)
 ;;58016-0321-15
 ;;9002226.02101,"976,58016-0321-20 ",.01)
 ;;58016-0321-20
 ;;9002226.02101,"976,58016-0321-20 ",.02)
 ;;58016-0321-20
 ;;9002226.02101,"976,58016-0321-24 ",.01)
 ;;58016-0321-24
 ;;9002226.02101,"976,58016-0321-24 ",.02)
 ;;58016-0321-24
 ;;9002226.02101,"976,58016-0321-28 ",.01)
 ;;58016-0321-28
 ;;9002226.02101,"976,58016-0321-28 ",.02)
 ;;58016-0321-28
 ;;9002226.02101,"976,58016-0321-30 ",.01)
 ;;58016-0321-30
 ;;9002226.02101,"976,58016-0321-30 ",.02)
 ;;58016-0321-30
 ;;9002226.02101,"976,58016-0321-40 ",.01)
 ;;58016-0321-40
 ;;9002226.02101,"976,58016-0321-40 ",.02)
 ;;58016-0321-40
 ;;9002226.02101,"976,58016-0321-42 ",.01)
 ;;58016-0321-42
 ;;9002226.02101,"976,58016-0321-42 ",.02)
 ;;58016-0321-42
 ;;9002226.02101,"976,58016-0321-56 ",.01)
 ;;58016-0321-56
 ;;9002226.02101,"976,58016-0321-56 ",.02)
 ;;58016-0321-56
 ;;9002226.02101,"976,58016-0321-60 ",.01)
 ;;58016-0321-60
 ;;9002226.02101,"976,58016-0321-60 ",.02)
 ;;58016-0321-60
 ;;9002226.02101,"976,58016-0321-73 ",.01)
 ;;58016-0321-73
 ;;9002226.02101,"976,58016-0321-73 ",.02)
 ;;58016-0321-73
 ;;9002226.02101,"976,58016-0321-89 ",.01)
 ;;58016-0321-89
 ;;9002226.02101,"976,58016-0321-89 ",.02)
 ;;58016-0321-89
 ;;9002226.02101,"976,58016-0321-90 ",.01)
 ;;58016-0321-90
 ;;9002226.02101,"976,58016-0321-90 ",.02)
 ;;58016-0321-90
 ;;9002226.02101,"976,58016-0340-00 ",.01)
 ;;58016-0340-00
 ;;9002226.02101,"976,58016-0340-00 ",.02)
 ;;58016-0340-00
 ;;9002226.02101,"976,58016-0340-02 ",.01)
 ;;58016-0340-02
 ;;9002226.02101,"976,58016-0340-02 ",.02)
 ;;58016-0340-02
 ;;9002226.02101,"976,58016-0340-03 ",.01)
 ;;58016-0340-03
 ;;9002226.02101,"976,58016-0340-03 ",.02)
 ;;58016-0340-03
 ;;9002226.02101,"976,58016-0340-10 ",.01)
 ;;58016-0340-10
 ;;9002226.02101,"976,58016-0340-10 ",.02)
 ;;58016-0340-10
 ;;9002226.02101,"976,58016-0340-15 ",.01)
 ;;58016-0340-15
 ;;9002226.02101,"976,58016-0340-15 ",.02)
 ;;58016-0340-15
 ;;9002226.02101,"976,58016-0340-20 ",.01)
 ;;58016-0340-20
 ;;9002226.02101,"976,58016-0340-20 ",.02)
 ;;58016-0340-20
 ;;9002226.02101,"976,58016-0340-28 ",.01)
 ;;58016-0340-28
 ;;9002226.02101,"976,58016-0340-28 ",.02)
 ;;58016-0340-28
 ;;9002226.02101,"976,58016-0340-30 ",.01)
 ;;58016-0340-30
 ;;9002226.02101,"976,58016-0340-30 ",.02)
 ;;58016-0340-30
 ;;9002226.02101,"976,58016-0340-40 ",.01)
 ;;58016-0340-40
 ;;9002226.02101,"976,58016-0340-40 ",.02)
 ;;58016-0340-40
 ;;9002226.02101,"976,58016-0340-73 ",.01)
 ;;58016-0340-73
 ;;9002226.02101,"976,58016-0340-73 ",.02)
 ;;58016-0340-73
 ;;9002226.02101,"976,58016-0340-89 ",.01)
 ;;58016-0340-89
 ;;9002226.02101,"976,58016-0340-89 ",.02)
 ;;58016-0340-89
 ;;9002226.02101,"976,58016-0372-00 ",.01)
 ;;58016-0372-00
 ;;9002226.02101,"976,58016-0372-00 ",.02)
 ;;58016-0372-00
 ;;9002226.02101,"976,58016-0372-20 ",.01)
 ;;58016-0372-20
 ;;9002226.02101,"976,58016-0372-20 ",.02)
 ;;58016-0372-20
 ;;9002226.02101,"976,58016-0372-30 ",.01)
 ;;58016-0372-30
 ;;9002226.02101,"976,58016-0372-30 ",.02)
 ;;58016-0372-30
 ;;9002226.02101,"976,58016-0372-40 ",.01)
 ;;58016-0372-40
 ;;9002226.02101,"976,58016-0372-40 ",.02)
 ;;58016-0372-40
 ;;9002226.02101,"976,58016-0372-60 ",.01)
 ;;58016-0372-60
 ;;9002226.02101,"976,58016-0372-60 ",.02)
 ;;58016-0372-60
 ;;9002226.02101,"976,58016-0372-84 ",.01)
 ;;58016-0372-84
 ;;9002226.02101,"976,58016-0372-84 ",.02)
 ;;58016-0372-84
 ;;9002226.02101,"976,58016-0372-90 ",.01)
 ;;58016-0372-90
 ;;9002226.02101,"976,58016-0372-90 ",.02)
 ;;58016-0372-90
 ;;9002226.02101,"976,58016-0375-00 ",.01)
 ;;58016-0375-00
 ;;9002226.02101,"976,58016-0375-00 ",.02)
 ;;58016-0375-00
 ;;9002226.02101,"976,58016-0375-14 ",.01)
 ;;58016-0375-14
 ;;9002226.02101,"976,58016-0375-14 ",.02)
 ;;58016-0375-14
 ;;9002226.02101,"976,58016-0375-20 ",.01)
 ;;58016-0375-20
 ;;9002226.02101,"976,58016-0375-20 ",.02)
 ;;58016-0375-20
 ;;9002226.02101,"976,58016-0375-21 ",.01)
 ;;58016-0375-21
 ;;9002226.02101,"976,58016-0375-21 ",.02)
 ;;58016-0375-21
 ;;9002226.02101,"976,58016-0375-28 ",.01)
 ;;58016-0375-28
 ;;9002226.02101,"976,58016-0375-28 ",.02)
 ;;58016-0375-28
 ;;9002226.02101,"976,58016-0375-30 ",.01)
 ;;58016-0375-30
 ;;9002226.02101,"976,58016-0375-30 ",.02)
 ;;58016-0375-30
 ;;9002226.02101,"976,58016-0375-40 ",.01)
 ;;58016-0375-40
 ;;9002226.02101,"976,58016-0375-40 ",.02)
 ;;58016-0375-40
 ;;9002226.02101,"976,58016-0375-60 ",.01)
 ;;58016-0375-60
 ;;9002226.02101,"976,58016-0375-60 ",.02)
 ;;58016-0375-60
 ;;9002226.02101,"976,58016-0375-90 ",.01)
 ;;58016-0375-90
 ;;9002226.02101,"976,58016-0375-90 ",.02)
 ;;58016-0375-90
 ;;9002226.02101,"976,58016-0380-00 ",.01)
 ;;58016-0380-00
 ;;9002226.02101,"976,58016-0380-00 ",.02)
 ;;58016-0380-00
 ;;9002226.02101,"976,58016-0380-10 ",.01)
 ;;58016-0380-10
 ;;9002226.02101,"976,58016-0380-10 ",.02)
 ;;58016-0380-10
 ;;9002226.02101,"976,58016-0380-12 ",.01)
 ;;58016-0380-12
 ;;9002226.02101,"976,58016-0380-12 ",.02)
 ;;58016-0380-12
 ;;9002226.02101,"976,58016-0380-14 ",.01)
 ;;58016-0380-14
 ;;9002226.02101,"976,58016-0380-14 ",.02)
 ;;58016-0380-14
 ;;9002226.02101,"976,58016-0380-15 ",.01)
 ;;58016-0380-15
 ;;9002226.02101,"976,58016-0380-15 ",.02)
 ;;58016-0380-15
 ;;9002226.02101,"976,58016-0380-20 ",.01)
 ;;58016-0380-20
 ;;9002226.02101,"976,58016-0380-20 ",.02)
 ;;58016-0380-20
 ;;9002226.02101,"976,58016-0380-21 ",.01)
 ;;58016-0380-21
 ;;9002226.02101,"976,58016-0380-21 ",.02)
 ;;58016-0380-21
 ;;9002226.02101,"976,58016-0380-24 ",.01)
 ;;58016-0380-24
 ;;9002226.02101,"976,58016-0380-24 ",.02)
 ;;58016-0380-24
 ;;9002226.02101,"976,58016-0380-28 ",.01)
 ;;58016-0380-28
 ;;9002226.02101,"976,58016-0380-28 ",.02)
 ;;58016-0380-28
 ;;9002226.02101,"976,58016-0380-30 ",.01)
 ;;58016-0380-30
 ;;9002226.02101,"976,58016-0380-30 ",.02)
 ;;58016-0380-30
 ;;9002226.02101,"976,58016-0380-40 ",.01)
 ;;58016-0380-40
 ;;9002226.02101,"976,58016-0380-40 ",.02)
 ;;58016-0380-40
 ;;9002226.02101,"976,58016-0380-50 ",.01)
 ;;58016-0380-50
 ;;9002226.02101,"976,58016-0380-50 ",.02)
 ;;58016-0380-50
 ;;9002226.02101,"976,58016-0380-60 ",.01)
 ;;58016-0380-60
 ;;9002226.02101,"976,58016-0380-60 ",.02)
 ;;58016-0380-60
 ;;9002226.02101,"976,58016-0380-90 ",.01)
 ;;58016-0380-90
 ;;9002226.02101,"976,58016-0380-90 ",.02)
 ;;58016-0380-90
 ;;9002226.02101,"976,58016-0381-00 ",.01)
 ;;58016-0381-00
 ;;9002226.02101,"976,58016-0381-00 ",.02)
 ;;58016-0381-00
 ;;9002226.02101,"976,58016-0381-02 ",.01)
 ;;58016-0381-02
 ;;9002226.02101,"976,58016-0381-02 ",.02)
 ;;58016-0381-02
 ;;9002226.02101,"976,58016-0381-03 ",.01)
 ;;58016-0381-03
 ;;9002226.02101,"976,58016-0381-03 ",.02)
 ;;58016-0381-03
 ;;9002226.02101,"976,58016-0381-10 ",.01)
 ;;58016-0381-10
 ;;9002226.02101,"976,58016-0381-10 ",.02)
 ;;58016-0381-10
 ;;9002226.02101,"976,58016-0381-15 ",.01)
 ;;58016-0381-15
 ;;9002226.02101,"976,58016-0381-15 ",.02)
 ;;58016-0381-15
 ;;9002226.02101,"976,58016-0381-20 ",.01)
 ;;58016-0381-20
 ;;9002226.02101,"976,58016-0381-20 ",.02)
 ;;58016-0381-20
 ;;9002226.02101,"976,58016-0381-28 ",.01)
 ;;58016-0381-28
 ;;9002226.02101,"976,58016-0381-28 ",.02)
 ;;58016-0381-28
 ;;9002226.02101,"976,58016-0381-30 ",.01)
 ;;58016-0381-30
 ;;9002226.02101,"976,58016-0381-30 ",.02)
 ;;58016-0381-30
 ;;9002226.02101,"976,58016-0381-60 ",.01)
 ;;58016-0381-60
 ;;9002226.02101,"976,58016-0381-60 ",.02)
 ;;58016-0381-60
 ;;9002226.02101,"976,58016-0381-73 ",.01)
 ;;58016-0381-73
 ;;9002226.02101,"976,58016-0381-73 ",.02)
 ;;58016-0381-73
 ;;9002226.02101,"976,58016-0381-80 ",.01)
 ;;58016-0381-80
 ;;9002226.02101,"976,58016-0381-80 ",.02)
 ;;58016-0381-80
 ;;9002226.02101,"976,58016-0381-89 ",.01)
 ;;58016-0381-89
 ;;9002226.02101,"976,58016-0381-89 ",.02)
 ;;58016-0381-89
 ;;9002226.02101,"976,58016-0381-90 ",.01)
 ;;58016-0381-90
 ;;9002226.02101,"976,58016-0381-90 ",.02)
 ;;58016-0381-90
 ;;9002226.02101,"976,58016-0382-00 ",.01)
 ;;58016-0382-00
 ;;9002226.02101,"976,58016-0382-00 ",.02)
 ;;58016-0382-00
 ;;9002226.02101,"976,58016-0382-02 ",.01)
 ;;58016-0382-02
 ;;9002226.02101,"976,58016-0382-02 ",.02)
 ;;58016-0382-02
 ;;9002226.02101,"976,58016-0382-03 ",.01)
 ;;58016-0382-03
 ;;9002226.02101,"976,58016-0382-03 ",.02)
 ;;58016-0382-03
 ;;9002226.02101,"976,58016-0382-10 ",.01)
 ;;58016-0382-10
 ;;9002226.02101,"976,58016-0382-10 ",.02)
 ;;58016-0382-10
 ;;9002226.02101,"976,58016-0382-14 ",.01)
 ;;58016-0382-14
 ;;9002226.02101,"976,58016-0382-14 ",.02)
 ;;58016-0382-14
 ;;9002226.02101,"976,58016-0382-15 ",.01)
 ;;58016-0382-15
 ;;9002226.02101,"976,58016-0382-15 ",.02)
 ;;58016-0382-15
 ;;9002226.02101,"976,58016-0382-20 ",.01)
 ;;58016-0382-20
 ;;9002226.02101,"976,58016-0382-20 ",.02)
 ;;58016-0382-20
 ;;9002226.02101,"976,58016-0382-28 ",.01)
 ;;58016-0382-28
 ;;9002226.02101,"976,58016-0382-28 ",.02)
 ;;58016-0382-28
 ;;9002226.02101,"976,58016-0382-30 ",.01)
 ;;58016-0382-30
 ;;9002226.02101,"976,58016-0382-30 ",.02)
 ;;58016-0382-30
 ;;9002226.02101,"976,58016-0382-40 ",.01)
 ;;58016-0382-40
 ;;9002226.02101,"976,58016-0382-40 ",.02)
 ;;58016-0382-40
 ;;9002226.02101,"976,58016-0382-60 ",.01)
 ;;58016-0382-60
 ;;9002226.02101,"976,58016-0382-60 ",.02)
 ;;58016-0382-60
 ;;9002226.02101,"976,58016-0382-73 ",.01)
 ;;58016-0382-73
 ;;9002226.02101,"976,58016-0382-73 ",.02)
 ;;58016-0382-73
 ;;9002226.02101,"976,58016-0382-80 ",.01)
 ;;58016-0382-80
 ;;9002226.02101,"976,58016-0382-80 ",.02)
 ;;58016-0382-80
 ;;9002226.02101,"976,58016-0382-89 ",.01)
 ;;58016-0382-89
 ;;9002226.02101,"976,58016-0382-89 ",.02)
 ;;58016-0382-89
 ;;9002226.02101,"976,58016-0382-90 ",.01)
 ;;58016-0382-90
 ;;9002226.02101,"976,58016-0382-90 ",.02)
 ;;58016-0382-90
 ;;9002226.02101,"976,58016-0444-00 ",.01)
 ;;58016-0444-00
 ;;9002226.02101,"976,58016-0444-00 ",.02)
 ;;58016-0444-00
 ;;9002226.02101,"976,58016-0444-20 ",.01)
 ;;58016-0444-20
 ;;9002226.02101,"976,58016-0444-20 ",.02)
 ;;58016-0444-20
 ;;9002226.02101,"976,58016-0444-30 ",.01)
 ;;58016-0444-30
 ;;9002226.02101,"976,58016-0444-30 ",.02)
 ;;58016-0444-30
 ;;9002226.02101,"976,58016-0444-40 ",.01)
 ;;58016-0444-40
 ;;9002226.02101,"976,58016-0444-40 ",.02)
 ;;58016-0444-40
 ;;9002226.02101,"976,58016-0444-60 ",.01)
 ;;58016-0444-60
 ;;9002226.02101,"976,58016-0444-60 ",.02)
 ;;58016-0444-60
 ;;9002226.02101,"976,58016-0444-90 ",.01)
 ;;58016-0444-90
 ;;9002226.02101,"976,58016-0444-90 ",.02)
 ;;58016-0444-90
 ;;9002226.02101,"976,58016-0489-00 ",.01)
 ;;58016-0489-00
 ;;9002226.02101,"976,58016-0489-00 ",.02)
 ;;58016-0489-00
 ;;9002226.02101,"976,58016-0489-02 ",.01)
 ;;58016-0489-02
 ;;9002226.02101,"976,58016-0489-02 ",.02)
 ;;58016-0489-02
 ;;9002226.02101,"976,58016-0489-03 ",.01)
 ;;58016-0489-03
 ;;9002226.02101,"976,58016-0489-03 ",.02)
 ;;58016-0489-03
 ;;9002226.02101,"976,58016-0489-10 ",.01)
 ;;58016-0489-10
 ;;9002226.02101,"976,58016-0489-10 ",.02)
 ;;58016-0489-10
 ;;9002226.02101,"976,58016-0489-14 ",.01)
 ;;58016-0489-14
 ;;9002226.02101,"976,58016-0489-14 ",.02)
 ;;58016-0489-14
 ;;9002226.02101,"976,58016-0489-15 ",.01)
 ;;58016-0489-15
 ;;9002226.02101,"976,58016-0489-15 ",.02)
 ;;58016-0489-15
 ;;9002226.02101,"976,58016-0489-20 ",.01)
 ;;58016-0489-20
 ;;9002226.02101,"976,58016-0489-20 ",.02)
 ;;58016-0489-20
 ;;9002226.02101,"976,58016-0489-21 ",.01)
 ;;58016-0489-21
 ;;9002226.02101,"976,58016-0489-21 ",.02)
 ;;58016-0489-21
 ;;9002226.02101,"976,58016-0489-30 ",.01)
 ;;58016-0489-30
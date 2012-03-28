BGP8FXND ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"634,54569-3180-01 ",.01)
 ;;54569-3180-01
 ;;9002226.02101,"634,54569-3180-01 ",.02)
 ;;54569-3180-01
 ;;9002226.02101,"634,54569-3180-02 ",.01)
 ;;54569-3180-02
 ;;9002226.02101,"634,54569-3180-02 ",.02)
 ;;54569-3180-02
 ;;9002226.02101,"634,54569-3180-05 ",.01)
 ;;54569-3180-05
 ;;9002226.02101,"634,54569-3180-05 ",.02)
 ;;54569-3180-05
 ;;9002226.02101,"634,54569-3181-01 ",.01)
 ;;54569-3181-01
 ;;9002226.02101,"634,54569-3181-01 ",.02)
 ;;54569-3181-01
 ;;9002226.02101,"634,54569-3544-00 ",.01)
 ;;54569-3544-00
 ;;9002226.02101,"634,54569-3544-00 ",.02)
 ;;54569-3544-00
 ;;9002226.02101,"634,54569-3544-01 ",.01)
 ;;54569-3544-01
 ;;9002226.02101,"634,54569-3544-01 ",.02)
 ;;54569-3544-01
 ;;9002226.02101,"634,54569-3544-02 ",.01)
 ;;54569-3544-02
 ;;9002226.02101,"634,54569-3544-02 ",.02)
 ;;54569-3544-02
 ;;9002226.02101,"634,54569-3544-03 ",.01)
 ;;54569-3544-03
 ;;9002226.02101,"634,54569-3544-03 ",.02)
 ;;54569-3544-03
 ;;9002226.02101,"634,54569-3544-04 ",.01)
 ;;54569-3544-04
 ;;9002226.02101,"634,54569-3544-04 ",.02)
 ;;54569-3544-04
 ;;9002226.02101,"634,54569-4471-00 ",.01)
 ;;54569-4471-00
 ;;9002226.02101,"634,54569-4471-00 ",.02)
 ;;54569-4471-00
 ;;9002226.02101,"634,54569-4929-00 ",.01)
 ;;54569-4929-00
 ;;9002226.02101,"634,54569-4929-00 ",.02)
 ;;54569-4929-00
 ;;9002226.02101,"634,54569-8585-00 ",.01)
 ;;54569-8585-00
 ;;9002226.02101,"634,54569-8585-00 ",.02)
 ;;54569-8585-00
 ;;9002226.02101,"634,54868-0107-06 ",.01)
 ;;54868-0107-06
 ;;9002226.02101,"634,54868-0107-06 ",.02)
 ;;54868-0107-06
 ;;9002226.02101,"634,54868-0429-03 ",.01)
 ;;54868-0429-03
 ;;9002226.02101,"634,54868-0429-03 ",.02)
 ;;54868-0429-03
 ;;9002226.02101,"634,54868-0473-00 ",.01)
 ;;54868-0473-00
 ;;9002226.02101,"634,54868-0473-00 ",.02)
 ;;54868-0473-00
 ;;9002226.02101,"634,54868-0473-01 ",.01)
 ;;54868-0473-01
 ;;9002226.02101,"634,54868-0473-01 ",.02)
 ;;54868-0473-01
 ;;9002226.02101,"634,54868-0473-02 ",.01)
 ;;54868-0473-02
 ;;9002226.02101,"634,54868-0473-02 ",.02)
 ;;54868-0473-02
 ;;9002226.02101,"634,54868-0473-03 ",.01)
 ;;54868-0473-03
 ;;9002226.02101,"634,54868-0473-03 ",.02)
 ;;54868-0473-03
 ;;9002226.02101,"634,54868-0473-04 ",.01)
 ;;54868-0473-04
 ;;9002226.02101,"634,54868-0473-04 ",.02)
 ;;54868-0473-04
 ;;9002226.02101,"634,54868-0473-05 ",.01)
 ;;54868-0473-05
 ;;9002226.02101,"634,54868-0473-05 ",.02)
 ;;54868-0473-05
 ;;9002226.02101,"634,54868-0473-06 ",.01)
 ;;54868-0473-06
 ;;9002226.02101,"634,54868-0473-06 ",.02)
 ;;54868-0473-06
 ;;9002226.02101,"634,54868-1253-00 ",.01)
 ;;54868-1253-00
 ;;9002226.02101,"634,54868-1253-00 ",.02)
 ;;54868-1253-00
 ;;9002226.02101,"634,54868-2366-00 ",.01)
 ;;54868-2366-00
 ;;9002226.02101,"634,54868-2366-00 ",.02)
 ;;54868-2366-00
 ;;9002226.02101,"634,54868-2366-01 ",.01)
 ;;54868-2366-01
 ;;9002226.02101,"634,54868-2366-01 ",.02)
 ;;54868-2366-01
 ;;9002226.02101,"634,55289-0031-06 ",.01)
 ;;55289-0031-06
 ;;9002226.02101,"634,55289-0031-06 ",.02)
 ;;55289-0031-06
 ;;9002226.02101,"634,55289-0031-10 ",.01)
 ;;55289-0031-10
 ;;9002226.02101,"634,55289-0031-10 ",.02)
 ;;55289-0031-10
 ;;9002226.02101,"634,55289-0031-14 ",.01)
 ;;55289-0031-14
 ;;9002226.02101,"634,55289-0031-14 ",.02)
 ;;55289-0031-14
 ;;9002226.02101,"634,55289-0031-20 ",.01)
 ;;55289-0031-20
 ;;9002226.02101,"634,55289-0031-20 ",.02)
 ;;55289-0031-20
 ;;9002226.02101,"634,55289-0179-12 ",.01)
 ;;55289-0179-12
 ;;9002226.02101,"634,55289-0179-12 ",.02)
 ;;55289-0179-12
 ;;9002226.02101,"634,55289-0179-28 ",.01)
 ;;55289-0179-28
 ;;9002226.02101,"634,55289-0179-28 ",.02)
 ;;55289-0179-28
 ;;9002226.02101,"634,55289-0179-40 ",.01)
 ;;55289-0179-40
 ;;9002226.02101,"634,55289-0179-40 ",.02)
 ;;55289-0179-40
 ;;9002226.02101,"634,55289-0186-12 ",.01)
 ;;55289-0186-12
 ;;9002226.02101,"634,55289-0186-12 ",.02)
 ;;55289-0186-12
 ;;9002226.02101,"634,55289-0186-14 ",.01)
 ;;55289-0186-14
 ;;9002226.02101,"634,55289-0186-14 ",.02)
 ;;55289-0186-14
 ;;9002226.02101,"634,55289-0186-20 ",.01)
 ;;55289-0186-20
 ;;9002226.02101,"634,55289-0186-20 ",.02)
 ;;55289-0186-20
 ;;9002226.02101,"634,55289-0186-21 ",.01)
 ;;55289-0186-21
 ;;9002226.02101,"634,55289-0186-21 ",.02)
 ;;55289-0186-21
 ;;9002226.02101,"634,55289-0186-28 ",.01)
 ;;55289-0186-28
 ;;9002226.02101,"634,55289-0186-28 ",.02)
 ;;55289-0186-28
 ;;9002226.02101,"634,55289-0186-40 ",.01)
 ;;55289-0186-40
 ;;9002226.02101,"634,55289-0186-40 ",.02)
 ;;55289-0186-40
 ;;9002226.02101,"634,55289-0203-12 ",.01)
 ;;55289-0203-12
 ;;9002226.02101,"634,55289-0203-12 ",.02)
 ;;55289-0203-12
 ;;9002226.02101,"634,55289-0203-14 ",.01)
 ;;55289-0203-14
 ;;9002226.02101,"634,55289-0203-14 ",.02)
 ;;55289-0203-14
 ;;9002226.02101,"634,55289-0203-20 ",.01)
 ;;55289-0203-20
 ;;9002226.02101,"634,55289-0203-20 ",.02)
 ;;55289-0203-20
 ;;9002226.02101,"634,55289-0203-28 ",.01)
 ;;55289-0203-28
 ;;9002226.02101,"634,55289-0203-28 ",.02)
 ;;55289-0203-28
 ;;9002226.02101,"634,55289-0203-30 ",.01)
 ;;55289-0203-30
 ;;9002226.02101,"634,55289-0203-30 ",.02)
 ;;55289-0203-30
 ;;9002226.02101,"634,55289-0203-40 ",.01)
 ;;55289-0203-40
 ;;9002226.02101,"634,55289-0203-40 ",.02)
 ;;55289-0203-40
 ;;9002226.02101,"634,55289-0261-30 ",.01)
 ;;55289-0261-30
 ;;9002226.02101,"634,55289-0261-30 ",.02)
 ;;55289-0261-30
 ;;9002226.02101,"634,55289-0261-90 ",.01)
 ;;55289-0261-90
 ;;9002226.02101,"634,55289-0261-90 ",.02)
 ;;55289-0261-90
 ;;9002226.02101,"634,55289-0262-90 ",.01)
 ;;55289-0262-90
 ;;9002226.02101,"634,55289-0262-90 ",.02)
 ;;55289-0262-90
 ;;9002226.02101,"634,55289-0914-12 ",.01)
 ;;55289-0914-12
 ;;9002226.02101,"634,55289-0914-12 ",.02)
 ;;55289-0914-12
 ;;9002226.02101,"634,55289-0914-14 ",.01)
 ;;55289-0914-14
 ;;9002226.02101,"634,55289-0914-14 ",.02)
 ;;55289-0914-14
 ;;9002226.02101,"634,55289-0914-15 ",.01)
 ;;55289-0914-15
 ;;9002226.02101,"634,55289-0914-15 ",.02)
 ;;55289-0914-15
 ;;9002226.02101,"634,55289-0914-28 ",.01)
 ;;55289-0914-28
 ;;9002226.02101,"634,55289-0914-28 ",.02)
 ;;55289-0914-28
 ;;9002226.02101,"634,55289-0914-30 ",.01)
 ;;55289-0914-30
 ;;9002226.02101,"634,55289-0914-30 ",.02)
 ;;55289-0914-30
 ;;9002226.02101,"634,55289-0914-40 ",.01)
 ;;55289-0914-40
 ;;9002226.02101,"634,55289-0914-40 ",.02)
 ;;55289-0914-40
 ;;9002226.02101,"634,57866-6590-03 ",.01)
 ;;57866-6590-03
 ;;9002226.02101,"634,57866-6590-03 ",.02)
 ;;57866-6590-03
 ;;9002226.02101,"634,57866-6590-04 ",.01)
 ;;57866-6590-04
 ;;9002226.02101,"634,57866-6590-04 ",.02)
 ;;57866-6590-04
 ;;9002226.02101,"634,58016-0034-00 ",.01)
 ;;58016-0034-00
 ;;9002226.02101,"634,58016-0034-00 ",.02)
 ;;58016-0034-00
 ;;9002226.02101,"634,58016-0034-30 ",.01)
 ;;58016-0034-30
 ;;9002226.02101,"634,58016-0034-30 ",.02)
 ;;58016-0034-30
 ;;9002226.02101,"634,58016-0034-60 ",.01)
 ;;58016-0034-60
 ;;9002226.02101,"634,58016-0034-60 ",.02)
 ;;58016-0034-60
 ;;9002226.02101,"634,58016-0034-90 ",.01)
 ;;58016-0034-90
 ;;9002226.02101,"634,58016-0034-90 ",.02)
 ;;58016-0034-90
 ;;9002226.02101,"634,58016-0141-00 ",.01)
 ;;58016-0141-00
 ;;9002226.02101,"634,58016-0141-00 ",.02)
 ;;58016-0141-00
 ;;9002226.02101,"634,58016-0141-10 ",.01)
 ;;58016-0141-10
 ;;9002226.02101,"634,58016-0141-10 ",.02)
 ;;58016-0141-10
 ;;9002226.02101,"634,58016-0141-12 ",.01)
 ;;58016-0141-12
 ;;9002226.02101,"634,58016-0141-12 ",.02)
 ;;58016-0141-12
 ;;9002226.02101,"634,58016-0141-14 ",.01)
 ;;58016-0141-14
 ;;9002226.02101,"634,58016-0141-14 ",.02)
 ;;58016-0141-14
 ;;9002226.02101,"634,58016-0141-15 ",.01)
 ;;58016-0141-15
 ;;9002226.02101,"634,58016-0141-15 ",.02)
 ;;58016-0141-15
 ;;9002226.02101,"634,58016-0141-20 ",.01)
 ;;58016-0141-20
 ;;9002226.02101,"634,58016-0141-20 ",.02)
 ;;58016-0141-20
 ;;9002226.02101,"634,58016-0141-21 ",.01)
 ;;58016-0141-21
 ;;9002226.02101,"634,58016-0141-21 ",.02)
 ;;58016-0141-21
 ;;9002226.02101,"634,58016-0141-24 ",.01)
 ;;58016-0141-24
 ;;9002226.02101,"634,58016-0141-24 ",.02)
 ;;58016-0141-24
 ;;9002226.02101,"634,58016-0141-28 ",.01)
 ;;58016-0141-28
 ;;9002226.02101,"634,58016-0141-28 ",.02)
 ;;58016-0141-28
 ;;9002226.02101,"634,58016-0141-30 ",.01)
 ;;58016-0141-30
 ;;9002226.02101,"634,58016-0141-30 ",.02)
 ;;58016-0141-30
 ;;9002226.02101,"634,58016-0142-00 ",.01)
 ;;58016-0142-00
 ;;9002226.02101,"634,58016-0142-00 ",.02)
 ;;58016-0142-00
 ;;9002226.02101,"634,58016-0142-10 ",.01)
 ;;58016-0142-10
 ;;9002226.02101,"634,58016-0142-10 ",.02)
 ;;58016-0142-10
 ;;9002226.02101,"634,58016-0142-12 ",.01)
 ;;58016-0142-12
 ;;9002226.02101,"634,58016-0142-12 ",.02)
 ;;58016-0142-12
 ;;9002226.02101,"634,58016-0142-14 ",.01)
 ;;58016-0142-14
 ;;9002226.02101,"634,58016-0142-14 ",.02)
 ;;58016-0142-14
 ;;9002226.02101,"634,58016-0142-15 ",.01)
 ;;58016-0142-15
 ;;9002226.02101,"634,58016-0142-15 ",.02)
 ;;58016-0142-15
 ;;9002226.02101,"634,58016-0142-20 ",.01)
 ;;58016-0142-20
 ;;9002226.02101,"634,58016-0142-20 ",.02)
 ;;58016-0142-20
 ;;9002226.02101,"634,58016-0142-24 ",.01)
 ;;58016-0142-24
 ;;9002226.02101,"634,58016-0142-24 ",.02)
 ;;58016-0142-24
 ;;9002226.02101,"634,58016-0142-28 ",.01)
 ;;58016-0142-28
 ;;9002226.02101,"634,58016-0142-28 ",.02)
 ;;58016-0142-28
 ;;9002226.02101,"634,58016-0142-30 ",.01)
 ;;58016-0142-30
 ;;9002226.02101,"634,58016-0142-30 ",.02)
 ;;58016-0142-30
 ;;9002226.02101,"634,58016-0142-40 ",.01)
 ;;58016-0142-40
 ;;9002226.02101,"634,58016-0142-40 ",.02)
 ;;58016-0142-40
 ;;9002226.02101,"634,58016-0886-00 ",.01)
 ;;58016-0886-00
 ;;9002226.02101,"634,58016-0886-00 ",.02)
 ;;58016-0886-00
 ;;9002226.02101,"634,58016-0886-20 ",.01)
 ;;58016-0886-20
 ;;9002226.02101,"634,58016-0886-20 ",.02)
 ;;58016-0886-20
 ;;9002226.02101,"634,58016-0886-30 ",.01)
 ;;58016-0886-30
 ;;9002226.02101,"634,58016-0886-30 ",.02)
 ;;58016-0886-30
 ;;9002226.02101,"634,58016-0886-60 ",.01)
 ;;58016-0886-60
 ;;9002226.02101,"634,58016-0886-60 ",.02)
 ;;58016-0886-60
 ;;9002226.02101,"634,58016-0886-90 ",.01)
 ;;58016-0886-90
 ;;9002226.02101,"634,58016-0886-90 ",.02)
 ;;58016-0886-90
 ;;9002226.02101,"634,58016-0937-00 ",.01)
 ;;58016-0937-00
 ;;9002226.02101,"634,58016-0937-00 ",.02)
 ;;58016-0937-00
 ;;9002226.02101,"634,58016-0967-00 ",.01)
 ;;58016-0967-00
 ;;9002226.02101,"634,58016-0967-00 ",.02)
 ;;58016-0967-00
 ;;9002226.02101,"634,58016-0967-30 ",.01)
 ;;58016-0967-30
 ;;9002226.02101,"634,58016-0967-30 ",.02)
 ;;58016-0967-30
 ;;9002226.02101,"634,58016-0967-60 ",.01)
 ;;58016-0967-60
 ;;9002226.02101,"634,58016-0967-60 ",.02)
 ;;58016-0967-60
 ;;9002226.02101,"634,58016-0967-90 ",.01)
 ;;58016-0967-90
 ;;9002226.02101,"634,58016-0967-90 ",.02)
 ;;58016-0967-90
 ;;9002226.02101,"634,58864-0323-14 ",.01)
 ;;58864-0323-14
 ;;9002226.02101,"634,58864-0323-14 ",.02)
 ;;58864-0323-14
 ;;9002226.02101,"634,59630-0450-16 ",.01)
 ;;59630-0450-16
 ;;9002226.02101,"634,59630-0450-16 ",.02)
 ;;59630-0450-16
 ;;9002226.02101,"634,61392-0168-30 ",.01)
 ;;61392-0168-30
 ;;9002226.02101,"634,61392-0168-30 ",.02)
 ;;61392-0168-30
 ;;9002226.02101,"634,61392-0168-31 ",.01)
 ;;61392-0168-31
 ;;9002226.02101,"634,61392-0168-31 ",.02)
 ;;61392-0168-31
 ;;9002226.02101,"634,61392-0168-32 ",.01)
 ;;61392-0168-32
 ;;9002226.02101,"634,61392-0168-32 ",.02)
 ;;61392-0168-32
 ;;9002226.02101,"634,61392-0168-39 ",.01)
 ;;61392-0168-39
 ;;9002226.02101,"634,61392-0168-39 ",.02)
 ;;61392-0168-39
 ;;9002226.02101,"634,61392-0168-45 ",.01)
 ;;61392-0168-45
 ;;9002226.02101,"634,61392-0168-45 ",.02)
 ;;61392-0168-45
 ;;9002226.02101,"634,61392-0168-51 ",.01)
 ;;61392-0168-51
 ;;9002226.02101,"634,61392-0168-51 ",.02)
 ;;61392-0168-51
 ;;9002226.02101,"634,61392-0168-54 ",.01)
 ;;61392-0168-54
 ;;9002226.02101,"634,61392-0168-54 ",.02)
 ;;61392-0168-54
 ;;9002226.02101,"634,61392-0168-60 ",.01)
 ;;61392-0168-60
 ;;9002226.02101,"634,61392-0168-60 ",.02)
 ;;61392-0168-60
 ;;9002226.02101,"634,61392-0168-90 ",.01)
 ;;61392-0168-90
 ;;9002226.02101,"634,61392-0168-90 ",.02)
 ;;61392-0168-90
 ;;9002226.02101,"634,61392-0168-91 ",.01)
 ;;61392-0168-91
 ;;9002226.02101,"634,61392-0168-91 ",.02)
 ;;61392-0168-91
 ;;9002226.02101,"634,61392-0169-30 ",.01)
 ;;61392-0169-30
 ;;9002226.02101,"634,61392-0169-30 ",.02)
 ;;61392-0169-30
 ;;9002226.02101,"634,61392-0169-31 ",.01)
 ;;61392-0169-31
 ;;9002226.02101,"634,61392-0169-31 ",.02)
 ;;61392-0169-31
 ;;9002226.02101,"634,61392-0169-32 ",.01)
 ;;61392-0169-32
 ;;9002226.02101,"634,61392-0169-32 ",.02)
 ;;61392-0169-32
 ;;9002226.02101,"634,61392-0169-39 ",.01)
 ;;61392-0169-39
 ;;9002226.02101,"634,61392-0169-39 ",.02)
 ;;61392-0169-39
 ;;9002226.02101,"634,61392-0169-45 ",.01)
 ;;61392-0169-45
 ;;9002226.02101,"634,61392-0169-45 ",.02)
 ;;61392-0169-45
 ;;9002226.02101,"634,61392-0169-51 ",.01)
 ;;61392-0169-51
 ;;9002226.02101,"634,61392-0169-51 ",.02)
 ;;61392-0169-51
 ;;9002226.02101,"634,61392-0169-54 ",.01)
 ;;61392-0169-54
 ;;9002226.02101,"634,61392-0169-54 ",.02)
 ;;61392-0169-54
 ;;9002226.02101,"634,61392-0169-60 ",.01)
 ;;61392-0169-60
 ;;9002226.02101,"634,61392-0169-60 ",.02)
 ;;61392-0169-60
 ;;9002226.02101,"634,61392-0169-90 ",.01)
 ;;61392-0169-90
 ;;9002226.02101,"634,61392-0169-90 ",.02)
 ;;61392-0169-90
 ;;9002226.02101,"634,61392-0169-91 ",.01)
 ;;61392-0169-91
 ;;9002226.02101,"634,61392-0169-91 ",.02)
 ;;61392-0169-91
 ;;9002226.02101,"634,62584-0808-01 ",.01)
 ;;62584-0808-01
 ;;9002226.02101,"634,62584-0808-01 ",.02)
 ;;62584-0808-01
 ;;9002226.02101,"634,63304-0518-01 ",.01)
 ;;63304-0518-01
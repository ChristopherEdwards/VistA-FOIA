IBINI0E7	; ; 21-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,"PKG",200,4,15,222)
	;;=y^y^^n^^^n^^
	;;^UTILITY(U,$J,"PKG",200,4,16,0)
	;;=399.1
	;;^UTILITY(U,$J,"PKG",200,4,16,222)
	;;=y^y^^n^^^y^m^y
	;;^UTILITY(U,$J,"PKG",200,4,17,0)
	;;=399.2
	;;^UTILITY(U,$J,"PKG",200,4,17,222)
	;;=y^y^^n^^^y^m^y
	;;^UTILITY(U,$J,"PKG",200,4,18,0)
	;;=399.3
	;;^UTILITY(U,$J,"PKG",200,4,18,222)
	;;=y^y^^n^^^y^m^y
	;;^UTILITY(U,$J,"PKG",200,4,19,0)
	;;=399.4
	;;^UTILITY(U,$J,"PKG",200,4,19,222)
	;;=y^y^^n^^^y^m^y
	;;^UTILITY(U,$J,"PKG",200,4,20,0)
	;;=399.5
	;;^UTILITY(U,$J,"PKG",200,4,20,222)
	;;=y^y^^n^^^y^m^y
	;;^UTILITY(U,$J,"PKG",200,4,22,0)
	;;=350.6
	;;^UTILITY(U,$J,"PKG",200,4,22,222)
	;;=y^y^^n^^^n^^
	;;^UTILITY(U,$J,"PKG",200,4,23,0)
	;;=353
	;;^UTILITY(U,$J,"PKG",200,4,23,222)
	;;=y^y^^n^^^y^m^y
	;;^UTILITY(U,$J,"PKG",200,4,24,0)
	;;=353.1
	;;^UTILITY(U,$J,"PKG",200,4,24,222)
	;;=y^y^^n^^^y^o^y
	;;^UTILITY(U,$J,"PKG",200,4,25,0)
	;;=353.2
	;;^UTILITY(U,$J,"PKG",200,4,25,222)
	;;=y^y^^n^^^y^o^y
	;;^UTILITY(U,$J,"PKG",200,4,26,0)
	;;=352.2
	;;^UTILITY(U,$J,"PKG",200,4,26,222)
	;;=y^y^^n^^^n^^
	;;^UTILITY(U,$J,"PKG",200,4,27,0)
	;;=352.3
	;;^UTILITY(U,$J,"PKG",200,4,27,222)
	;;=y^y^^n^^^n^^
	;;^UTILITY(U,$J,"PKG",200,4,28,0)
	;;=352.4
	;;^UTILITY(U,$J,"PKG",200,4,28,222)
	;;=y^y^^n^^^n^^
	;;^UTILITY(U,$J,"PKG",200,4,29,0)
	;;=351.2
	;;^UTILITY(U,$J,"PKG",200,4,29,222)
	;;=y^y^^n^^^n^^
	;;^UTILITY(U,$J,"PKG",200,4,32,0)
	;;=354
	;;^UTILITY(U,$J,"PKG",200,4,32,222)
	;;=y^y^^n^^^n^^
	;;^UTILITY(U,$J,"PKG",200,4,33,0)
	;;=354.1
	;;^UTILITY(U,$J,"PKG",200,4,33,222)
	;;=y^y^^n^^^n^^
	;;^UTILITY(U,$J,"PKG",200,4,34,0)
	;;=354.2
	;;^UTILITY(U,$J,"PKG",200,4,34,222)
	;;=y^y^^n^^^y^m^y
	;;^UTILITY(U,$J,"PKG",200,4,35,0)
	;;=354.3
	;;^UTILITY(U,$J,"PKG",200,4,35,222)
	;;=y^y^^n^^^y^m^y
	;;^UTILITY(U,$J,"PKG",200,4,36,0)
	;;=354.4
	;;^UTILITY(U,$J,"PKG",200,4,36,222)
	;;=y^y^^n^^^n^^
	;;^UTILITY(U,$J,"PKG",200,4,37,0)
	;;=354.5
	;;^UTILITY(U,$J,"PKG",200,4,37,222)
	;;=y^y^^n^^^y^m^y
	;;^UTILITY(U,$J,"PKG",200,4,38,0)
	;;=354.6
	;;^UTILITY(U,$J,"PKG",200,4,38,222)
	;;=y^y^^n^^^y^m^y
	;;^UTILITY(U,$J,"PKG",200,4,39,0)
	;;=357
	;;^UTILITY(U,$J,"PKG",200,4,39,222)
	;;=y^y^^n^^^n^^
	;;^UTILITY(U,$J,"PKG",200,4,40,0)
	;;=357.1
	;;^UTILITY(U,$J,"PKG",200,4,40,222)
	;;=y^y^^n^^^n^^
	;;^UTILITY(U,$J,"PKG",200,4,41,0)
	;;=357.2
	;;^UTILITY(U,$J,"PKG",200,4,41,222)
	;;=y^y^^n^^^n^^
	;;^UTILITY(U,$J,"PKG",200,4,42,0)
	;;=357.3
	;;^UTILITY(U,$J,"PKG",200,4,42,222)
	;;=y^y^^n^^^n^^
	;;^UTILITY(U,$J,"PKG",200,4,43,0)
	;;=357.4
	;;^UTILITY(U,$J,"PKG",200,4,43,222)
	;;=y^y^^n^^^n^^
	;;^UTILITY(U,$J,"PKG",200,4,44,0)
	;;=357.5
	;;^UTILITY(U,$J,"PKG",200,4,44,222)
	;;=y^y^^n^^^n^^
	;;^UTILITY(U,$J,"PKG",200,4,45,0)
	;;=357.6
	;;^UTILITY(U,$J,"PKG",200,4,45,222)
	;;=y^y^^n^^^y^o^y
	;;^UTILITY(U,$J,"PKG",200,4,46,0)
	;;=357.7
	;;^UTILITY(U,$J,"PKG",200,4,46,222)
	;;=y^y^^n^^^n^^
	;;^UTILITY(U,$J,"PKG",200,4,47,0)
	;;=357.8
	;;^UTILITY(U,$J,"PKG",200,4,47,222)
	;;=y^y^^n^^^n^^
	;;^UTILITY(U,$J,"PKG",200,4,48,0)
	;;=356
	;;^UTILITY(U,$J,"PKG",200,4,48,222)
	;;=y^y^^n^^^n^
	;;^UTILITY(U,$J,"PKG",200,4,49,0)
	;;=357.91
	;;^UTILITY(U,$J,"PKG",200,4,49,222)
	;;=y^y^^n^^^y^m^y
	;;^UTILITY(U,$J,"PKG",200,4,50,0)
	;;=357.92
	;;^UTILITY(U,$J,"PKG",200,4,50,222)
	;;=y^y^^n^^^y^m^y
	;;^UTILITY(U,$J,"PKG",200,4,51,0)
	;;=358
	;;^UTILITY(U,$J,"PKG",200,4,51,222)
	;;=y^y^^n^^^n^^
	;;^UTILITY(U,$J,"PKG",200,4,52,0)
	;;=358.1
	;;^UTILITY(U,$J,"PKG",200,4,52,222)
	;;=y^y^^n^^^n
	;;^UTILITY(U,$J,"PKG",200,4,53,0)
	;;=358.2
	;;^UTILITY(U,$J,"PKG",200,4,53,222)
	;;=y^y^^n^^^n
	;;^UTILITY(U,$J,"PKG",200,4,54,0)
	;;=358.3
	;;^UTILITY(U,$J,"PKG",200,4,54,222)
	;;=y^y^^n^^^n
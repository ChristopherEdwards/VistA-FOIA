FHINI08V	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,3063,3)
	;;=.284^1.172^1.339^2.161^2.144^.631^.328^1.129^.864^1.512^1.578^.956^1.582^2.307^4.547^1.368^1.247^1.075
	;;^UTILITY(U,$J,112,3063,4)
	;;=0^.02^.24^1.75^.3^.98^3.04^.06
	;;^UTILITY(U,$J,112,3063,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,3064,0)
	;;=VEAL, LEG, TOT ED, PAN-FRIED, NOT BREADED^17-097^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,3064,1)
	;;=31.75^8.35^0^211^58.34^^^6^.88^31^279^425^76^3.23^.062^.031^.42^0^0^.07
	;;^UTILITY(U,$J,112,3064,2)
	;;=.35^12.05^1.17^.49^15^1.45^.46^.05^105^3.16^3.23^.58^0^1.4^^^0
	;;^UTILITY(U,$J,112,3064,3)
	;;=.321^1.387^1.564^2.527^2.616^.741^.358^1.281^1.012^1.755^1.867^1.152^1.888^2.739^5.022^1.632^1.326^1.19
	;;^UTILITY(U,$J,112,3064,4)
	;;=.01^.02^.3^1.7^.34^1.04^2.82^.07
	;;^UTILITY(U,$J,112,3064,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,3065,0)
	;;=VEAL, LEG, TOT ED, ROASTED^17-098^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,3065,1)
	;;=27.7^4.65^0^160^66.1^^^6^.91^28^234^389^68^3.04^.129^.03^.49^0^0^.06
	;;^UTILITY(U,$J,112,3065,2)
	;;=.32^9.93^.99^.31^16^1.17^.26^.03^103^1.84^1.73^.35^0^1.49^^^0
	;;^UTILITY(U,$J,112,3065,3)
	;;=.28^1.21^1.364^2.205^2.282^.646^.313^1.118^.883^1.531^1.629^1.005^1.647^2.39^4.381^1.423^1.156^1.038
	;;^UTILITY(U,$J,112,3065,4)
	;;=0^.01^.17^.98^.19^.61^1.49^.06
	;;^UTILITY(U,$J,112,3065,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,3066,0)
	;;=VEAL, LOIN, TOT ED, ROASTED^17-106^oz.^28.3^64^N
	;;^UTILITY(U,$J,112,3066,1)
	;;=24.8^12.32^0^217^60.73^^^19^.87^25^212^325^93^3.03^.11^.029^.44^0^0^.05
	;;^UTILITY(U,$J,112,3066,2)
	;;=.28^8.86^1.2^.34^15^1.24^.62^.09^103^5.26^4.78^.81^0^1.38^^^0
	;;^UTILITY(U,$J,112,3066,3)
	;;=.251^1.083^1.221^1.974^2.044^.579^.28^1.001^.791^1.371^1.459^.9^1.475^2.139^3.923^1.275^1.035^.93
	;;^UTILITY(U,$J,112,3066,4)
	;;=.01^.04^.52^2.76^.56^1.73^4.1^.1
	;;^UTILITY(U,$J,112,3066,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,3067,0)
	;;=WATER, DISTILLED^2701-0^floz.^28.3^100^N
	;;^UTILITY(U,$J,112,3067,1)
	;;=0^0^0^0^100^^^0^0^^0^0^0^^^^^0^0^0
	;;^UTILITY(U,$J,112,3067,2)
	;;=0^0^^^^^0^^0^0^^^^0
	;;^UTILITY(U,$J,112,3067,4)
	;;=^^^^^^0
	;;^UTILITY(U,$J,112,3067,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,3068,0)
	;;=WHELK, UNSPECIFIED, COOKED, MOIST HEAT^15-178^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,3068,1)
	;;=47.68^.8^15.52^275^32^^^113^10.06^172^282^694^412^3.26^2.06^.89^^162^6.8^.049
	;;^UTILITY(U,$J,112,3068,2)
	;;=.214^1.995^.4^.65^11.4^18.14^.008^^130^.062^.056^.046^49^4^^^0
	;;^UTILITY(U,$J,112,3068,3)
	;;=.618^2.136^1.655^3.807^2.93^1.205^.374^1.648^1.518^2.075^4.936^.977^3.113^5.127^7.339^2.991^2.365^2.22
	;;^UTILITY(U,$J,112,3068,4)
	;;=^^.004^.04^.01^.018^.012^.018
	;;^UTILITY(U,$J,112,3068,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,3070,0)
	;;=WILD RICE, COOKED^20-089^cups^164^100^N
	;;^UTILITY(U,$J,112,3070,1)
	;;=3.99^.34^21.34^101^73.93^^^3^.6^32^82^101^3^1.34^.121^.282^^0^0^.052
	;;^UTILITY(U,$J,112,3070,2)
	;;=.087^1.287^.154^.135^26^0^.119^.095^0^.049^.05^.213^0^.4^^^1.8
	;;^UTILITY(U,$J,112,3070,3)
	;;=.049^.127^.167^.276^.17^.119^.047^.195^.169^.232^.308^.104^.223^.384^.695^.182^.14^.211
	;;^UTILITY(U,$J,112,3070,4)
	;;=^^^.046^^.003^.05
	;;^UTILITY(U,$J,112,3070,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,3071,0)
	;;=BAKING SODA^18-372^tsp.^4.6^100^N^E
	;;^UTILITY(U,$J,112,3071,1)
	;;=0^0^0^0^.2^^^0^0^0^0^0^27360^0^0^0^^0^0^0
	;;^UTILITY(U,$J,112,3071,2)
	;;=0^0^0^0^0^0^^^0^^^^0^36.9
	;;^UTILITY(U,$J,112,3071,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,6001,0)
	;;=TRAUMA-CAL^^ml.^1
	;;^UTILITY(U,$J,112,6001,1)
	;;=8.25^6.85^14.25^150^78^^^75^.9^20^75^140^120^1.5^.15^.25^3.75^250^15^.19
	;;^UTILITY(U,$J,112,6001,2)
	;;=.22^2.5^1.25^.25^20^.75
	;;^UTILITY(U,$J,112,6001,20)
	;;=Mead-Johnson Product Handbook, 1-83. DOE:072684 #516
	;;^UTILITY(U,$J,112,6002,0)
	;;=CRITICARE HN^^ml.^1
	;;^UTILITY(U,$J,112,6002,1)
	;;=3.8^.3^22.2^106^83.1^^^53^.95^21^53^132^63^1^.1^.26^4^260^15.9^.2
	;;^UTILITY(U,$J,112,6002,2)
	;;=.22^2.6^1.32^.26^21^.79^.21^0^0^.04^.05^.21
	;;^UTILITY(U,$J,112,6002,20)
	;;=Mead-Johnson Product Literature, Oct 82. DOE: 073084. #516
	;;^UTILITY(U,$J,112,6003,0)
	;;=SUSTACAL^^ml.^1
	;;^UTILITY(U,$J,112,6003,1)
	;;=6.1^2.3^14^100^84.2^^^100^1.7^38^92^206^92^1.4^.19^.3^2.8^469^5.6^.14
	;;^UTILITY(U,$J,112,6003,2)
	;;=.17^1.9^.97^.19^37^.6^.86^.05^1.5^.36^1.02^.91
	;;^UTILITY(U,$J,112,6003,20)
	;;=Mead-Johnson Product Literature, Oct 82. DOE:073084. 
	;;^UTILITY(U,$J,112,6004,0)
	;;=SUSTACAL PUDDING^^oz.^28.35
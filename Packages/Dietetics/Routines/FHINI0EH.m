FHINI0EH	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,9022,1)
	;;=22.807^24.561^3.509^315.789^45.614^^^45.614^1.93^^^140.351^894.737^.526^^^^^^1.105
	;;^UTILITY(U,$J,112,9022,2)
	;;=.895^15.965^4.386^1.105^^3.509^^^0
	;;^UTILITY(U,$J,112,9022,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9023,0)
	;;=MEAT SUBS,CHICKEN,FRIED,W/ GRAVY,CND,LOMA LINDA^BC-02296^2-pieces^85
	;;^UTILITY(U,$J,112,9023,1)
	;;=10.588^11.765^4.706^164.706^70.588^^^23.529^1.647^^^294.118^400^.647^^^^^^.706
	;;^UTILITY(U,$J,112,9023,2)
	;;=.482^4.706^1.765^.506^^2.353^^^0
	;;^UTILITY(U,$J,112,9023,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9024,0)
	;;=MEAT SUBS,CHICKEN,FROZEN,LOMA LINDA^BC-02297^2-slices^57
	;;^UTILITY(U,$J,112,9024,1)
	;;=17.544^22.807^1.754^280.702^54.386^^^43.86^1.93^^^210.526^578.947^1.105^^^^^^.807
	;;^UTILITY(U,$J,112,9024,2)
	;;=.719^8.947^2.456^.895^^3.509^^^0
	;;^UTILITY(U,$J,112,9024,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9025,0)
	;;=MEAT SUBS,CHICKEN,SUPREME DRY MIX,LOMA LINDA^BC-02298^1/4-cup^16
	;;^UTILITY(U,$J,112,9025,1)
	;;=56.25^0^25^312.5^6.25^^^125^4.5^^^1187.5^2812.5^2.5^^^^^^3.813
	;;^UTILITY(U,$J,112,9025,2)
	;;=1.625^18.75^9.375^2.5^^6.25^^^0
	;;^UTILITY(U,$J,112,9025,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9026,0)
	;;=MEAT SUBS,CHICKEN NUGGETS/PATTIES,FROZEN,LOMA LINDA^BC-02299^5-pieces^85
	;;^UTILITY(U,$J,112,9026,1)
	;;=16.471^15.294^17.647^270.588^48.235^^^48.235^2.235^^^211.765^752.941^.847^^^^^^.576
	;;^UTILITY(U,$J,112,9026,2)
	;;=.471^7.765^2.235^.6^^3.529^^^0
	;;^UTILITY(U,$J,112,9026,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9027,0)
	;;=MEAT SUBS,CHIKSTIKS,WORTHINGTON^BC-02300^piece^47
	;;^UTILITY(U,$J,112,9027,1)
	;;=20.851^13.404^8.298^238.298^54.255^^^46.809^4.766^^^191.489^691.489^^^^^^^1.277
	;;^UTILITY(U,$J,112,9027,2)
	;;=.468^11.489^^.617^^9.149^^^0^2.128^^7.234
	;;^UTILITY(U,$J,112,9027,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9028,0)
	;;=MEAT SUBS,CHOPLETS,WORTHINGTON^BC-02301^2-slices^92
	;;^UTILITY(U,$J,112,9028,1)
	;;=20.761^1.522^4.348^114.13^72.065^^^11.957^2.022^^^35.87^344.565
	;;^UTILITY(U,$J,112,9028,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9029,0)
	;;=MEAT SUBS,CORN DOGS,FRZN,LOMA LINDA^BC-02302^corn dog^71
	;;^UTILITY(U,$J,112,9029,1)
	;;=9.859^14.085^29.577^281.69^45.07^^^28.169^1.028^^^211.268^873.239^.62^^^^^^.817
	;;^UTILITY(U,$J,112,9029,2)
	;;=.873^8.732^3.662^1.127^^4.225^^^0
	;;^UTILITY(U,$J,112,9029,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9030,0)
	;;=MEAT SUBS,DINNER CUTS,CND,LOMA LINDA^BC-02303^2-cuts^100
	;;^UTILITY(U,$J,112,9030,1)
	;;=21^1^4^110^71^^^20^2^^^180^550^1.3^^^^^^.2
	;;^UTILITY(U,$J,112,9030,2)
	;;=.27^1^.21^.46^^1^^^0
	;;^UTILITY(U,$J,112,9030,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9031,0)
	;;=MEAT SUBS,DINNER LOAF,DRY PACK,LOMA LINDA^BC-02304^1/4-cup^16
	;;^UTILITY(U,$J,112,9031,1)
	;;=56.25^6.25^25^312.5^6.25^^^162.5^4^^^875^2375^1.875^^^^^^3.813
	;;^UTILITY(U,$J,112,9031,2)
	;;=1.5^25^11.875^3.625^^6.25^^^0
	;;^UTILITY(U,$J,112,9031,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9032,0)
	;;=MEAT SUBS,FRICHIK,WORTHINGTON^BC-02305^2-pieces^90
	;;^UTILITY(U,$J,112,9032,1)
	;;=13.444^10.889^5^172.222^68.667^^^20^1.911^^^45.556^541.111^^^^^^^.233
	;;^UTILITY(U,$J,112,9032,2)
	;;=.233^3.444^^.2^^4.356^^^^1.667^^8.556
	;;^UTILITY(U,$J,112,9032,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9033,0)
	;;=MEAT SUBS,FRIPATS,WORTHINGTON^BC-02306^piece^64
	;;^UTILITY(U,$J,112,9033,1)
	;;=24.219^19.219^7.813^301.563^46.094^^^120.313^5.813^^^210.938^475
	;;^UTILITY(U,$J,112,9033,2)
	;;=.5^13.75^^.688^^11^^^^3.281^^9.688
	;;^UTILITY(U,$J,112,9033,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9034,0)
	;;=MEAT SUBS,GRIDDLE STEAKS,FRZN,LOMA LINDA^BC-02307^steak^47
	;;^UTILITY(U,$J,112,9034,1)
	;;=23.404^23.404^8.511^340.426^40.426^^^70.213^1.298^^^531.915^819.149^1.106^^^^^^1.106
	;;^UTILITY(U,$J,112,9034,2)
	;;=.702^8.723^3.617^1.191^^4.255^^^0
	;;^UTILITY(U,$J,112,9034,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9035,0)
	;;=MEAT SUBS,GRILLERS,MORNINGSTAR FARMS^BC-02308^patty^64
	;;^UTILITY(U,$J,112,9035,1)
	;;=20.313^18.594^7.969^281.25^46.719^^^103.125^5.438^^^78.125^546.875
	;;^UTILITY(U,$J,112,9035,2)
	;;=.594^11.719^^.688^^10.469^^^0^3.281^^9.688
AUP6INI5 ; ; 31-AUG-2004
 ;;93.2;AUP6;;AUG 31, 2004
 K ^UTILITY("DIF",$J) S DIFRDIFI=1 F I=1:1:2 S ^UTILITY("DIF",$J,DIFRDIFI)=$T(IXF+I),DIFRDIFI=DIFRDIFI+1
 Q
IXF ;;AUP6^AUP6
 ;;9000001sIP;PATIENT;^AUPNPAT(;1;y;n;;n;;;n
 ;;
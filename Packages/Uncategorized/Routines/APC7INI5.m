APC7INI5 ; ; 29-OCT-2002
 ;;2.0;APC7;;OCT 29, 2002
 K ^UTILITY("DIF",$J) S DIFRDIFI=1 F I=1:1:2 S ^UTILITY("DIF",$J,DIFRDIFI)=$T(IXF+I),DIFRDIFI=DIFRDIFI+1
 Q
IXF ;;APC7^APC7
 ;;9000010.09API;V LAB;^AUPNVLAB(;1;y;n;;n;;;n
 ;;
AGSECCHK ;IHS/ASDS/EFG - SECURITY CHECK ROUTINE FOR PATIENT REG  
 ;;7.1;PATIENT REGISTRATION;;AUG 25,2005
 ;
 ;THIS ROUTINE IS USED TO SEARCH THE NEW PERSON FILE TO SEE IF THE
 ;USER HAS THE PROPER SECURITY KEY FOR WHATEVER REASON. PASS IT
 ;THE NAME OF THE SECURITY KEY (KEY) TO SEARCH FOR AND THE RESULT
 ;(HIT) WILL CONTAIN A "Y" OR "N" TO INDICATE IF IT WAS FOUND
 ;OR NOT.
 ;
EN(KEY,HIT) ;
 S HIT="N"
 I $D(^XUSEC(KEY,DUZ)) S HIT="Y"      ;SECURITY KEY FOUND
 E  S HIT="N"
 Q
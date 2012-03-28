MCARIPST ; HISC/NCA - Pre-Init Conversions of Study Types ;2/24/95  09:36
 ;;2.3;Medicine;**2**;09/13/1996
 S MCARTIT=";"_$P(^DD(691.48,.01,0),"^",3)
 S MCARX1=$F(MCARTIT,";"_6_":") G:MCARX1 NXT
 F MCARLP=0:0 S MCARLP=$O(^MCAR(691,MCARLP)) Q:MCARLP<1  D P1
NXT ; Convert the abrev name to spelled out name in file 697.5
 F MCARLP=0:0 S MCARLP=$O(^MCAR(697.5,MCARLP)) Q:MCARLP<1  S MCARX=$G(^(MCARLP,0)) D P3
 K ^MCAR(697.5,"B"),^MCAR(697.5,"C"),^MCAR(697.5,"D"),^MCAR(697.5,"E"),^MCAR(697.5,"F"),^MCAR(697.5,"G"),^MCAR(697.5,"H"),^MCAR(697.5,"I")
 S DIK="^MCAR(697.5," D IXALL^DIK
 W *7,!!,"Pre-init Conversion Done!",!
 G KIL
P1 ; Process conversion and reset the Cross Reference
 K MP F MCAP0=0:0 S MCAP0=$O(^MCAR(691,MCARLP,16,MCAP0)) Q:MCAP0<1  S MCARX=$G(^(MCAP0,0)) D P2
 K ^MCAR(691,MCARLP,16) S (CT,ZT)=0
 F MCAP0=0:0 S MCAP0=$O(MP(MCAP0)) Q:MCAP0<1  S ^MCAR(691,MCARLP,16,MCAP0,0)=$G(MP(MCAP0)),^MCAR(691,MCARLP,16,"B",$G(MP(MCAP0)),MCAP0)="",CT=CT+1,ZT=MCAP0
 I CT S ^MCAR(691,MCARLP,16,0)="^691.48SA^"_ZT_"^"_CT
 Q
P2 ; Convert the Study Types
 S:MCARX MP(MCAP0)=$S(MCARX=2:3,MCARX=3:4,MCARX=4:5,MCARX=5:6,1:1)
 Q
P3 ; Convert the name field of file 697.5 and spelled out the abrev.
 S MCARNAM=$P(MCARX,"^",1),MCARC=$E(MCARNAM,($L(MCARNAM)-4),$L(MCARNAM))
 S MCARY=$S(MCARC=": MIN":"IMAL",MCARC=": MOD":"ERATE",MCARC=": SEV":"ERE",1:"")
 I MCARY'="" S MCARNAM=MCARNAM_MCARY,$P(^MCAR(697.5,MCARLP,0),"^",1)=MCARNAM
 Q
KIL ; Kill Variables
 K CT,DA,DIK,MP,MCARC,MCARNAM,MCARTIT,MCARLP,MCAP0,MCARX,MCARX1,MCARY,ZT
 Q
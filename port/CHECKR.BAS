  10 PRINT"   THIS PROGRAM WILL PLAY CHECKERS. THE COMPUTER IS X,"
  20 PRINT"AND YOU ARE O. THE COMPUTER WILL GO FIRST,-NOTE: SQUARES"
  30 PRINT"ARE IN THE FORM-(X,Y) AND SQ. 1,1 IS THE BOTTOM LEFT!"
  40 PRINT"DO NOT ATTEMPT A DOUBLE JUMP OR YOUR PIECE MIGHT JUST "
  50 PRINT"DISAPPEAR(SAME FOR A TRIPLE!)"
  60 PRINT"     WAIT FOR THE COMP. TO MOVE!!!!!"
  70 LET G=-1
  80 DIM R(50)
  90 LET L=-1
 100 DIM S(10,10)
 110 DATA 1,0,1,0,0,0,-1,0,0,1,0,0,0,-1,0,-1,15
 120 FOR X=1TO8
 130 FOR Y=1TO8
 140 READ J
 150 IF J=15 THEN 180
 160 LET S(X,Y)=J
 170 GOTO 200
 180 RESTORE
 190 READ S(X,Y)
 200 NEXT Y
 210 NEXT X
 220 REM
 230LETL=-1*L
 240 FOR X=1TO8
 250 FOR Y=1TO8
 260 IF S(X,Y)=0 THEN 350
 270 IF G>0 THEN 300
 280 IF S(X,Y)>0 THEN 350
 290 GOTO 310
 300 IF S(X,Y)<0 THEN 350
 310 IF ABS(S(X,Y))<>1 THEN 330
 320 GOSUB 430
 330 IF ABS(S(X,Y))<>2 THEN 350
 340 GOSUB 650
 350IFX<>8 THEN 380
 360IFL=1 THEN 380
 370RETURN
 380NEXT Y
 390NEXT X
 400PRINT
 410GOSUB1140
 420 GOTO 230
 430 FOR A=-1TO1 STEP 2
 440 LET U=X+A
 450 LET V=Y+G
 460 IF U<1 THEN 630
 470 IF U>8 THEN 630
 480 IF V<1 THEN 630
 490 IF V>8 THEN 630
 500 IF S(U,V)<>0 THEN 530
 510 GOSUB 910
 520 GOTO 630
 530 IF S(U,V)=G THEN 630
 540 IF S(U,V)=2*G THEN 630
 550 LET U=U+A
 560 LET V=V+G
 570 IF U<1 THEN 630
 580 IF U>8 THEN 630
 590 IF V<1 THEN 630
 600 IF V>8 THEN 630
 610 IF S(U,V)<>0 THEN 630
 620 GOSUB 910
 630 NEXT A
 640  RETURN
 650 REM KING MOVES
 660 FOR A=-1TO1 STEP 2
 670 FOR B=-1TO1 STEP 2
 680 LET U=X+A
 690 LET V=Y+B
 700 IF U<1 THEN 870
 710 IF U>8 THEN 870
 720 IF V<1 THEN 870
 730 IF V>8 THEN870
 740 IF S(U,V)<>0 THEN 770
 750 GOSUB 910
 760 GOTO 870
 770 IF S(U,V)=G THEN 870
 780 IF S(U,V)=2*G THEN 870
 790 LET U=U+A
 800 LET V=V+B
 810 IF U<1 THEN 870
 820 IF U>8 THEN 870
 830 IF V<1 THEN 870
 840 IF V>8 THEN 870
 850 IF S(U,V)<>0 THEN 870
 860 GOSUB 910
 870 NEXT B
 880 NEXT A
 890 RETURN
 900 GOTO 1420
 910 REM
 920 LET P=P+1
 930 IF P=K THEN 1230
 940IF V<>(4.5+(3.5*G)) THEN 960
 950 LET Q=Q+2
 960 IF X<>(4.5-(3.5*G)) THEN 980
 970LET Q=Q-2
 980 REM
 990 IF U<>1 THEN 1010
1000 LET Q=Q+1
1010 IF U<>8 THEN 1030
1020 LET Q=Q+1
1030 FOR C=-1TO1 STEP 2
1040 IF S(U+C,V+G)<1 THEN 1080
1050 LET Q=Q-1
1060 IF S(U-C,V-G)<>0 THEN 1080
1070 LET Q=Q-1
1080 REM THIS WAS THE EVALUATION SECTION
1090 REM
1100 NEXT C
1110 LET R(P)=Q
1120 LETQ=0
1130 RETURN
1140 IF P=0 THEN 1880
1150 FOR J=10TO-10 STEP -1
1160 FOR F=1TOP
1170 IF R(F)=J THEN 1200
1180 NEXT F
1190 NEXT J
1200 LET K=F+P
1210 GOSUB 230
1220 RETURN
1230 PRINT"  I MOVE FROM ("X;Y") TO ("U;V")"
1240 LET F=0
1250 LET P=0
1260 LET K=0
1270 IF V<>(4.5+(3.5*G)) THEN 1300
1280 LET S(U,V)=2*G
1290 GOTO 1310
1300 LET S(U,V)=S(X,Y)
1310 LET S(X,Y)=0
1320 IF ABS(X-U)<>2 THEN 1340
1330 LET S((X+U)/2,(Y+V)/2)=0
1340 PRINT"BOARD";
1350 INPUT D$
1360 IF D$<>"YES" THEN1390
1370 GOSUB 1410
1380 RETURN
1390 GOSUB 1580
1400 RETURN
1410 PRINT
1420 FOR Y=8TO1 STEP -1
1430 FOR X=1TO8
1440 LET I=2*X
1450 IF S(X,Y)<>0 THEN 1470
1460 PRINT TAB(I)".";
1470 IF S(X,Y)<>1 THEN 1490
1480 PRINT TAB(I)"O";
1490 IF S(X,Y)<>-1 THEN 1510
1500 PRINT TAB(I)"X";
1510 IF S(X,Y)<>-2 THEN 1530
1520 PRINT TAB(I)"X*";
1530 IF S(X,Y)<>2 THEN 1550
1540 PRINT TAB(I)"O*";
1550 NEXT X
1560 PRINT
1570 NEXT Y
1580 PRINT
1590 PRINT"FROM";
1600 INPUT E,H
1610 LET X=E
1620 LET Y=H
1630 IF S(X,Y)<>0 THEN 1670
1640 PRINT "THERE IS NO ONE OCCUPYING THAT SPACE"
1650 PRINT
1660 GOTO  1590
1670 PRINT"TO";
1680 INPUT A,B
1690 LET X=A
1700 LET Y=B
1710 IF S(X,Y)=0 THEN 1750
1720 PRINT"THAT SPACE IS ALREADY OCCUPIED"
1730 PRINT
1740 GOTO 1670
1750 ' LET S(A$B)=S(E,H)
1760 LET S(A,B)=S(E,H)
1770 LET S(E,H)=0
1780 LET T=(4.5-(3.5*G))
1790 IF ABS(E-A)<>2 THEN 1810
1800 LET S((E+A)/2,(H+B)/2)=0
1810 IF B<>T THEN 1830
1820 LET S(A,B)=-2*G
1830 FOR X=8TO8
1840 FOR Y=8TO8
1850 RETURN
1860 NEXT Y
1870 NEXT X
1880 PRINT"    VERY GOOD,  YOU WIN!"
1890 PRINT
1900 PRINT
1910 PRINT"                       -CHUCK OUT"
1920 END

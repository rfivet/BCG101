   5 DATA0
  10 DIMB(13),G(13),F(50)\READN
  15 FORI=0TON-1\READF(I)\NEXTI
  20 PRINT\PRINT "GAME OF *** AWARI ***"\E=0
  25 FORI=0TO12\LETB(I)=3\NEXTI
  30 LETC=0\LETF(N)=0\LETB(13)=0\LETB(6)=0
  35 GOSUB500
  40 PRINT"YOUR MOVE";\GOSUB110
  45 IFE=0GOTO80
  50 IFM<>HTHEN55\GOSUB100
  55 IFE=0GOTO80
  60 PRINT"MY MOVE IS ";\GOSUB800
  65 IFE=0GOTO80
  70 IFM<>HTHEN75\PRINT",";\GOSUB800
  75 IFE>0GOTO35
  80 PRINT\PRINT"GAME OVER"
  85 LET D=B(6)-B(13)\IF D>=0 THEN 90\PRINT "I WIN BY";-D"POINTS"\GOTO 20
  90 LETN=N+1\IFD<>0THEN95\PRINT"DRAWN GAME"\GOTO 20
  95 PRINT"YOU WIN BY"D"POINTS"\GOTO20
 100 PRINT"AGAIN";
 110 INPUTM\IFM>=7THEN120\IFM<=0THEN120\LETM=M-1\GOTO130
 120 PRINT"ILLEGAL MOVE"\GOTO100
 130 IFB(M)=0GOTO120
 140 LETH=6\GOSUB200
 150 GOTO500
 200 LETK=M\GOSUB600
 205 LETE=0\IFK<=6THEN210\LETK=K-7
 210 LETC=C+1\IFC>=9THEN215\LETF(N)=F(N)*6+K
 215 FORI=0TO5\IFB(I)<>0THEN230
 220 NEXTI
 225 RETURN
 230 FORI=7TO12\IFB(I)=0THEN235\LETE=1\RETURN
 235 NEXTI\RETURN
 500 PRINT\PRINT"   ";
 505 FORI=12TO7STEP-1\GOSUB580
 510 NEXTI
 515 PRINT\LETI=13\GOSUB580
 520 PRINT" ","             ";\PRINTB(6)\PRINT"   ";
 525 FORI=0TO5\GOSUB580
 530 NEXTI
 535 PRINT\PRINT\RETURN
 580 IFB(I)>=10THEN585\PRINT" ";
 585 PRINTB(I);\RETURN
 600 LETP=B(M)\LETB(M)=0
 605 FORP=PTO1STEP-1\LETM=M+1\IFM<=13THEN610\LETM=M-14
 610 LETB(M)=B(M)+1\NEXTP
 615 IFB(M)<>1THEN620\IFM=6THEN620\IFM=13THEN620\IFB(12-M)<>0GOTO625
 620 RETURN
 625 LETB(H)=B(H)+B(12-M)+1\LETB(M)=0\LETB(12-M)=0\RETURN
 800 LETD=-99\LETH=13
 805 FORI=0TO13\LETG(I)=B(I)\NEXTI
 810 FORJ=7TO12\IFB(J)=0THEN885
 815 LETQ=0\LETM=J\GOSUB600
 820 FORI=0TO5\IFB(I)=0GOTO845
 825 LETL=B(I)+I\LETR=0
 830 IFL<=13THEN835\LETL=L-14\LETR=1\GOTO830
 835 IFB(L)<>0THEN840\IFL=6THEN840\IFL=13THEN840\LETR=B(12-L)+R
 840 IFR<=QTHEN845\LETQ=R
 845 NEXTI
 850 LETQ=B(13)-B(6)-Q\IFC>8GOTO875
 855 LETK=J\IFK<=6THEN860\LETK=K-7
 860 FORI=0TON-1\IFF(N)*6+K<>INT(F(I)/6^(7-C)+.1)THEN870\LETQ=Q-2
 870 NEXTI
 875 FORI=0TO13\LETB(I)=G(I)\NEXTI
 880 IFQ<DTHEN885\LETA=J\LETD=Q
 885 NEXTJ
 890 LETM=A\PRINTCHR$(42+M);\GOTO200
 900 FORI=0TON-1\PRINTB(I)\NEXTI
 999 END

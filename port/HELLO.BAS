   5 GOTO 400
   8 DIM A$(2)
  10 PRINT "HELLO, I'M AN EDUSYSTEM-25. MY NAME IS PETEY P. EIGHT."
  20 PRINT\PRINT "WHAT'S YOUR NAME";\LINPUT A$(0),A$(1),A$(2)\PRINT
  35 PRINT " HI THERE ";\GOSUB500\PRINT".  ARE YOU ENJOYING YOURSELF HERE"
  40 PRINT "IN BEAUTIFUL MAYNARD, MASS";
  45 INPUT B$\PRINT
  50 IF B$="YES" THEN 70
  55 IF B$="NO" THEN 80
  60 PRINT " ";\GOSUB500\PRINT", I DON'T UNDERSTAND YOUR ANSWER OF '"B$"'."
  65 PRINT "PLEASE ANSWER 'YES' OR 'NO'.  DO YOU LIKE IT HERE"
  67 GOTO 40
  70 PRINT "OH, I'M GALD TO HERE THAT ";\GOSUB500\PRINT
  75 GOTO 100
  80 PRINT "OH, SORRY TO HEAR THAT ";\GOSUB 500\PRINT ", MAYBE WE CAN"
  85 PRINT "BRIGHTEN UP YOUR STAY A BIT"
 100 PRINT
 105 PRINT "SAY, ";\GOSUB500\PRINT", I CAN SOLVE ALL KINDS OF PROBLEMS"
 110 PRINT "EXCEPT THOSE DEALING WITH GREECE.  WHAT KIND OF"
 115 PRINT "PROBLEMS DO YOU HAVE (ANSWER SEX, HEALTH, MONEY,"
 120 PRINT "OR JOB)";
 125 INPUT C$\PRINT
 130 IF C$="SEX" THEN 200
 132 IF C$="HEALTH" THEN 180
 134 IF C$="MONEY" THEN 160
 136 IF C$="JOB" THEN 145
 138 PRINT "OH, ";\GOSUB500\PRINT", YOUR ANSWER OF '"C$"' IS GREEK TO ME."
 140 GOTO 250
 145 PRINT "I CAN SYMPATHIZE WITH YOU ";\GOSUB500\PRINT". I HAVE TO WORK"
 148 PRINT "VERY LONG HOURS FOR NO PAY -- AND SOME OF MY BOSSES REALLY"
 150 PRINT"BEAT MY KEYBOARD. MY ADVICE TO YOU ";\GOSUB500\PRINT", IS TO SELL"
 153 PRINT "IN THE EDUCATION MARKET.  IT'S GREAT FUN."
 155 GOTO 250
 160 PRINT "SORRY, ";\GOSUB500\PRINT", I'M BROKE TOO.  WHY DON'T YOU SELL"
 163 PRINT "ENCYCLOPAEDIAS OR MARRY SOMEONE RICH OR STOP EATING"
 165 PRINT "SO YOU WON'T NEED SO MUCH MONEY?"
 170 GOTO 250
 180 PRINT "MY ADVICE TO YOU ";\GOSUB500\PRINT", IS:"
 185 PRINT "     1. TAKE TWO ASPRIN"
 188 PRINT "     2. DRINK PLENTY OF FLUIDS (ORANGE JUICE, NOT BEER!)"
 190 PRINT "     3. GO TO BED (ALONE)"
 195 GOTO 250
 200 PRINT "IS YOUR PROBLEM TOO MUCH OR TOO LITTLE";
 205 INPUT D$\PRINT
 210 IF D$="TOO MU" THEN 220
 213 IF D$="TOO LI" THEN 230
 215 PRINT "DON'T GET ALL SHOOK ";\GOSUB 500\PRINT ",JUST ANSWER THE QUESTION"
 217 PRINT "WITH 'TOO MUCH' OR 'TOO LITTLE'.  WHICH IS IT";
 218 GOTO 205
 220 PRINT "YOU CALL THAT A PROBLEM?!!  I SHOULD HAVE SUCH PROBLEMS!"
 225 PRINT "IF IT BOTHERS YOU, TAKE A COLD SHOWER ";\GOSUB500\PRINT"."
 228 GOTO 250
 230 PRINT "WHY ARE YOU HERE  ";\GOSUB500\PRINT"?  YOU SHOULD BE"
 235 PRINT "IN TOKYO OR NEW YORK OR AMSTERDAM OR SOMEPLACE WITH SOME"
 240 PRINT "REAL ACTION."
 250 PRINT
 255 PRINT "ANY MORE PROBLEMS YOU WANT SOLVED, ";\GOSUB500
 260 INPUT E$\PRINT
 270 IF E$="YES" THEN 280
 273 IF E$="NO" THEN 300
 275 PRINT "JUST A SIMPLE 'YES' OR 'NO' PLEASE, ";\GOSUB500\PRINT"."
 278 GOTO 255
 280 PRINT "WHAT KIND (SEX, MONEY, HEALTH, JOB)";
 285 GOTO 125
 300 PRINT
 302 PRINT "THAT WILL BE $5.00 FOR THE ADVICE, ";\GOSUB500\PRINT"."
 305 PRINT "PLEASE LEAVE THE MONEY ON THE TERMINAL."
 307 PRINT\PRINT\PRINT
 310 PRINT "DID YOU LEAVE THE MONEY";
 315 INPUT G$\PRINT
 325 IF G$="YES" THEN 350
 330 IF G$="NO" THEN 370
 335 PRINT "YOUR ANSWER OF '"G$"' CONFUSES ME, ";\GOSUB500\PRINT".  PLEASE"
 340 PRINT "RESPOND WITH A 'YES' OR 'NO'."
 345 GOTO 310
 350 PRINT "HEY, ";\GOSUB500\PRINT"???   YOU LEFT NO MONEY AT ALL!"
 355 PRINT "YOU ARE CHEATING ME OUT OF MY HARD-EARNED LIVING."
 360 PRINT "RIP OFF, ";\GOSUB500\PRINT". *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*"
 365 GOTO 390
 370 PRINT "THAT'S HONEST, ";\GOSUB500\PRINT", BUT HOW DO YOU EXPECT"
 375 PRINT "ME TO GO ON WITH MY PSYCHOLOGY STUDIES IF MY PATIENTS DON'T"
 380 PRINT "PAY THEIR BILLS?"
 385 PRINT\PRINT\PRINT "NOW LET ME TALK TO SOMEONE ELSE."
 390 PRINT "NICE MEETING YOU ";\GOSUB 500\PRINT ".  HAVE A NICE DAY!!"
 400 FOR N=1 TO 7
 402 PRINT
 405 NEXT N
 410 GOTO 10
 500 FOR I=0 TO 2\PRINT A$(I);\NEXT I
 510 RETURN
 999 END

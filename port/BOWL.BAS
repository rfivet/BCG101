   9  REMARK AND ORIGINAL IDEA AND PROGRAMED BY PAUL PERAINO
  18  REMARK FROM WOODROW WILSON HIGH SCHOOL
  20 RANDOMIZE
  27 DIM C(15),A(40,3)
  36  PRINT "WELCOME TO THE ALLEY"
  45  PRINT "BRING YOUR FRIENDS"
  54  PRINT "OKAY LET'S FIRST GET ACQUAINTED"
  63 PRINT\PRINT\PRINT
  72 PRINT "WANT INSTRUCTIONS (Y OR N)";
  81  INPUT Z$
  90  IF Z$="Y" THEN 99
  96  IF Z$="N" THEN 153
  99  PRINT "THE GAME OF BOWLING TAKES MIND AND SKILL.DURING THE GAME"
 108  PRINT "THE COMPUTER WILL KEEP SCORE.YOU MAY COMPETE WITH"
 117  PRINT "OTHER PLAYERS[UP TO FOUR].YOU WILL BE PLAYING TEN FRAMES"
 126  PRINT "ON THE PIN DIAGRAM 'O' MEANS THE PIN IS DOWN...'+' MEANS THE"
 135  PRINT "PIN IS STANDING.AFTER THE GAME THE COMPUTER WILL SHOW YOUR"
 144  PRINT "SCORES ."
 153  PRINT "FIRST OF ALL...HOW MANY ARE PLAYING (1-4)";
 162  INPUT R
 165  IF R<1 THEN 153\IF R>4 THEN 153
 171  PRINT
 180  PRINT "VERY GOOD..."
 198  F=1
 207  FOR P=1 TO R
 216  M=0
 225  B=1
 234  Q=0
 243  FOR I=1 TO 10\C(I)=0\NEXT I
 252  REMARK BALL GENERATOR USING MOD '15' SYSTEM
 261 PRINT "PLAYER"P" -- TYPE ROLL"
 270  INPUT N$
 279 K=0\D=0
 288  FOR I=1 TO 20
 297  X=INT(RND(I)*100)
 306  FOR J=1 TO 7
 315  IF X<15*J THEN 333
 324  NEXT J
 333 C(15*J-X)=1
 342  NEXT I
 351  REMARK PIN DIAGRAM
 360 PRINT "PLAYER:"P"    FRAME:"F"    BALL:"B
 369  FOR I=0 TO 3
 378  PRINT
 379  PRINT TAB(I);
 387  FOR J=1 TO 4-I
 396  K=K+1
 405 IF C(K)=1 THEN 432
 414  PRINT "+ ";
 423  GOTO 441
 432  PRINT "O ";
 441  NEXT J
 450  NEXT I
 459 PRINT\PRINT\PRINT
 468  REMARK ROLL ANALYSIS
 477  FOR I=1 TO 10
 486 D=D+C(I)
 495  NEXT I
 504  IF D-M <> 0 THEN 522
 513  PRINT "GUTTER!!"
 522 IF B<>1 THEN 549\IF D<>10 THEN 549
 531  PRINT "STRIKE!!!!!"
 540  Q=3
 549 IF B<>2 THEN 576\IF D<>10 THEN 576
 558  PRINT "SPARE!!!!"
 567  Q=2
 576 IF B<>2 THEN 603\IF D>=10 THEN 603
 585  PRINT "ERROR!!!"
 594  Q=1
 603 IF B<>1 THEN 621\IF D>=10 THEN 621
 612  PRINT "ROLL YOUR 2ND BALL"
 621  REMARK STORAGE OF THE SCORES
 630  PRINT
 639 A(F+(P-1)*10,B)=D
 648  IF B=2 THEN 702
 657  B=2
 666  M=D
 675  IF Q=3 THEN 621
 684 A(F+(P-1)*10,3)=D-M
 693 IF Q=0 THEN 252
 702 A(F+(P-1)*10,3)=Q
 711  NEXT P
 720  F=F+1
 729 IF F<11 THEN 207
 730  PRINT "FRAMES"
 738  FOR I=1 TO 10
 747  PRINT " "I;
 756  NEXT I
 765  PRINT
 774  FOR P=1 TO R
 783  FOR I=1 TO 3
 792  FOR J=1 TO 10
 801   V=A(J+(P-1)*10,I)
 803   IF V>=10 THEN 805\PRINT " ";
 805   PRINT V;
 810  NEXT J
 815  PRINT
 819  NEXT I
 828  PRINT
 837  NEXT P
 846  PRINT "DO YOU WANT ANOTHER GAME"
 855  INPUT A$
 864 IF A$="Y" THEN 153
 873  END

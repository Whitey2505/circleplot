5 REM plotting a circle
10 H=40
20 V=20 
30 R=15
90 GOSUB 5000
95 PRINT TAB(30)"Plotting a circle";
96 PRINT TAB(5) "It looks oval because each screen character is taller than it i
s wide!";
100 FOR A= 0 TO 6.2 STEP .2 :rem formula is in radians not degrees!
200 X1= INT(R*COS(A))
300 Y1= INT(R*SIN(A))
350 CO=X1+H:RO=Y1+V:GOSUB 5020: PRINT ".";
400 NEXT A
4999 END
5000 REM CLEAR SCREEN                   
5010 PRINT CHR$(27);"[2J": RETURN       
5020 REM Set cursor pos ro=row, co=col
5030 RO$=STR$(RO):RO$=RIGHT$(RO$,LEN(RO$)-1)
5040 CO$=STR$(CO):CO$=RIGHT$(CO$,LEN(CO$)-1)
5050 PRINT CHR$(27)+"["+RO$+";"+CO$+"H";
5070 RETURN

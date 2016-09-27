APPEND TALVILON
IF WEIGHT #-1 ~!Alignment(Player1,MASK_EVIL)~ THEN BEGIN A_2
  SAY #35681 // ~I know of your actions, <CHARNAME>. You are no longer among the faithful, and may consider your role here at an end.~
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADtalvilon","GLOBAL",1)
EscapeArea()~ EXIT
END
END

APPEND HELMBYR
IF WEIGHT #-1 ~!Alignment(Player1,MASK_GENEUTRAL)~ THEN BEGIN C_2
  SAY #35972 // ~You are no longer worthy to serve under Helm. Your services at this temple are no longer required.~
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADhelmbyr","GLOBAL",1)
EscapeArea()~ EXIT
END
END

APPEND LATLARA
IF WEIGHT #-1 ~!Alignment(Player1,MASK_GOOD)~ THEN BEGIN B_3
  SAY #35995 // ~It seems Lathander no longer favours you, <CHARNAME>. We cannot allow you to continue your duties here with the path you have taken.~
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADlatlara","GLOBAL",1)
EscapeArea()~ EXIT
END
END

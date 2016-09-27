// [^!]* represents CR/LFs

REPLACE_TRIGGER_TEXT FINMEL01 ~Alignment("sarevok",MASK_EVIL)[^!]*!DifficultyLT(3)[^!]*OR(2)[^!]*!Alignment(Player1,MASK_EVIL)[^!]*!ReputationLT(Player1,10)~
~Alignment("sarevok",MASK_EVIL)
!DifficultyLT(3)
OR(2)
!Alignment(Player1,MASK_EVIL)
GlobalGT("D0VIRTUE","GLOBAL",9)~

REPLACE_TRIGGER_TEXT FINMEL01 ~Alignment("sarevok",MASK_EVIL)[^!]*!DifficultyLT(3)[^!]*Alignment(Player1,MASK_EVIL)[^!]*ReputationLT(Player1,10)~
~Alignment("sarevok",MASK_EVIL)
!DifficultyLT(3)
Alignment(Player1,MASK_EVIL)
GlobalLT("D0VIRTUE","GLOBAL",10)~

REPLACE_ACTION_TEXT PLAYER1 ~ReputationInc(-1)~ ~IncrementGlobal("D0Change","GLOBAL",-1)~

REPLACE_ACTION_TEXT PLAYER1 ~ReputationInc(-2)~ ~IncrementGlobal("D0Change","GLOBAL",-2)~

REPLACE_ACTION_TEXT PLAYER1 ~ReputationInc(-3)~ ~IncrementGlobal("D0Change","GLOBAL",-3)~

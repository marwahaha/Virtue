REPLACE_TRIGGER_TEXT J#KLSYP ~HappinessLT(Myself,-299)~ ~GlobalLT("D0Happiness","LOCALS",3)
!CheckStatGT(Player1,18,CHR)~

REPLACE_TRIGGER_TEXT J#KLSYJ ~OR(2)[^!]*!ReputationGT(Player1,15)[^!]*!CheckStatGT(Player1,14,CHR)~ ~OR(2)
GlobalLT("D0Happiness","LOCALS",16)
!CheckStatGT(Player1,14,CHR)~

REPLACE_TRIGGER_TEXT J#KLSYJ ~ReputationGT(Player1,10)~ ~GlobalGT("D0Happiness","LOCALS",10)~

REPLACE_TRIGGER_TEXT J#KLSYJ ~ReputationLT(Player1,11)~ ~GlobalLT("D0Happiness","LOCALS",11)~

REPLACE_TRIGGER_TEXT J#KLSYJ ~ReputationLT(Player1,8)~ ~GlobalLT("D0Happiness","LOCALS",8)~

REPLACE_TRIGGER_TEXT J#KLSYJ ~ReputationLT(Player1,5)~ ~GlobalLT("D0Happiness","LOCALS",5)~

REPLACE_TRIGGER_TEXT J#KLSYJ ~ReputationLT(Player1,14)~ ~GlobalLT("D0Happiness","LOCALS",14)~

REPLACE_TRIGGER_TEXT J#KLSYJ ~ReputationGT(Player1,13)~ ~GlobalGT("D0Happiness","LOCALS",13)~

REPLACE_TRIGGER_TEXT J#KLSYJ ~ReputationGT(Player1,15)~ ~GlobalGT("D0Happiness","LOCALS",13)~

REPLACE_TRIGGER_TEXT J#KLS25J ~ReputationGT(Player1,15)~ ~GlobalGT("D0Happiness","LOCALS",15)~

REPLACE_TRIGGER_TEXT J#KLS25J ~ReputationGT(Player1,10)~ ~GlobalGT("D0Happiness","LOCALS",10)~

REPLACE_TRIGGER_TEXT J#KLS25J ~ReputationLT(Player1,11)~ ~GlobalLT("D0Happiness","LOCALS",11)~

REPLACE_TRIGGER_TEXT BJ#KLSY ~ReputationLT(Player1,16)[^!]*ReputationGT(Player1,9)~ ~GlobalLT("D0Happiness","LOCALS",16)
GlobalGT("D0VIRTUE","GLOBAL",9)~

REPLACE_TRIGGER_TEXT BJ#KLSY ~ReputationGT(Player1,14)~ ~GlobalGT("D0Happiness","LOCALS",14)~

REPLACE_TRIGGER_TEXT BJ#KLSY ~ReputationGT(Player1,18)~ ~GlobalGT("D0Happiness","LOCALS",18)~

REPLACE_TRIGGER_TEXT BJ#KLSY ~ReputationGT(Player1,15)~ ~GlobalGT("D0Happiness","LOCALS",15)~

REPLACE_TRIGGER_TEXT BJ#KLSY ~ReputationLT(Player1,10)~ ~GlobalLT("D0Happiness","LOCALS",10)~

REPLACE_TRIGGER_TEXT BJ#KLSY ~ReputationGT(Player1,9)~ ~GlobalGT("D0Happiness","LOCALS",9)~

REPLACE_TRIGGER_TEXT BJ#KLS25 ~!ReputationGT(Player1,10)~ ~GlobalLT("D0Happiness","LOCALS",11)~

REPLACE_TRIGGER_TEXT BJ#KLS25 ~ReputationGT(Player1,10)~ ~GlobalGT("D0Happiness","LOCALS",10)~

REPLACE_TRIGGER_TEXT BJ#KLS25 ~ReputationGT(Player1,14)~ ~GlobalGT("D0Happiness","LOCALS",14)~

REPLACE_TRIGGER_TEXT BJ#KLS25 ~ReputationLT(Player1,15)~ ~GlobalLT("D0Happiness","LOCALS",15)~

REPLACE_TRIGGER_TEXT BJ#KLS25 ~ReputationGT(Player1,12)~ ~GlobalGT("D0Happiness","LOCALS",12)~

REPLACE_TRIGGER_TEXT BJ#KLS25 ~ReputationLT(Player1,13)~ ~GlobalLT("D0Happiness","LOCALS",13)~

///

REPLACE_ACTION_TEXT STOLEN ~IncrementGlobal("FWKelseyHatesStealing","GLOBAL",1)[^!]*ReputationInc(-2)~ ~IncrementGlobal("FWKelseyHatesStealing","GLOBAL",1)
ReputationInc(-2)
IncrementGlobal("D0Change","GLOBAL",-2)~

REPLACE_TRIGGER_TEXT CORNEIL ~ReputationGT(LastTalkedToBy,3)~ ~GlobalGT("D0Happiness","LOCALS",3)~

REPLACE_TRIGGER_TEXT CORNEIL ~ReputationLT(LastTalkedToBy,4)~ ~GlobalGT("D0Happiness","LOCALS",4)~

REPLACE_ACTION_TEXT TOLGER ~ReputationInc(-1)~ ~IncrementGlobal("D0Change","GLOBAL",-1)~

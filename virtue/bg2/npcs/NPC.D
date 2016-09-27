REPLACE_TRIGGER_TEXT AERIEP ~HappinessLT(Myself,-290)~ ~GlobalLT("D0Happiness","LOCALS",3)~
REPLACE_TRIGGER_TEXT AERIEP ~HappinessGT(Myself,-289)~ ~GlobalGT("D0Happiness","LOCALS",2)~

REPLACE_TRIGGER_TEXT ANOMENP ~HappinessLT(Myself,-290)~ ~OR(2)
Alignment(Myself,MASK_GOOD)
GlobalLT("D0VIRTUE","GLOBAL",2)
OR(2)
Alignment(Myself,MASK_GENEUTRAL)
GlobalLT("D0VIRTUE","GLOBAL",3)~

REPLACE_TRIGGER_TEXT CERNDP ~HappinessLT(Myself,-299)~ ~GlobalLT("D0Happiness","LOCALS",2)~

REPLACE_TRIGGER_TEXT EDWINP ~HappinessLT(Myself,-290)~ ~GlobalGT("D0Happiness","LOCALS",18)~

REPLACE_TRIGGER_TEXT HAERDAP ~HappinessLT(Myself,-299)~ ~GlobalLT("D0Happiness","LOCALS",2)~

REPLACE_TRIGGER_TEXT IMOEN2P ~HappinessLT(Myself,-290)~ ~GlobalLT("D0Happiness","LOCALS",3)~

REPLACE_TRIGGER_TEXT JAHEIRAP ~HappinessLT(Myself,-290)~ ~GlobalLT("D0Happiness","LOCALS",2)~

REPLACE_TRIGGER_TEXT JANP ~HappinessLT(Myself,-299)~ ~GlobalLT("D0Happiness","LOCALS",2)~

REPLACE_TRIGGER_TEXT KELDORP ~HappinessLT(Myself,-299)~ ~GlobalLT("D0Happiness","LOCALS",3)~

REPLACE_TRIGGER_TEXT KORGANP ~HappinessLT(Myself,-299)~ ~GlobalGT("D0Happiness","LOCALS",18)~

REPLACE_TRIGGER_TEXT MAZZYP ~HappinessLT(Myself,-299)~ ~GlobalLT("D0Happiness","LOCALS",3)~

REPLACE_TRIGGER_TEXT MINSCP ~HappinessLT(Myself,-290)~ ~GlobalLT("D0Happiness","LOCALS",3)~

REPLACE_TRIGGER_TEXT NALIAP ~!HappinessLT(Myself,0)~ ~GlobalGT("D0Happiness","LOCALS",8)~
REPLACE_TRIGGER_TEXT NALIAP ~HappinessLT(Myself,0)~ ~GlobalLT("D0Happiness","LOCALS",9)~
REPLACE_TRIGGER_TEXT NALIAP ~HappinessLT(Myself,-299)~ ~GlobalLT("D0Happiness","LOCALS",3)~

REPLACE_TRIGGER_TEXT VALYGARP ~HappinessLT(Myself,-290)~ ~GlobalLT("D0Happiness","LOCALS",3)~

REPLACE_TRIGGER_TEXT VICONIP ~HappinessLT(Myself,-299)~ ~OR(2)
Alignment(Myself,MASK_EVIL)
GlobalLT("D0Happiness","LOCALS",2)
OR(2)
Alignment(Myself,MASK_GENEUTRAL)
GlobalGT("D0Happiness","LOCALS",18)~

REPLACE_TRIGGER_TEXT YOSHP ~HappinessLT(Myself,-290)~ ~GlobalLT("D0Happiness","LOCALS",2)~

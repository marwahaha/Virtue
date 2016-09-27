REPLACE_TRIGGER_TEXT BFWKETO ~ReputationGT(Player1,15)~ ~GlobalGT("D0Happiness","LOCALS",15)~

REPLACE_TRIGGER_TEXT BFWKETO ~ReputationGT(Player1,3)[^!]*ReputationLT(Player1,8)~ ~GlobalGT("D0Happiness","LOCALS",3)
GlobalLT("D0Happiness","LOCALS",8)~

REPLACE_TRIGGER_TEXT FWKETOJ ~ReputationGT(Player1,10)~ ~GlobalGT("D0Happiness","LOCALS",10)~
REPLACE_TRIGGER_TEXT FWKETOJ ~ReputationLT(Player1,10)~ ~GlobalLT("D0Happiness","LOCALS",11)~

REPLACE_TRIGGER_TEXT RAELIS ~ReputationGT(Player1,10)[^!]*IsValidForPartyDialog("Keto")~ ~GlobalGT("D0Virtue","GLOBAL",10)
IsValidForPartyDialog("Keto")~

REPLACE_TRIGGER_TEXT FWKETOP ~HappinessLT(Myself,-299)~ ~GlobalLT("D0Happiness","LOCALS",2)~

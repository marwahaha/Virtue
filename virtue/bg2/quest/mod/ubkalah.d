REPLACE_ACTION_TEXT ~U!KGEN~ ~ReputationInc(1)[^!]*CreateVisualEffectObject("ICRAISEI",Player1)~ ~ReputationInc(-1)
IncrementGlobal("D0Change","GLOBAL",1)
CreateVisualEffectObject("ICRAISEI",Player1)~

REPLACE_ACTION_TEXT ~U!KGEN~ ~CreateCreatureObjectOffset("U!Kdead",Player1,[0.0])[^!]*AddexperienceParty(1000)~ ~CreateCreatureObjectOffset("U!Kdead",Player1,[0.0])
IncrementGlobal("D0Change","GLOBAL",1)
AddexperienceParty(1000)~

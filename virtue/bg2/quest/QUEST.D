// REPLACES REP CHANGES IN EXISTING QUESTS

// [^!]* represents CR/LFs

REPLACE ANOMENJ
IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #25559 /* ~Yes... yes!  It is as you say, <CHARNAME>!  Come... let us go to Saerk's demesne and I shall find justice for my sister!~ */
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("HaerDalis")
!IsValidForPartyDialog("Viconia")~ THEN DO ~SetGlobal("KillSaerk","GLOBAL",1)
SetGlobal("AnomenDecide","GLOBAL",2)
IncrementGlobal("D0Change","GLOBAL",-2)~ UNSOLVED_JOURNAL #34659 /* ~Anomen returns home after his sister's death.

Since it seems that the courts can do nothing regarding the death of Anomen's sister, I have advised him to seek out this Saerk and take vengeance.  Saerk can be found in a large mansion in the Bridge District.~ */ EXIT
  IF ~IsValidForPartyDialog("Jaheira")~ THEN DO ~SetGlobal("KillSaerk","GLOBAL",1)
SetGlobal("AnomenDecide","GLOBAL",2)
IncrementGlobal("D0Change","GLOBAL",-2)~ UNSOLVED_JOURNAL #34659 /* ~Anomen returns home after his sister's death.

Since it seems that the courts can do nothing regarding the death of Anomen's sister, I have advised him to seek out this Saerk and take vengeance.  Saerk can be found in a large mansion in the Bridge District.~ */ EXTERN ~JAHEIRAJ~ 495
  IF ~!IsValidForPartyDialog("Jaheira")
IsValidForPartyDialog("HaerDalis")~ THEN DO ~SetGlobal("KillSaerk","GLOBAL",1)
SetGlobal("AnomenDecide","GLOBAL",2)
IncrementGlobal("D0Change","GLOBAL",-2)~ UNSOLVED_JOURNAL #34659 /* ~Anomen returns home after his sister's death.

Since it seems that the courts can do nothing regarding the death of Anomen's sister, I have advised him to seek out this Saerk and take vengeance.  Saerk can be found in a large mansion in the Bridge District.~ */ EXTERN ~HAERDAJ~ 132
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("HaerDalis")
IsValidForPartyDialog("Viconia")~ THEN DO ~SetGlobal("KillSaerk","GLOBAL",1)
SetGlobal("AnomenDecide","GLOBAL",2)
IncrementGlobal("D0Change","GLOBAL",-2)~ UNSOLVED_JOURNAL #34659 /* ~Anomen returns home after his sister's death.

Since it seems that the courts can do nothing regarding the death of Anomen's sister, I have advised him to seek out this Saerk and take vengeance.  Saerk can be found in a large mansion in the Bridge District.~ */ EXTERN ~VICONIJ~ 166
END
END

REPLACE COR
IF ~~ THEN BEGIN 29 // from: 51.0
  SAY #8030 /* ~Return to me when you have accomplished your task. Your friends may keep what treasure they find within Saerk's house and I shall honor their names forever more.~ */
  IF ~~ THEN DO ~SetGlobal("KillSaerk","GLOBAL",1)
IncrementGlobal("D0Change","GLOBAL",-2)~ EXIT
END
END

REPLACE_ACTION_TEXT AEWIMER1 ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT AMCLER01 ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT AMMAYOR ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_TRIGGER_TEXT BAERIE25 ~OR(2)[^!]*[^!]*Alignment(Player1,MASK_EVIL)[^!]*ReputationLT(Player1,10)~ ~GlobalLT("D0Happiness","LOCALS",10)~

REPLACE_TRIGGER_TEXT BAERIE25 ~!Alignment(Player1,MASK_EVIL)[^!]*ReputationGT(Player1,9)~ ~GlobalGT("D0Happiness","LOCALS",9)~

REPLACE_TRIGGER_TEXT BALTH ~ReputationGT(Player1,12)~ ~GlobalGT("D0VIRTUE","GLOBAL",12)~

REPLACE_TRIGGER_TEXT BALTH ~ReputationGT(Player1,7)[^!]*ReputationLT(Player1,13)~ ~GlobalGT("D0VIRTUE","GLOBAL",7)
GlobalLT("D0VIRTUE","GLOBAL",13)~

REPLACE_TRIGGER_TEXT BALTH ~ReputationLT(Player1,8)~ ~GlobalLT("D0VIRTUE","GLOBAL",8)~

REPLACE_TRIGGER_TEXT BCERND ~ReputationGT(Player1,10)~ ~GlobalGT("D0Happiness","LOCALS",10)~

REPLACE_TRIGGER_TEXT BCERND ~ReputationLT(Player1,11)~ ~GlobalLT("D0Happiness","LOCALS",11)~

REPLACE_ACTION_TEXT BHARVAL ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT BHNALLA ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT BHOISIG ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_TRIGGER_TEXT BJAHEI25 ~ReputationGT(LastTalkedToBy,13)~ ~GlobalGT("D0Happiness","LOCALS",13)~

REPLACE_TRIGGER_TEXT BJAHEI25 ~ReputationLT(LastTalkedToBy,14)~ ~GlobalLT("D0Happiness","LOCALS",14)~

REPLACE_TRIGGER_TEXT BKELDOR ~ReputationGT(Player1,14)~ ~GlobalGT("D0VIRTUE","GLOBAL",14)~

REPLACE_TRIGGER_TEXT BKELDOR ~ReputationLT(Player1,9)~ ~GlobalLT("D0Happiness","LOCALS",9)~

REPLACE_TRIGGER_TEXT BMAZZY ~ReputationGT(Player1,4)[^!]*ReputationLT(Player1,8)~ ~GlobalGT("D0Happiness","LOCALS",4)
GlobalLT("D0Happiness","LOCALS",8)~

REPLACE_TRIGGER_TEXT BMAZZY ~ReputationLT(Player1,5)~ ~GlobalLT("D0Happiness","LOCALS",5)~

REPLACE_TRIGGER_TEXT BMAZZY ~ReputationGT(Player1,12)~ ~ReputationGT(Player1,10)
GlobalGT("D0Happiness","LOCALS",12)~

REPLACE_TRIGGER_TEXT BMAZZY ~ReputationGT(Player1,14)~ ~GlobalGT("D0Happiness","LOCALS",14)~

REPLACE_TRIGGER_TEXT BMAZZY ~Reputation(Player1,20)~ ~GlobalGT("D0Happiness","LOCALS",19)~

REPLACE_ACTION_TEXT CELOGAN ~ReputationInc(1)~ ~IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT CELOGAN ~ReputationInc(-1)~ ~IncrementGlobal("D0Change","GLOBAL",-1)~

APPEND CERND25A
IF ~~ THEN BEGIN LV_HR
  SAY @101
  IF ~~ THEN REPLY #65192 /* ~Perhaps so.  Join with me, then.~ */ GOTO 5
  IF ~~ THEN REPLY #65193 /* ~I'll argue with you later.  For now, wait here.~ */ GOTO 6
END
END

REPLACE CERND25A
IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65182 /* ~I knew when I saw you that we would meet again.  If you have called on me to join you in your quest, than I am more than willing.  I will do whatever I can to preserve the balance.~ */
  IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,RANGER_ALL)~ THEN REPLY #65183 /* ~And what if preserving the balance is not my goal?~ */ GOTO 2
  IF ~ReputationLT(Player1,10)
GlobalLT("D0VIRTUE","GLOBAL",10)
!Class(Player1,DRUID_ALL)
!Class(Player1,RANGER_ALL)~ THEN REPLY #65184 /* ~And what if preserving the balance is not my goal?~ */ GOTO 3
  IF ~ReputationGT(Player1,9)
GlobalLT("D0VIRTUE","GLOBAL",10)
!Class(Player1,DRUID_ALL)
!Class(Player1,RANGER_ALL)~ THEN REPLY #65184 /* ~And what if preserving the balance is not my goal?~ */ GOTO LV_HR
  IF ~GlobalGT("D0VIRTUE","GLOBAL",9)
!Class(Player1,DRUID_ALL)
!Class(Player1,RANGER_ALL)~ THEN REPLY #65185 /* ~And what if preserving the balance is not my goal?~ */ GOTO 4
  IF ~~ THEN REPLY #65186 /* ~Excellent.  Join with me, then.~ */ GOTO 5
  IF ~~ THEN REPLY #65187 /* ~Then wait here... I will deal with you soon.~ */ GOTO 6
END
END

REPLACE_TRIGGER_TEXT CHALSP01 ~OR(2)[^!]*Alignment(Player1,MASK_EVIL)[^!]*ReputationLT(Player1,8)~ ~OR(2)
Alignment(Player1,MASK_EVIL)
GlobalLT("D0VIRTUE","GLOBAL",8)~

REPLACE_TRIGGER_TEXT CHALSP01 ~!Alignment(Player1,MASK_EVIL)[^!]*!ReputationLT(Player1,8)~ ~!Alignment(Player1,MASK_EVIL)
GlobalGT("D0VIRTUE","GLOBAL",7)~

REPLACE_ACTION_TEXT CIRCG1 ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT DALESON ~ReputationInc(-4)~ ~IncrementGlobal("D0Change","GLOBAL",-2)~

REPLACE_ACTION_TEXT DASLAVE1 ~ReputationInc(1)~ ~IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT DASLAVE1 ~ReputationInc(-2)~ ~IncrementGlobal("D0Change","GLOBAL",-2)~

REPLACE_ACTION_TEXT DELCIA ~ReputationInc(-4)~ ~ReputationInc(-2)
IncrementGlobal("D0Change","GLOBAL",-2)~

REPLACE_ACTION_TEXT DEMSON ~ReputationInc(-2)~ ~ReputationInc(-2)
IncrementGlobal("D0Change","GLOBAL",-2)~

REPLACE_ACTION_TEXT GIRL2 ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT GORODR1 ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT HABREGA ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT HENDAK ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT HGKAR01 ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT INSPECT ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_TRIGGER_TEXT JAHEI25A ~ReputationGT(Player1,12)~ ~GlobalGT("D0Happiness","LOCALS",12)~

REPLACE_TRIGGER_TEXT JAHEI25A ~ReputationLT(Player1,13)~ ~GlobalLT("D0Happiness","LOCALS",13)~

REPLACE_TRIGGER_TEXT JAHEIRAJ ~ReputationGT(Player1,6)~ ~GlobalGT("D0Happiness","LOCALS",6)~

REPLACE_TRIGGER_TEXT JAHEIRAJ ~ReputationLT(Player1,7)~ ~GlobalLT("D0Happiness","LOCALS",7)~

REPLACE_TRIGGER_TEXT JAHEIRAJ ~ReputationGT(Player1,12)~ ~GlobalGT("D0Happiness","LOCALS",12)~

REPLACE_TRIGGER_TEXT JAHEIRAJ ~ReputationLT(Player1,13)~ ~GlobalLT("D0Happiness","LOCALS",13)~

REPLACE_TRIGGER_TEXT JAHEIRAP ~ReputationGT(Player1,5)~ ~OR(2)
ReputationGT(Player1,5)
GlobalGT("D0Happiness","LOCALS",5)~

REPLACE_TRIGGER_TEXT JAHEIRAP ~ReputationLT(Player1,6)~ ~ReputationLT(Player1,6)
GlobalLT("D0Happiness","LOCALS",6)~

REPLACE_TRIGGER_TEXT JATERMIN ~ReputationLT(Player1,15)~ ~GlobalLT("D0VIRTUE","GLOBAL",15)~

REPLACE_TRIGGER_TEXT JATERMIN ~ReputationGT(Player1,14)~ ~GlobalGT("D0VIRTUE","GLOBAL",14)~

REPLACE_TRIGGER_TEXT JATERMIN ~ReputationLT(Player1,10)~ ~GlobalLT("D0VIRTUE","GLOBAL",10)~

REPLACE_TRIGGER_TEXT JATERMIN ~ReputationGT(Player1,9)~ ~GlobalGT("D0VIRTUE","GLOBAL",9)~

REPLACE_ACTION_TEXT KAYL2 ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT LEHTIN ~ReputationInc(-1)~ ~IncrementGlobal("D0Change","GLOBAL",-1)~

REPLACE_ACTION_TEXT MAIRYN ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT MALLA01 ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT MARLOWE ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT MARLOWE ~ReputationInc(-2)~ ~ReputationInc(-2)
IncrementGlobal("D0Change","GLOBAL",-2)~

REPLACE_ACTION_TEXT MAZZYP ~ReputationInc(-1)~ ~ReputationInc(-1)
IncrementGlobal("D0Change","GLOBAL",-1)~

REPLACE_TRIGGER_TEXT MINSCJ ~ReputationGT(Player1,13)~ ~GlobalGT("D0Happiness","LOCALS",13)~

REPLACE_TRIGGER_TEXT MINSCJ ~ReputationGT(Player1,15)~ ~GlobalGT("D0Happiness","LOCALS",15)~

REPLACE_TRIGGER_TEXT MINSCJ ~ReputationGT(Player1,18)~ ~GlobalGT("D0Happiness","LOCALS",18)~

REPLACE_TRIGGER_TEXT MINSCJ ~ReputationLT(Player1,7)~ ~GlobalLT("D0Happiness","LOCALS",7)~

REPLACE_TRIGGER_TEXT MINSCJ ~ReputationLT(Player1,3)~ ~GlobalLT("D0Happiness","LOCALS",3)~

REPLACE_ACTION_TEXT NALIA ~ReputationInc(-1)~ ~ReputationInc(-1)
IncrementGlobal("D0Change","GLOBAL",-1)~

REPLACE_ACTION_TEXT ORPHAN1 ~ReputationInc(-1)~ ~ReputationInc(-1)
IncrementGlobal("D0Change","GLOBAL",-1)~

REPLACE_ACTION_TEXT ORPHAN2 ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT PLAYER1 ~ReputationInc(-2)~ ~IncrementGlobal("D0Change","GLOBAL",-2)~

REPLACE_ACTION_TEXT REPMAN ~ReputationInc(-1)~ ~IncrementGlobal("D0Change","GLOBAL",-1)~

REPLACE_ACTION_TEXT REPMAN ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT SARBUL05 ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT SARELF01 ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_TRIGGER_TEXT SAREV25A ~!Alignment(Player1,MASK_EVIL)[^!]*!ReputationLT(Player1,8)~ ~!Alignment(Player1,MASK_EVIL)
GlobalGT("D0Happiness","LOCALS",7)~

REPLACE_TRIGGER_TEXT SAREV25A ~OR(2)[^!]*Alignment(Player1,MASK_EVIL)[^!]*ReputationLT(Player1,8)~ ~OR(2)
Alignment(Player1,MASK_EVIL)
GlobalLT("D0Happiness","LOCALS",8)~

REPLACE_ACTION_TEXT SARPRIS1 ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT SARPRIS2 ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT SARTHF1 ~ReputationInc(-1)~ ~IncrementGlobal("D0Change","GLOBAL",-1)~

REPLACE_ACTION_TEXT SLAVFREE ~ReputationInc(2)~ ~IncrementGlobal("D0Change","GLOBAL",2)~

REPLACE_ACTION_TEXT SLAVFREE ~ReputationInc(-2)~ ~IncrementGlobal("D0Change","GLOBAL",-2)~

REPLACE_ACTION_TEXT TOLGER ~ReputationInc(-1)~ ~IncrementGlobal("D0Change","GLOBAL",-1)~

REPLACE_ACTION_TEXT TRCUT07 ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT TRSKIN04 ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT UDILSLA2 ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT UHMAY01 ~ReputationInc(1)~ ~ReputationInc(1)
IncrementGlobal("D0Change","GLOBAL",1)~

REPLACE_ACTION_TEXT UHMAY01 ~ReputationInc(-1)~ ~ReputationInc(-1)
IncrementGlobal("D0Change","GLOBAL",-1)~

REPLACE_ACTION_TEXT ELGEA ~SetGlobal("SpawnWelther","GLOBAL",1)~ ~SetGlobal("SpawnWelther","GLOBAL",1)
IncrementGlobal("D0Change","GLOBAL",-2)~

REPLACE_ACTION_TEXT ELGEA ~SetGlobal("ElgeaFree","GLOBAL",1)~ ~SetGlobal("ElgeaFree","GLOBAL",1)
IncrementGlobal("D0Change","GLOBAL",1)~

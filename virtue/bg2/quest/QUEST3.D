/*
DONE: UHMAY01
TRPLE01
DASLAVE1
DONE: DELCIA
DONE: FIRKRA02
DONE: GORMAD1
SARTEM01
DONE: RAELIS
DONE: MARCUS
HABREGA
*/

REPLACE UHMAY01
IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #32063 /* ~That was my ancestor, and I've kept it.  I'm told it's wrapped up with strong protective magics.  I'd be happy to offer it-- and some gold-- to save my village.~ */
  IF ~Global("ministertoldkillings","GLOBAL",0)~ THEN REPLY #32066 /* ~Tell me the details of what's been going on, here, then.~ */ GOTO 11
  IF ~Global("ministertoldkillings","GLOBAL",1)~ THEN REPLY #44825 /* ~Very well... I'll help you, if I can.~ */ GOTO 22
  IF ~Global("MayorPay","GLOBAL",0)
CheckStatGT(LastTalkedToBy,7,CHR)
!Class(Player1,RANGER)~ THEN REPLY #49516 /* ~I want payment in advance. You want help. Give me some gold up front or I leave.~ */ DO ~IncrementGlobal("D0Change","GLOBAL",-1)~ GOTO 139
  IF ~Global("MayorPay","GLOBAL",0)
CheckStatLT(LastTalkedToBy,8,CHR)
!Class(Player1,RANGER)~ THEN REPLY #49517 /* ~I want payment in advance. You want help. Give me some gold up front or I leave.~ */ DO ~IncrementGlobal("D0Change","GLOBAL",-1)~ GOTO 138
  IF ~~ THEN REPLY #32070 /* ~I don't think I'm interested in helping out.~ */ GOTO 23
END
END

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

REPLACE DELCIA
IF ~~ THEN BEGIN 8 // from: 0.4
  SAY #24541 /* ~I suppose I should expect nothing less. Your lack of breeding is apparent in your close-set eyes. Loot as you will, but you will not get the satisfaction of a fearful response from me. ~ */
  IF ~~ THEN REPLY #24542 /* ~Perhaps I will loot as I please, but I have a task as well. I am here on Nalia's behalf.~ */ GOTO 5
  IF ~~ THEN REPLY #24543 /* ~I think you should be afraid. I do not keep baggage for no purpose. Prepare to die. ~ */ GOTO 9
END

IF ~~ THEN BEGIN 14 // from: 40.0
  SAY #24568 /* ~I am not evil, nor am I your enemy. I am simply your better, and the better of those that serve me. Now stand aside and let me pass, I've languished here quite long enough.~ */
  IF ~~ THEN REPLY #24570 /* ~I'm just going to stand here in stunned silence for a moment.~ */ GOTO 15
  IF ~~ THEN REPLY #24571 /* ~As you say, milady. You are free of this place.~ */ GOTO 12
  IF ~~ THEN REPLY #24572 /* ~You are no less a villain than those I've come to fight. You will die here today!~ */ GOTO 9
END
END

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

REPLACE_ACTION_TEXT FIRKRA02 ~GiveItem("clck20",LastTalkedToBy)[^!]*TakePartyItem("misc9l")~ ~GiveItem("clck20",LastTalkedToBy)
TakePartyItem("misc9l")
IncrementGlobal("D0Change","GLOBAL",-2)~

REPLACE FIRKRA02
IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #43174 /* ~Conster! Go to the child! If <CHARNAME> fails to take it from you, kill it. ~ */
  IF ~~ THEN REPLY #43177 /* ~I will save the child and return for you in the future, Firkraag. I swear it.~ */ GOTO 20
  IF ~~ THEN REPLY #43178 /* ~I thank you for this act of charity, disguised though it is. ~ */ GOTO 22
  IF ~~ THEN REPLY #43179 /* ~I'll rescue Garren's child after I kill you, monster!~ */ GOTO 23
  IF ~~ THEN REPLY #49290 /* ~You made an interesting comment. Garren still has the deed to this land. Do you need it?~ */ GOTO 28
END
END

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

REPLACE_ACTION_TEXT GORMAD1 ~Enemy()[^!]*SetInterrupt(FALSE)[^!]*AttackOneRound(LastTalkedToBy)[^!]*RunAwayFrom(LastTalkedToBy,90)[^!]*SetInterrupt(TRUE)~ ~IncrementGlobal("D0Change","GLOBAL",-1)
Enemy()
SetInterrupt(FALSE)
AttackOneRound(LastTalkedToBy)
RunAwayFrom(LastTalkedToBy,90)
SetInterrupt(TRUE)~

REPLACE GORMAD1
IF ~~ THEN BEGIN 34 // from: 33.2 33.1 33.0
  SAY #63462 /* ~'Yakman'?  That...that was that ridiculous nickname that atrocious little halfling kept calling me.  My name is Tamorlin.  Wh...where is my party?  Where am I?~ [GORMAD17] */
  IF ~~ THEN REPLY #63464 /* ~This is the Watcher's Keep.  You've been here alone for quite some time, by the looks of it.~ */ GOTO 35
  IF ~~ THEN REPLY #63465 /* ~Your party is gone.  Do you remember nothing?~ */ GOTO 37
  IF ~~ THEN REPLY #63466 /* ~You've been wandering this maze for years...I just restored your sanity.~ */ GOTO 36
  IF ~~ THEN REPLY #63467 /* ~Never mind that.  I just restored your mind and I expect payment in kind.~ */ GOTO 38
END
END

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

REPLACE RAELIS
IF ~~ THEN BEGIN 9 // from: 65.0
  SAY #158 /* ~<CHARNAME>, your presence here would be appreciated. Will you stay with us?~ */
  IF ~!InParty("HaerDalis")
~ THEN REPLY #159 /* ~I'm not interested in fighting extra-planar creatures...I'll be on my way, thank you.~ */ GOTO 10
  IF ~!InParty("HaerDalis")
~ THEN REPLY #160 /* ~We shall hold off these creatures as best as we are able.  Tell me when you find the right tunnel.~ */ GOTO 13
  IF ~InParty("HaerDalis")
~ THEN REPLY #246 /* ~I'm not interested in fighting extra-planar creatures...I'll be on my way, thank you.~ */ EXTERN ~HAERDAJ~ 12
  IF ~InParty("HaerDalis")~ THEN REPLY #247 /* ~We shall hold off these creatures as best as we are able.  Tell me when you find the right tunnel.~ */ EXTERN ~HAERDAJ~ 13
  IF ~!InParty("Haerdalis")~ THEN REPLY #50203 /* ~I shall stay only if the reward is sufficient. What shall you give me for my skills in this battle?~ */ DO ~IncrementGlobal("D0Change","GLOBAL",-1)~ EXTERN ~HAERDA~ 217
  IF ~InParty("Haerdalis")~ THEN REPLY #50276 /* ~I shall stay only if the reward is sufficient. What shall you give me for my skills in this battle?~ */ DO ~IncrementGlobal("D0Change","GLOBAL",-1)~ EXTERN ~HAERDAJ~ 92
END
END

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

REPLACE_TRIGGER_TEXT MARCUS ~OR(3)[^!]*Race(LastTalkedToBy,HUMAN)[^!]*Race(LastTalkedToBy,ELF)[^!]*Race(LastTalkedToBy,HALFELF)~ ~OR(3)
Race(LastTalkedToBy,HUMAN)
Race(LastTalkedToBy,ELF)
Race(LastTalkedToBy,HALF_ELF)~ // Little bugfix, yay!

REPLACE MARCUS
IF ~HasItem("misc4w",Myself)
~ THEN BEGIN 0 // from:
  SAY #29726 /* ~Stop bothering me, I've important business to conduct.~ */
  IF ~CheckStatGT(LastTalkedToBy,16,STR)
CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY #61461 /* ~Those documents... hand them over now, or else!~ */ GOTO 2
  IF ~OR(2)
!CheckStatGT(LastTalkedToBy,16,STR)
!CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY #61462 /* ~Those documents... hand them over now, or else!~ */ GOTO 1
  IF ~CheckStatGT(LastTalkedToBy,10,CHR)~ THEN REPLY #61463 /* ~You have some documents I wish to... purchase.~ */ GOTO 4
  IF ~!CheckStatGT(LastTalkedToBy,10,CHR)~ THEN REPLY #61464 /* ~You have some documents I wish to... purchase.~ */ GOTO 3
  IF ~CheckStatGT(LastTalkedToBy,17,DEX)
CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY #61466 /* ~Oh, sorry... you've got something on your neck... (snap his neck quickly and quietly).~ */ DO ~IncrementGlobal("D0Change","GLOBAL",-3)
Wait(1)
Kill(Myself)~ EXIT
  IF ~~ THEN REPLY #61465 /* ~I'll leave you alone, then.~ */ EXIT
END
END

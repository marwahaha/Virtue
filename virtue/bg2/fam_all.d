// GOOD FAMILIAR SOA

BEGIN ~FAMIL1~

IF ~Alignment(Player1,MASK_EVIL)~ THEN BEGIN F1SOA_HOSTILE
  SAY @1000
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GOOD)~ THEN BEGIN F1SOA_GABBER_1
  SAY @1001
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GENEUTRAL)
Alignment(LastTalkedToBy(Myself),MASK_GOOD)~ THEN BEGIN F1SOA_GABBER_2
  SAY @1002
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GENEUTRAL)
!Alignment(LastTalkedToBy(Myself),MASK_GOOD)~ THEN BEGIN F1SOA_GABBER_3
  SAY @1003
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GOOD)~ THEN BEGIN F1SOA_MAIN_MENU_1
  SAY #58297 /* ~The small dragon-like creature flutters its wings happily, looking at you with almost kaleidoscopic eyes. "You wish something?" It awaits your attention, tail flicking.~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58298 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F1SOA_INPACK_1
  IF ~~ THEN REPLY #58299 /* ~(pet and play with it)~ */ GOTO F1SOA_PLAY_1
  IF ~~ THEN REPLY #58300 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F1SOA_ADVICE_1
  IF ~~ THEN REPLY #58301 /* ~How are you?  Everything okay down there?~ */ GOTO F1SOA_STATUS_1
  IF ~~ THEN REPLY #58304 /* ~No, it's alright.  Let's just keep going.~ */ GOTO F1SOA_EXIT_1
END

IF ~InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GENEUTRAL)~ THEN BEGIN F1SOA_MAIN_MENU_2
  SAY @1004
  IF ~!InventoryFull(Player1)~ THEN REPLY #58298 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F1SOA_INPACK_2
  IF ~~ THEN REPLY #58360 /* ~(pet the familiar)~ */ GOTO F1SOA_PLAY_2
  IF ~~ THEN REPLY #58300 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F1SOA_ADVICE_2
  IF ~~ THEN REPLY #58301 /* ~How are you?  Everything okay down there?~ */ GOTO F1SOA_STATUS_2
  IF ~~ THEN REPLY @1005 GOTO F1SOA_STATUS_3
  IF ~~ THEN REPLY #58304 /* ~No, it's alright.  Let's just keep going.~ */ GOTO F1SOA_EXIT_2
END

IF ~~ THEN BEGIN F1SOA_INPACK_1 // from: 3.0 1.0
  SAY #58302 /* ~Its eyes brighten, and it practically leaps into your arms, ready to be stowed amongst your belongings where it can sleep and occasionally poke its head out.~ */
  IF ~OR(2)
Alignment(Player1,MASK_LAWFUL)
Alignment(Player1,MASK_LCNEUTRAL)~ THEN DO ~GiveItemCreate("FAMPSD",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_CHAOTIC)~ THEN DO ~GiveItemCreate("FAMFAIR",Player1,0,0,0)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN F1SOA_INPACK_2 // from: 3.0 1.0
  SAY @1006
  IF ~OR(2)
Alignment(Player1,MASK_LAWFUL)
Alignment(Player1,MASK_LCNEUTRAL)~ THEN DO ~GiveItemCreate("FAMPSD",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_CHAOTIC)~ THEN DO ~GiveItemCreate("FAMFAIR",Player1,0,0,0)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN F1SOA_PLAY_1
  SAY @1007
  IF ~!InventoryFull(Player1)~ THEN REPLY #58305 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F1SOA_INPACK_1
  IF ~~ THEN REPLY #58306 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F1SOA_ADVICE_1
  IF ~~ THEN REPLY #58307 /* ~How are you?  Everything okay down there?~ */ GOTO F1SOA_STATUS_1
  IF ~~ THEN REPLY #58308 /* ~Let's just keep going, then.~ */ GOTO F1SOA_EXIT_1
END

IF ~~ THEN BEGIN F1SOA_PLAY_2
  SAY @1008
  IF ~!InventoryFull(Player1)~ THEN REPLY #58305 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F1SOA_INPACK_2
  IF ~~ THEN REPLY #58306 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F1SOA_ADVICE_2
  IF ~~ THEN REPLY #58307 /* ~How are you?  Everything okay down there?~ */ GOTO F1SOA_STATUS_2
  IF ~~ THEN REPLY @1005 GOTO F1SOA_STATUS_3
  IF ~~ THEN REPLY #58308 /* ~Let's just keep going, then.~ */ GOTO F1SOA_EXIT_2
END

IF ~~ THEN BEGIN F1SOA_ADVICE_1
  SAY #58309 /* ~The familiar cranes its neck back and looks up at you with a slightly bewildered expression.  "You wish to ask *me* for advice, my <PRO_LADYLORD>?"~ */
  IF ~Global("chapter","GLOBAL",1)
AreaType(DUNGEON)~ THEN GOTO F1SOA_ADVICE_1_A
  IF ~Global("chapter","GLOBAL",1)
!AreaType(DUNGEON)~ THEN GOTO F1SOA_ADVICE_1_B
  IF ~Global("chapter","GLOBAL",2)~ THEN GOTO F1SOA_ADVICE_1_C
  IF ~Global("chapter","GLOBAL",3)~ THEN GOTO F1SOA_ADVICE_1_D
  IF ~Global("chapter","GLOBAL",4)~ THEN GOTO F1SOA_ADVICE_1_E
  IF ~Global("chapter","GLOBAL",5)~ THEN GOTO F1SOA_ADVICE_1_F
  IF ~Global("chapter","GLOBAL",6)~ THEN GOTO F1SOA_ADVICE_1_G
  IF ~Global("chapter","GLOBAL",7)~ THEN GOTO F1SOA_ADVICE_1_H
END

IF ~~ THEN BEGIN F1SOA_ADVICE_2
  SAY #58309 /* ~The familiar cranes its neck back and looks up at you with a slightly bewildered expression.  "You wish to ask *me* for advice, my <PRO_LADYLORD>?"~ */
  IF ~Global("chapter","GLOBAL",1)
AreaType(DUNGEON)~ THEN GOTO F1SOA_ADVICE_2_A
  IF ~Global("chapter","GLOBAL",1)
!AreaType(DUNGEON)~ THEN GOTO F1SOA_ADVICE_2_B
  IF ~Global("chapter","GLOBAL",2)~ THEN GOTO F1SOA_ADVICE_2_C
  IF ~Global("chapter","GLOBAL",3)~ THEN GOTO F1SOA_ADVICE_2_D
  IF ~Global("chapter","GLOBAL",4)~ THEN GOTO F1SOA_ADVICE_2_E
  IF ~Global("chapter","GLOBAL",5)~ THEN GOTO F1SOA_ADVICE_2_F
  IF ~Global("chapter","GLOBAL",6)~ THEN GOTO F1SOA_ADVICE_2_G
  IF ~Global("chapter","GLOBAL",7)~ THEN GOTO F1SOA_ADVICE_2_H
END

IF ~~ THEN BEGIN F1SOA_ADVICE_1_A
  SAY #58310 /* ~It looks at the darkness for a long moment before turning its colorful eyes back at you. "Let us be away from this dark place, my <PRO_LADYLORD>. That is my advice."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_ADVICE_2_A
  SAY @1009
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_ADVICE_1_B
  SAY @1010
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_ADVICE_2_B
  SAY @1011
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_ADVICE_1_C
  SAY #58312 /* ~The little dragon chuckles to itself musically.  "You must collect gold, my <PRO_LADYLORD>.  Coins and coins enough to find your answers."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_ADVICE_2_C
  SAY @1012
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_ADVICE_1_D
  SAY #58313 /* ~It almost seems to frown, its whirling eyes settling on a baleful yellow before continuing. "I do not know, my <PRO_LADYLORD>. You must continue these tasks, no?"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_ADVICE_2_D
  SAY #58313 /* ~It almost seems to frown, its whirling eyes settling on a baleful yellow before continuing. "I do not know, my <PRO_LADYLORD>. You must continue these tasks, no?"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_ADVICE_1_E
  SAY @1013
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_ADVICE_2_E
  SAY @1014
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_ADVICE_1_F
  SAY #58315 /* ~It looks around for a moment, its eyes dimming with fear as its tail curls up under its belly.  "We must be away from this place soon, my <PRO_LADYLORD>, please?"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_ADVICE_2_F
  SAY #58315 /* ~It looks around for a moment, its eyes dimming with fear as its tail curls up under its belly.  "We must be away from this place soon, my <PRO_LADYLORD>, please?"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_ADVICE_1_G
  SAY #58316 /* ~It thinks for a moment and then its eyes brighten dramatically. "We must find the sacred elven city, my <PRO_LADYLORD>. Your wizard lies therein, I am certain."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_ADVICE_2_G
  SAY @1015
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_ADVICE_1_H
  SAY #58317 /* ~It growls menacingly, but not at you. It flicks its tail wickedly several times. "The wizard, my <PRO_LADYLORD>. He must die and you must live."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_ADVICE_2_H
  SAY @1016
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_STATUS_1
  SAY #58318 /* ~The dragon flicks its tail with pleasure and gazes up at you with colorful eyes.  "So long as you are well, my <PRO_LADYLORD>, then I am well."~ */
  IF ~HPLT(Myself,8)~ THEN GOTO F1SOA_STATUS_1_A
  IF ~HPLT(Myself,16)
!HPLT(Myself,8)~ THEN GOTO F1SOA_STATUS_1_B
  IF ~!HPLT(Myself,16)
RandomNum(4,1)~ THEN GOTO F1SOA_STATUS_1_C
  IF ~!HPLT(Myself,16)
RandomNum(4,2)~ THEN GOTO F1SOA_STATUS_1_D
  IF ~!HPLT(Myself,16)
RandomNum(4,3)~ THEN GOTO F1SOA_STATUS_1_E
  IF ~!HPLT(Myself,16)
RandomNum(4,4)~ THEN GOTO F1SOA_STATUS_1_F
END

IF ~~ THEN BEGIN F1SOA_STATUS_2
  SAY @1017
  IF ~HPLT(Myself,8)~ THEN GOTO F1SOA_STATUS_2_A
  IF ~HPLT(Myself,16)
!HPLT(Myself,8)~ THEN GOTO F1SOA_STATUS_2_B
  IF ~!HPLT(Myself,16)
RandomNum(4,1)~ THEN EXIT
  IF ~!HPLT(Myself,16)
RandomNum(4,2)~ THEN GOTO F1SOA_STATUS_2_D
  IF ~!HPLT(Myself,16)
RandomNum(4,3)~ THEN EXIT
  IF ~!HPLT(Myself,16)
RandomNum(4,4)~ THEN GOTO F1SOA_STATUS_2_F
END

IF ~~ THEN BEGIN F1SOA_STATUS_1_A
  SAY #58321 /* ~"I...I am hurt badly, my <PRO_LADYLORD>. I don't want to die, my <PRO_LADYLORD>. I want to stay with you." The dragon whimpers a little and curls its tail around your leg.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_STATUS_2_A
  SAY @1018
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_STATUS_1_B
  SAY #58320 /* ~"I... I am a little hurt, though, my <PRO_LADYLORD>.  The cuts sting, and I am bleeding.  It... it is not pleasant."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_STATUS_2_B
  SAY @1019
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_STATUS_1_C
  SAY #58319 /* ~"But since you are asking, I could use a snack.  Perhaps a nice gopher.  Or some pie... ooooh, yes, I *like* pie!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_STATUS_1_D
  SAY #58322 /* ~"I do like traveling with you.  Very much, my <PRO_LADYLORD>.  Do you have an apple?  I could roast the apple a little and then eat it down.  Apples are good!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_STATUS_2_D
  SAY @1020
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_STATUS_1_E
  SAY @1021
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_STATUS_1_F
  SAY #58324 /* ~"I feel wonderful, myself, my <PRO_LADYLORD>.  My hide is clean and I stand ready to aid you against danger!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_STATUS_2_F
  SAY @1022
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_STATUS_3
  SAY @1023
  IF ~~ THEN REPLY @1024 GOTO F1SOA_STATUS_3_2
  IF ~~ THEN REPLY @1025 GOTO F1SOA_STATUS_3_3
END

IF ~~ THEN BEGIN F1SOA_STATUS_3_2
  SAY @1026
  IF ~~ THEN REPLY @1027 GOTO F1SOA_STATUS_3_4
  IF ~~ THEN REPLY @1025 GOTO F1SOA_STATUS_3_3
END

IF ~~ THEN BEGIN F1SOA_STATUS_3_3
  SAY @1028
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy,5)~ EXIT
END

IF ~~ THEN BEGIN F1SOA_STATUS_3_4
  SAY @1029
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_EXIT_1
  SAY #58325 /* ~The dragon flicks its tail contendedly and then turns its eyes back to the path before you.  "As you wish, my <PRO_LADYLORD>."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1SOA_EXIT_2
  SAY @1030
  IF ~~ THEN EXIT
END

// GOOD FAMILIAR TOB

BEGIN ~FAMIL125~

IF ~Alignment(Player1,MASK_EVIL)~ THEN BEGIN F1TOB_HOSTILE
  SAY @1000
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GOOD)~ THEN BEGIN F1TOB_GABBER_1
  SAY @1001
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GENEUTRAL)
Alignment(LastTalkedToBy(Myself),MASK_GOOD)~ THEN BEGIN F1TOB_GABBER_2
  SAY @1002
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GENEUTRAL)
!Alignment(LastTalkedToBy(Myself),MASK_GOOD)~ THEN BEGIN F1TOB_GABBER_3
  SAY @1003
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GOOD)~ THEN BEGIN F1TOB_MAIN_MENU_1
  SAY #58297 /* ~The small dragon-like creature flutters its wings happily, looking at you with almost kaleidoscopic eyes. "You wish something?" It awaits your attention, tail flicking.~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58298 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F1TOB_INPACK_1
  IF ~~ THEN REPLY #58299 /* ~(pet and play with it)~ */ GOTO F1TOB_PLAY_1
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY #73426 /* ~(feed the familiar)~ */ GOTO F1TOB_FEED_1
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY #73432 /* ~(feed the familiar)~ */ GOTO F1TOB_FEED_1_2
  IF ~~ THEN REPLY #58300 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F1TOB_ADVICE_1
  IF ~~ THEN REPLY #58301 /* ~How are you?  Everything okay down there?~ */ GOTO F1TOB_STATUS_1
  IF ~~ THEN REPLY #58304 /* ~No, it's alright.  Let's just keep going.~ */ GOTO F1TOB_EXIT_1
END

IF ~InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GENEUTRAL)~ THEN BEGIN F1TOB_MAIN_MENU_2
  SAY @1004
  IF ~!InventoryFull(Player1)~ THEN REPLY #58298 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F1TOB_INPACK_2
  IF ~~ THEN REPLY #58360 /* ~(pet the familiar)~ */ GOTO F1TOB_PLAY_2
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY #73426 /* ~(feed the familiar)~ */ GOTO F1TOB_FEED_2
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY #73432 /* ~(feed the familiar)~ */ GOTO F1TOB_FEED_2_2
  IF ~~ THEN REPLY #58300 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F1TOB_ADVICE_2
  IF ~~ THEN REPLY #58301 /* ~How are you?  Everything okay down there?~ */ GOTO F1TOB_STATUS_2
  IF ~~ THEN REPLY @1005 GOTO F1TOB_STATUS_3
  IF ~~ THEN REPLY #58304 /* ~No, it's alright.  Let's just keep going.~ */ GOTO F1TOB_EXIT_2
END

IF ~~ THEN BEGIN F1TOB_INPACK_1 // from: 3.0 1.0
  SAY #58302 /* ~Its eyes brighten, and it practically leaps into your arms, ready to be stowed amongst your belongings where it can sleep and occasionally poke its head out.~ */
  IF ~OR(2)
Alignment(Player1,MASK_LAWFUL)
Alignment(Player1,MASK_LCNEUTRAL)~ THEN DO ~GiveItemCreate("FAMPSD25",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_CHAOTIC)~ THEN DO ~GiveItemCreate("FAMFAI25",Player1,0,0,0)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN F1TOB_INPACK_2 // from: 3.0 1.0
  SAY @1006
  IF ~OR(2)
Alignment(Player1,MASK_LAWFUL)
Alignment(Player1,MASK_LCNEUTRAL)~ THEN DO ~GiveItemCreate("FAMPSD25",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_CHAOTIC)~ THEN DO ~GiveItemCreate("FAMFAI25",Player1,0,0,0)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN F1TOB_PLAY_1
  SAY @1007
  IF ~!InventoryFull(Player1)~ THEN REPLY #58305 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F1TOB_INPACK_1
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY #73426 /* ~(feed the familiar)~ */ GOTO F1TOB_FEED_1
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY #73432 /* ~(feed the familiar)~ */ GOTO F1TOB_FEED_1_2
  IF ~~ THEN REPLY #58306 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F1TOB_ADVICE_1
  IF ~~ THEN REPLY #58307 /* ~How are you?  Everything okay down there?~ */ GOTO F1TOB_STATUS_1
  IF ~~ THEN REPLY #58308 /* ~Let's just keep going, then.~ */ GOTO F1TOB_EXIT_1
END

IF ~~ THEN BEGIN F1TOB_PLAY_2
  SAY @1008
  IF ~!InventoryFull(Player1)~ THEN REPLY #58305 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F1TOB_INPACK_2
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY #73426 /* ~(feed the familiar)~ */ GOTO F1TOB_FEED_2
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY #73432 /* ~(feed the familiar)~ */ GOTO F1TOB_FEED_2_2
  IF ~~ THEN REPLY #58306 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F1TOB_ADVICE_2
  IF ~~ THEN REPLY #58307 /* ~How are you?  Everything okay down there?~ */ GOTO F1TOB_STATUS_2
  IF ~~ THEN REPLY @1005 GOTO F1TOB_STATUS_3
  IF ~~ THEN REPLY #58308 /* ~Let's just keep going, then.~ */ GOTO F1TOB_EXIT_2
END

IF ~~ THEN BEGIN F1TOB_FEED_1
  SAY #73428 /* ~You offer the little dragon some nuts and berries that you have stored, and the dragon nibbles on a few of them but doesn't really seem all that hungry.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_FEED_1_2
  SAY @1031
  IF ~~ THEN DO ~ApplySpell(Myself,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
END

IF ~~ THEN BEGIN F1TOB_FEED_2
  SAY @1032
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_FEED_2_2
  SAY @1033
  IF ~~ THEN DO ~ApplySpell(Myself,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
END

IF ~~ THEN BEGIN F1TOB_ADVICE_1
  SAY #58309 /* ~The familiar cranes its neck back and looks up at you with a slightly bewildered expression.  "You wish to ask *me* for advice, my <PRO_LADYLORD>?"~ */
  IF ~True()~ THEN EXIT
  IF ~Global("chapter","GLOBAL",8)~ THEN GOTO F1TOB_ADVICE_1_A
  IF ~Global("chapter","GLOBAL",9)~ THEN GOTO F1TOB_ADVICE_1_B
  IF ~Global("chapter","GLOBAL",10)~ THEN GOTO F1TOB_ADVICE_1_C
END

IF ~~ THEN BEGIN F1TOB_ADVICE_1_A
  SAY #72694 /* ~The little dragon looks up at you for a moment, its eyes shimmering.  "You must survive, my <PRO_LADYLORD>.  Your heritage places you in great danger!"  It whips its tail about agitatedly.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_ADVICE_1_B
  SAY #72695 /* ~Its bright eyes look piercingly into yours.  "There has been so much death, my <LADYLORD>.  So much destruction.  But I trust you will find the way to do what is right."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_ADVICE_1_C
  SAY #72696 /* ~For a moment, the dragon growls fiercely.  "The imposter must die, my <LADYLORD>!  You must somehow go into the Throne of Bhaal and confront her!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_ADVICE_2
  SAY #58309 /* ~The familiar cranes its neck back and looks up at you with a slightly bewildered expression.  "You wish to ask *me* for advice, my <PRO_LADYLORD>?"~ */
  IF ~True()~ THEN EXIT
  IF ~Global("chapter","GLOBAL",8)~ THEN GOTO F1TOB_ADVICE_2_A
  IF ~Global("chapter","GLOBAL",9)~ THEN GOTO F1TOB_ADVICE_2_B
  IF ~Global("chapter","GLOBAL",10)~ THEN GOTO F1TOB_ADVICE_2_C
END

IF ~~ THEN BEGIN F1TOB_ADVICE_2_A
  SAY @1034
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_ADVICE_2_B
  SAY @1035
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_ADVICE_2_C
  SAY @1036
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_STATUS_1
  SAY #58318 /* ~The dragon flicks its tail with pleasure and gazes up at you with colorful eyes.  "So long as you are well, my <PRO_LADYLORD>, then I am well."~ */
  IF ~HPLT(Myself,24)~ THEN GOTO F1TOB_STATUS_1_A
  IF ~HPLT(Myself,48)
!HPLT(Myself,24)~ THEN GOTO F1TOB_STATUS_1_B
  IF ~!HPLT(Myself,48)
RandomNum(4,1)~ THEN GOTO F1TOB_STATUS_1_C
  IF ~!HPLT(Myself,48)
RandomNum(4,2)~ THEN GOTO F1TOB_STATUS_1_D
  IF ~!HPLT(Myself,48)
RandomNum(4,3)~ THEN GOTO F1TOB_STATUS_1_E
  IF ~!HPLT(Myself,48)
RandomNum(4,4)~ THEN GOTO F1TOB_STATUS_1_F
END

IF ~~ THEN BEGIN F1TOB_STATUS_2
  SAY @1017
  IF ~HPLT(Myself,24)~ THEN GOTO F1TOB_STATUS_2_A
  IF ~HPLT(Myself,48)
!HPLT(Myself,24)~ THEN GOTO F1TOB_STATUS_2_B
  IF ~!HPLT(Myself,48)
RandomNum(4,1)~ THEN EXIT
  IF ~!HPLT(Myself,48)
RandomNum(4,2)~ THEN GOTO F1TOB_STATUS_2_D
  IF ~!HPLT(Myself,48)
RandomNum(4,3)~ THEN EXIT
  IF ~!HPLT(Myself,48)
RandomNum(4,4)~ THEN GOTO F1TOB_STATUS_2_F
END

IF ~~ THEN BEGIN F1TOB_STATUS_1_A
  SAY #58321 /* ~"I...I am hurt badly, my <PRO_LADYLORD>. I don't want to die, my <PRO_LADYLORD>. I want to stay with you." The dragon whimpers a little and curls its tail around your leg.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_STATUS_2_A
  SAY @1018
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_STATUS_1_B
  SAY #58320 /* ~"I... I am a little hurt, though, my <PRO_LADYLORD>.  The cuts sting, and I am bleeding.  It... it is not pleasant."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_STATUS_2_B
  SAY @1019
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_STATUS_1_C
  SAY #58319 /* ~"But since you are asking, I could use a snack.  Perhaps a nice gopher.  Or some pie... ooooh, yes, I *like* pie!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_STATUS_1_D
  SAY #58322 /* ~"I do like traveling with you.  Very much, my <PRO_LADYLORD>.  Do you have an apple?  I could roast the apple a little and then eat it down.  Apples are good!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_STATUS_2_D
  SAY @1020
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_STATUS_1_E
  SAY @1021
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_STATUS_1_F
  SAY #58324 /* ~"I feel wonderful, myself, my <PRO_LADYLORD>.  My hide is clean and I stand ready to aid you against danger!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_STATUS_2_F
  SAY @1022
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_STATUS_3
  SAY @1023
  IF ~~ THEN REPLY @1024 GOTO F1TOB_STATUS_3_2
  IF ~~ THEN REPLY @1025 GOTO F1TOB_STATUS_3_3
END

IF ~~ THEN BEGIN F1TOB_STATUS_3_2
  SAY @1026
  IF ~~ THEN REPLY @1027 GOTO F1TOB_STATUS_3_4
  IF ~~ THEN REPLY @1025 GOTO F1TOB_STATUS_3_3
END

IF ~~ THEN BEGIN F1TOB_STATUS_3_3
  SAY @1028
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy,5)~ EXIT
END

IF ~~ THEN BEGIN F1TOB_STATUS_3_4
  SAY @1029
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_EXIT_1
  SAY #58325 /* ~The dragon flicks its tail contendedly and then turns its eyes back to the path before you.  "As you wish, my <PRO_LADYLORD>."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F1TOB_EXIT_2
  SAY @1030
  IF ~~ THEN EXIT
END

// EVIL FAMILIAR SOA

BEGIN ~FAMIL2~

IF ~Alignment(Player1,MASK_GOOD)~ THEN BEGIN F2SOA_HOSTILE
  SAY @1037
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_EVIL)~ THEN BEGIN F2SOA_GABBER_1
  SAY #58326 /* ~The creature stares with open derision, sticking out its forked tongue rudely.  It scoots off to <CHARNAME>.  Obviously it doesn't want to talk to you...~ */
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GENEUTRAL)~ THEN BEGIN F2SOA_GABBER_1
  SAY @1038
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy(Myself),5)~ EXIT
END

IF ~InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_EVIL)~ THEN BEGIN F2SOA_MAINMENU_1
  SAY #58327 /* ~The impish creature regards you suspiciously, wary of a kick or slap headed its way, before sidling a step or two closer.  "Yeah, boss?  You want something?"~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58328 /* ~Come here.  You're going in my pack, for now.~ */ GOTO F2SOA_INPACK_1
  IF ~Range(LastTalkedToBy,3)~ THEN REPLY #58330 /* ~Don't be so frightened of me, idiot.  (pet the familiar)~ */ GOTO F2SOA_PET_1
  IF ~Range(LastTalkedToBy,3)~ THEN REPLY @1039 GOTO F2SOA_SLAP_1
  IF ~~ THEN REPLY #58353 /* ~Do have any advice for me, my familiar?~ */ GOTO F2SOA_ADVICE_1
  IF ~~ THEN REPLY #58354 /* ~Are you alright, familiar?  All is well?~ */ GOTO F2SOA_STATUS_1
  IF ~~ THEN REPLY #58355 /* ~Never mind.  Just keep moving.~ */ GOTO F2SOA_EXIT_1
END

IF ~InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GENEUTRAL)~ THEN BEGIN F2SOA_MAINMENU_2
  SAY #58327 /* ~The impish creature regards you suspiciously, making no sign of moving closer.  "Yeah?  You want something?"  It mutters something incomprehensible to itself.~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58362 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F2SOA_INPACK_2
  IF ~~ THEN REPLY #58360 /* ~(pet the familiar)~ */ GOTO F2SOA_PET_2
  IF ~~ THEN REPLY #58363 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F2SOA_ADVICE_2
  IF ~~ THEN REPLY #58373 /* ~How are you?  Everything okay down there?~ */ GOTO F2SOA_STATUS_2
  IF ~~ THEN REPLY @1005 GOTO F2SOA_STATUS_3
  IF ~~ THEN REPLY @1040 GOTO F2SOA_EXIT_2
END

IF ~~ THEN BEGIN F2SOA_PET_1
  SAY #58331 /* ~It seems disgusted as you pat it on the head.  "Oh, now I'm a cute little bunny?  Give me a break, boss."  The imp darts away and does a heebie-jeebie dance.~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58328 /* ~Come here.  You're going in my pack, for now.~ */ GOTO F2SOA_INPACK_1
  IF ~Range(LastTalkedToBy,3)~ THEN REPLY @1039 GOTO F2SOA_SLAP_1
  IF ~~ THEN REPLY #58353 /* ~Do have any advice for me, my familiar?~ */ GOTO F2SOA_ADVICE_1
  IF ~~ THEN REPLY #58354 /* ~Are you alright, familiar?  All is well?~ */ GOTO F2SOA_STATUS_1
  IF ~~ THEN REPLY #58355 /* ~Never mind.  Just keep moving.~ */ GOTO F2SOA_EXIT_1
END

IF ~~ THEN BEGIN F2SOA_PET_2
  SAY #58331 /* ~It seems disgusted as you pat it on the head.  "Oh, now I'm a cute little bunny?  Give me a break, boss."  The imp darts away and does a heebie-jeebie dance.~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58362 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F2SOA_INPACK_2
  IF ~~ THEN REPLY #58363 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F2SOA_ADVICE_2
  IF ~~ THEN REPLY #58373 /* ~How are you?  Everything okay down there?~ */ GOTO F2SOA_STATUS_2
  IF ~~ THEN REPLY @1005 GOTO F2SOA_STATUS_3
  IF ~~ THEN REPLY @1040 GOTO F2SOA_EXIT_2
END

IF ~~ THEN BEGIN F2SOA_SLAP_1
  SAY #58388 /* ~The imp reels from the blow.  "HeeEEYY!  Cripes!  What wuz that for?!  I did everything you told me to, boss!  Sheesh!  Some people..."~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58399 /* ~Come here, then.  Get in my pack.~ */ GOTO F2SOA_INPACK_1
  IF ~RandomNum(3,1)~ THEN REPLY #58391 /* ~(slap it again)~ */ GOTO F2SOA_SLAP_2
  IF ~RandomNum(3,2)~ THEN REPLY #58392 /* ~(slap it again)~ */ GOTO F2SOA_SLAP_3
  IF ~RandomNum(3,3)~ THEN REPLY #58393 /* ~(slap it again)~ */ GOTO F2SOA_SLAP_4
  IF ~~ THEN REPLY #58394 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F2SOA_ADVICE_1
  IF ~~ THEN REPLY #58395 /* ~Is all well down there?~ */ GOTO F2SOA_STATUS_1
  IF ~~ THEN REPLY #58396 /* ~Alright, let's just keep going.~ */ GOTO F2SOA_EXIT_1
END

IF ~~ THEN BEGIN F2SOA_SLAP_2
  SAY #58389 /* ~Another slap sends it to the floor, frantically covering its head.  "Gaaah!  Okay!  You're the boss-<PRO_MANWOMAN>!  YOU boss, ME just little follower!  I get it!"~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58399 /* ~Come here, then.  Get in my pack.~ */ GOTO F2SOA_INPACK_1
  IF ~~ THEN REPLY #58401 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F2SOA_ADVICE_1
  IF ~~ THEN REPLY #58403 /* ~So... is all well down there?~ */ GOTO F2SOA_STATUS_1
  IF ~~ THEN REPLY #58405 /* ~Alright, let's just keep going.~ */ GOTO F2SOA_EXIT_1
END

IF ~~ THEN BEGIN F2SOA_SLAP_3
  SAY #58397 /* ~"Ow!  Dammit, stop it!  I'll do whatever you say, just stop slappin'!"  It takes steps away, muttering something about 'abusive co-dependant relationships' or similar.~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58399 /* ~Come here, then.  Get in my pack.~ */ GOTO F2SOA_INPACK_1
  IF ~~ THEN REPLY #58401 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F2SOA_ADVICE_1
  IF ~~ THEN REPLY #58404 /* ~So... is all well down there?~ */ GOTO F2SOA_STATUS_1
  IF ~~ THEN REPLY #58406 /* ~Alright, let's just keep going.~ */ GOTO F2SOA_EXIT_1
END

IF ~~ THEN BEGIN F2SOA_SLAP_4
  SAY #58398 /* ~The imp darts away at the last second. "Nyah!  Thhhppppfffttt! You couldn't hit the broad side of a barn! You suck!" It dashes away before a reprisal can come.~ */
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy,30)~ EXIT
END

IF ~~ THEN BEGIN F2SOA_INPACK_1
  SAY #58329 /* ~"Oh, sure.  Stick me in your smelly pack.  Ever thought of putting some mint in there?  Baaah..."  Reluctantly, the imp crawls into your pack.~ */
  IF ~Alignment(Player1,MASK_LAWFUL)~ THEN DO ~GiveItemCreate("FAMIMP",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_LCNEUTRAL)~ THEN DO ~GiveItemCreate("FAMDUST",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_CHAOTIC)~ THEN DO ~GiveItemCreate("FAMQUAS",Player1,0,0,0)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN F2SOA_INPACK_2
  SAY #58329 /* ~"Oh, gimme a break... I don't need your pity!  Go ahead, stick me in your smelly pack.  Ever thought of putting some mint in there?  Baaah..."  Reluctantly, the imp crawls into your pack.~ */
  IF ~Alignment(Player1,MASK_LAWFUL)~ THEN DO ~GiveItemCreate("FAMIMP",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_LCNEUTRAL)~ THEN DO ~GiveItemCreate("FAMDUST",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_CHAOTIC)~ THEN DO ~GiveItemCreate("FAMQUAS",Player1,0,0,0)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN F2SOA_STATUS_3
  SAY @1041
  IF ~~ THEN REPLY @1042 GOTO F2SOA_STATUS_3_2
  IF ~~ THEN REPLY @1043 GOTO F2SOA_STATUS_3_2
END

IF ~~ THEN BEGIN F2SOA_STATUS_3_2
  SAY @1044
  IF ~~ THEN REPLY @1045 GOTO F2SOA_STATUS_3_3
  IF ~~ THEN REPLY @1046 GOTO F2SOA_STATUS_3_4
END

IF ~~ THEN BEGIN F2SOA_STATUS_3_3
  SAY @1047
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_STATUS_3_4
  SAY @1048
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_ADVICE_1
  SAY #58334 /* ~It looks at you incredulously, wondering if you are serious or if this is a prelude to a slap.  "You want *me* to give *you* advice, boss?  That's a first."~ */
  IF ~Global("chapter","GLOBAL",1)
AreaType(DUNGEON)~ THEN GOTO F2SOA_ADVICE_1_A
  IF ~Global("chapter","GLOBAL",1)
!AreaType(DUNGEON)~ THEN GOTO F2SOA_ADVICE_1_B
  IF ~Global("chapter","GLOBAL",2)~ THEN GOTO F2SOA_ADVICE_1_C
  IF ~Global("chapter","GLOBAL",3)~ THEN GOTO F2SOA_ADVICE_1_D
  IF ~Global("chapter","GLOBAL",4)~ THEN GOTO F2SOA_ADVICE_1_E
  IF ~Global("chapter","GLOBAL",5)~ THEN GOTO F2SOA_ADVICE_1_F
  IF ~Global("chapter","GLOBAL",6)~ THEN GOTO F2SOA_ADVICE_1_G
  IF ~Global("chapter","GLOBAL",7)~ THEN GOTO F2SOA_ADVICE_1_H
END

IF ~~ THEN BEGIN F2SOA_ADVICE_2
  SAY @1049
  IF ~Global("chapter","GLOBAL",1)
AreaType(DUNGEON)~ THEN GOTO F2SOA_ADVICE_1_A
  IF ~Global("chapter","GLOBAL",1)
!AreaType(DUNGEON)~ THEN GOTO F2SOA_ADVICE_2_B
  IF ~Global("chapter","GLOBAL",2)~ THEN GOTO F2SOA_ADVICE_1_C
  IF ~Global("chapter","GLOBAL",3)~ THEN GOTO F2SOA_ADVICE_2_D
  IF ~Global("chapter","GLOBAL",4)~ THEN GOTO F2SOA_ADVICE_2_E
  IF ~Global("chapter","GLOBAL",5)~ THEN GOTO F2SOA_ADVICE_2_F
  IF ~Global("chapter","GLOBAL",6)~ THEN GOTO F2SOA_ADVICE_2_G
  IF ~Global("chapter","GLOBAL",7)~ THEN GOTO F2SOA_ADVICE_1_H
END

IF ~~ THEN BEGIN F2SOA_ADVICE_1_A
  SAY #58335 /* ~It looks around a few moments before turning back to you.  "Yeah, I got advice.  Get your tail outta here, or hadn't you figured that out?  Sheesh, yer dumb."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_ADVICE_1_B
  SAY @1050
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_ADVICE_2_B
  SAY @1051
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_ADVICE_1_C
  SAY #58337 /* ~"Let's see... advice.  Advice... advice.  Oh, yeah, I know... STOP BUGGIN' ME!!  Yeah, that's the ticket..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_ADVICE_1_D
  SAY #58338 /* ~"Well heck, I guess you just do what you're told, eh?  Now, if you'd listened to me right off the bat, boss, you never would've gotten into this mess..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_ADVICE_2_D
  SAY @1052
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_ADVICE_1_E
  SAY @1053
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_ADVICE_2_E
  SAY @1054
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_ADVICE_1_F
  SAY #58340 /* ~The demon looks about.  "What?  Seems like a cheery enough place.  Slaughter the locals, set yourself up as absolute ruler and tyrant.  Works for me."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_ADVICE_2_F
  SAY @1055
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_ADVICE_1_G
  SAY #58341 /* ~The creature looks quizzical.  "Isn't it obvious?  You get to that elven city.  All that pillaging, there's gotta be treasure ripe for the taking.  Sheesh."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_ADVICE_2_G
  SAY @1056
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_ADVICE_1_H
  SAY #58342 /* ~"But you want my advice?  I'd say you're screwed, boss.  But that's just my opinion.  You can go ahead and do whatever you want."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_STATUS_1
  SAY @1057
  IF ~HPLT(Myself,8)~ THEN GOTO F2SOA_STATUS_1_A
  IF ~HPLT(Myself,16)
!HPLT(Myself,8)~ THEN GOTO F2SOA_STATUS_1_B
  IF ~!HPLT(Myself,16)
RandomNum(4,1)~ THEN GOTO F2SOA_STATUS_1_C
  IF ~!HPLT(Myself,16)
RandomNum(4,2)~ THEN GOTO F2SOA_STATUS_1_D
  IF ~!HPLT(Myself,16)
RandomNum(4,3)~ THEN GOTO F2SOA_STATUS_1_E
  IF ~!HPLT(Myself,16)
RandomNum(4,4)~ THEN GOTO F2SOA_STATUS_1_F
END

IF ~~ THEN BEGIN F2SOA_STATUS_2
  SAY @1058
  IF ~HPLT(Myself,8)~ THEN GOTO F2SOA_STATUS_1_A
  IF ~HPLT(Myself,16)
!HPLT(Myself,8)~ THEN GOTO F2SOA_STATUS_1_B
  IF ~!HPLT(Myself,16)
RandomNum(4,1)~ THEN GOTO F2SOA_STATUS_1_C
  IF ~!HPLT(Myself,16)
RandomNum(4,2)~ THEN GOTO F2SOA_STATUS_2_D
  IF ~!HPLT(Myself,16)
RandomNum(4,3)~ THEN GOTO F2SOA_STATUS_2_E
  IF ~!HPLT(Myself,16)
RandomNum(4,4)~ THEN GOTO F2SOA_STATUS_2_F
END

IF ~~ THEN BEGIN F2SOA_STATUS_1_A
  SAY #58346 /* ~"But since you're asking, I could use healing.  Ichor's running bad... you wouldn't want to send me back to the planes, would you?  *That* would be a shame..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_STATUS_1_B
  SAY #58345 /* ~"But if you're really concerned, you could get me some healing.  I got scratches, you know... you wouldn't want me to die, would you?  I'm too useful!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_STATUS_2_B
  SAY @1059
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_STATUS_1_C
  SAY #58347 /* ~"But, hmmmn, let me see.  I'm kinda hungry.  How about a puppy sandwich?  A steak?  A chicken sacrifice?  C'mon, throw me a bone, here, sheesh!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_STATUS_1_D
  SAY #58348 /* ~"But since you asked, I think you should get more gold.  I wanna sleep in a BIG bag of gold.  I could swim in it... yeah, that's it, swim in the gold... yeah..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_STATUS_2_D
  SAY @1060
  IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN F2SOA_STATUS_1_E
  SAY #58349 /* ~"But I would like to say that you run around too much.  Here, there, back again... sheesh!  Don't you ever stop a while, set up shop?  Gimme a break, boss!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_STATUS_2_E
  SAY @1061
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_STATUS_1_F
  SAY #58350 /* ~"But since you asked, I wanna register a complaint.  Where's all *my* magical stuff?  I want a big sword... and a bag of holding... and some wands, yeah, wands..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_STATUS_2_F
  SAY @1062
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_EXIT_1
  SAY #58352 /* ~It looks ahead and sighs, scratching its rear luridly.  "Oh, sure.  Only, what, another fifty years of wanderin' around?  Don't you ever settle down?  Sheesh..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2SOA_EXIT_2
  SAY @1063
  IF ~~ THEN EXIT
END

// EVIL FAMILIAR TOB

BEGIN ~FAMIL225~

IF ~Alignment(Player1,MASK_GOOD)~ THEN BEGIN F2TOB_HOSTILE
  SAY @1037
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_EVIL)~ THEN BEGIN F2TOB_GABBER_1
  SAY #58326 /* ~The creature stares with open derision, sticking out its forked tongue rudely.  It scoots off to <CHARNAME>.  Obviously it doesn't want to talk to you...~ */
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GENEUTRAL)~ THEN BEGIN F2TOB_GABBER_1
  SAY @1038
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy(Myself),5)~ EXIT
END

IF ~InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_EVIL)~ THEN BEGIN F2TOB_MAINMENU_1
  SAY #58327 /* ~The impish creature regards you suspiciously, wary of a kick or slap headed its way, before sidling a step or two closer.  "Yeah, boss?  You want something?"~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58328 /* ~Come here.  You're going in my pack, for now.~ */ GOTO F2TOB_INPACK_1
  IF ~Range(LastTalkedToBy,3)~ THEN REPLY #58330 /* ~Don't be so frightened of me, idiot.  (pet the familiar)~ */ GOTO F2TOB_PET_1
  IF ~Range(LastTalkedToBy,3)~ THEN REPLY @1039 GOTO F2TOB_SLAP_1
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY #73435 /* ~(feed the familiar)~ */ GOTO F2TOB_FEED_1_A
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY #73436 /* ~(feed the familiar)~ */ GOTO F2TOB_FEED_1_B
  IF ~~ THEN REPLY #58353 /* ~Do have any advice for me, my familiar?~ */ GOTO F2TOB_ADVICE_1
  IF ~~ THEN REPLY #58354 /* ~Are you alright, familiar?  All is well?~ */ GOTO F2TOB_STATUS_1
  IF ~~ THEN REPLY #58355 /* ~Never mind.  Just keep moving.~ */ GOTO F2TOB_EXIT_1
END

IF ~InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GENEUTRAL)~ THEN BEGIN F2TOB_MAINMENU_2
  SAY #58327 /* ~The impish creature regards you suspiciously, making no sign of moving closer.  "Yeah?  You want something?"  It mutters something incomprehensible to itself.~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58362 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F2TOB_INPACK_2
  IF ~~ THEN REPLY #58360 /* ~(pet the familiar)~ */ GOTO F2TOB_PET_2
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY #73435 /* ~(feed the familiar)~ */ GOTO F2TOB_FEED_2_A
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY #73436 /* ~(feed the familiar)~ */ GOTO F2TOB_FEED_2_B
  IF ~~ THEN REPLY #58363 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F2TOB_ADVICE_2
  IF ~~ THEN REPLY #58373 /* ~How are you?  Everything okay down there?~ */ GOTO F2TOB_STATUS_2
  IF ~~ THEN REPLY @1005 GOTO F2TOB_STATUS_3
  IF ~~ THEN REPLY @1040 GOTO F2TOB_EXIT_2
END

IF ~~ THEN BEGIN F2TOB_PET_1
  SAY #58331 /* ~It seems disgusted as you pat it on the head.  "Oh, now I'm a cute little bunny?  Give me a break, boss."  The imp darts away and does a heebie-jeebie dance.~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58328 /* ~Come here.  You're going in my pack, for now.~ */ GOTO F2TOB_INPACK_1
  IF ~Range(LastTalkedToBy,3)~ THEN REPLY @1039 GOTO F2TOB_SLAP_1
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY #73435 /* ~(feed the familiar)~ */ GOTO F2TOB_FEED_1_A
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY #73436 /* ~(feed the familiar)~ */ GOTO F2TOB_FEED_1_B
  IF ~~ THEN REPLY #58353 /* ~Do have any advice for me, my familiar?~ */ GOTO F2TOB_ADVICE_1
  IF ~~ THEN REPLY #58354 /* ~Are you alright, familiar?  All is well?~ */ GOTO F2TOB_STATUS_1
  IF ~~ THEN REPLY #58355 /* ~Never mind.  Just keep moving.~ */ GOTO F2TOB_EXIT_1
END

IF ~~ THEN BEGIN F2TOB_PET_2
  SAY #58331 /* ~It seems disgusted as you pat it on the head.  "Oh, now I'm a cute little bunny?  Give me a break, boss."  The imp darts away and does a heebie-jeebie dance.~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58362 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F2TOB_INPACK_2
  IF ~~ THEN REPLY #58363 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F2TOB_ADVICE_2
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY #73435 /* ~(feed the familiar)~ */ GOTO F2TOB_FEED_2_A
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY #73436 /* ~(feed the familiar)~ */ GOTO F2TOB_FEED_2_B
  IF ~~ THEN REPLY #58373 /* ~How are you?  Everything okay down there?~ */ GOTO F2TOB_STATUS_2
  IF ~~ THEN REPLY @1005 GOTO F2TOB_STATUS_3
  IF ~~ THEN REPLY @1040 GOTO F2TOB_EXIT_2
END

IF ~~ THEN BEGIN F2TOB_SLAP_1
  SAY #58388 /* ~The imp reels from the blow.  "HeeEEYY!  Cripes!  What wuz that for?!  I did everything you told me to, boss!  Sheesh!  Some people..."~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58399 /* ~Come here, then.  Get in my pack.~ */ GOTO F2TOB_INPACK_1
  IF ~RandomNum(3,1)~ THEN REPLY #58391 /* ~(slap it again)~ */ GOTO F2TOB_SLAP_2
  IF ~RandomNum(3,2)~ THEN REPLY #58392 /* ~(slap it again)~ */ GOTO F2TOB_SLAP_3
  IF ~RandomNum(3,3)~ THEN REPLY #58393 /* ~(slap it again)~ */ GOTO F2TOB_SLAP_4
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY #73435 /* ~(feed the familiar)~ */ GOTO F2TOB_FEED_1_A
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY #73436 /* ~(feed the familiar)~ */ GOTO F2TOB_FEED_1_B
  IF ~~ THEN REPLY #58394 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F2TOB_ADVICE_1
  IF ~~ THEN REPLY #58395 /* ~Is all well down there?~ */ GOTO F2TOB_STATUS_1
  IF ~~ THEN REPLY #58396 /* ~Alright, let's just keep going.~ */ GOTO F2TOB_EXIT_1
END

IF ~~ THEN BEGIN F2TOB_SLAP_2
  SAY #58389 /* ~Another slap sends it to the floor, frantically covering its head.  "Gaaah!  Okay!  You're the boss-<PRO_MANWOMAN>!  YOU boss, ME just little follower!  I get it!"~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58399 /* ~Come here, then.  Get in my pack.~ */ GOTO F2TOB_INPACK_1
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY #73435 /* ~(feed the familiar)~ */ GOTO F2TOB_FEED_1_A
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY #73436 /* ~(feed the familiar)~ */ GOTO F2TOB_FEED_1_B
  IF ~~ THEN REPLY #58401 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F2TOB_ADVICE_1
  IF ~~ THEN REPLY #58403 /* ~So... is all well down there?~ */ GOTO F2TOB_STATUS_1
  IF ~~ THEN REPLY #58405 /* ~Alright, let's just keep going.~ */ GOTO F2TOB_EXIT_1
END

IF ~~ THEN BEGIN F2TOB_SLAP_3
  SAY #58397 /* ~"Ow!  Dammit, stop it!  I'll do whatever you say, just stop slappin'!"  It takes steps away, muttering something about 'abusive co-dependant relationships' or similar.~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58399 /* ~Come here, then.  Get in my pack.~ */ GOTO F2TOB_INPACK_1
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY #73435 /* ~(feed the familiar)~ */ GOTO F2TOB_FEED_1_A
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY #73436 /* ~(feed the familiar)~ */ GOTO F2TOB_FEED_1_B
  IF ~~ THEN REPLY #58401 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F2TOB_ADVICE_1
  IF ~~ THEN REPLY #58404 /* ~So... is all well down there?~ */ GOTO F2TOB_STATUS_1
  IF ~~ THEN REPLY #58406 /* ~Alright, let's just keep going.~ */ GOTO F2TOB_EXIT_1
END

IF ~~ THEN BEGIN F2TOB_SLAP_4
  SAY #58398 /* ~The imp darts away at the last second. "Nyah!  Thhhppppfffttt! You couldn't hit the broad side of a barn! You suck!" It dashes away before a reprisal can come.~ */
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy,30)~ EXIT
END

IF ~~ THEN BEGIN F2TOB_INPACK_1
  SAY #58329 /* ~"Oh, sure.  Stick me in your smelly pack.  Ever thought of putting some mint in there?  Baaah..."  Reluctantly, the imp crawls into your pack.~ */
  IF ~Alignment(Player1,MASK_LAWFUL)~ THEN DO ~GiveItemCreate("FAMIMP25",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_LCNEUTRAL)~ THEN DO ~GiveItemCreate("FAMDUS25",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_CHAOTIC)~ THEN DO ~GiveItemCreate("FAMQUA25",Player1,0,0,0)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN F2TOB_INPACK_2
  SAY #58329 /* ~"Oh, gimme a break... I don't need your pity!  Go ahead, stick me in your smelly pack.  Ever thought of putting some mint in there?  Baaah..."  Reluctantly, the imp crawls into your pack.~ */
  IF ~Alignment(Player1,MASK_LAWFUL)~ THEN DO ~GiveItemCreate("FAMIMP25",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_LCNEUTRAL)~ THEN DO ~GiveItemCreate("FAMDUS25",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_CHAOTIC)~ THEN DO ~GiveItemCreate("FAMQUA25",Player1,0,0,0)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN F2TOB_STATUS_3
  SAY @1041
  IF ~~ THEN REPLY @1042 GOTO F2TOB_STATUS_3_2
  IF ~~ THEN REPLY @1043 GOTO F2TOB_STATUS_3_2
END

IF ~~ THEN BEGIN F2TOB_STATUS_3_2
  SAY @1044
  IF ~~ THEN REPLY @1045 GOTO F2TOB_STATUS_3_3
  IF ~~ THEN REPLY @1046 GOTO F2TOB_STATUS_3_4
END

IF ~~ THEN BEGIN F2TOB_STATUS_3_3
  SAY @1047
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_STATUS_3_4
  SAY @1048
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_ADVICE_1
  SAY #58334 /* ~It looks at you incredulously, wondering if you are serious or if this is a prelude to a slap.  "You want *me* to give *you* advice, boss?  That's a first."~ */
  IF ~True()~ THEN EXIT
  IF ~Global("chapter","GLOBAL",8)~ THEN GOTO F2TOB_ADVICE_1_A
  IF ~Global("chapter","GLOBAL",9)~ THEN GOTO F2TOB_ADVICE_1_B
  IF ~Global("chapter","GLOBAL",10)~ THEN GOTO F2TOB_ADVICE_1_C
END

IF ~~ THEN BEGIN F2TOB_ADVICE_2
  SAY @1049
  IF ~True()~ THEN EXIT
  IF ~Global("chapter","GLOBAL",8)~ THEN GOTO F2TOB_ADVICE_2_A
  IF ~Global("chapter","GLOBAL",9)~ THEN GOTO F2TOB_ADVICE_2_B
  IF ~Global("chapter","GLOBAL",10)~ THEN GOTO F2TOB_ADVICE_2_C
END

IF ~~ THEN BEGIN F2TOB_ADVICE_1_A
  SAY #72697 /* ~It scratches its head for a moment before replying.  "There's big trouble, boss.  The time has come for all you Bhaalspawns.  The jig's up.  Time to pay the piper, you know.  Just don't get cacked is all I can say about it."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_ADVICE_2_A
  SAY @1064
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_ADVICE_1_B
  SAY #72698 /* ~The impish creature grins from ear to ear.  "Well...kill them before they kills you.  That's what my grandpappy always said.  Until he was, um, killed..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_ADVICE_2_B
  SAY @1065
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_ADVICE_1_C
  SAY #72699 /* ~It shrugs.  "Seems simple to me, boss.  Kill the bitch."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_ADVICE_2_C
  SAY @1066
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_STATUS_1
  SAY @1057
  IF ~HPLT(Myself,24)~ THEN GOTO F2TOB_STATUS_1_A
  IF ~HPLT(Myself,48)
!HPLT(Myself,24)~ THEN GOTO F2TOB_STATUS_1_B
  IF ~!HPLT(Myself,48)
RandomNum(4,1)~ THEN GOTO F2TOB_STATUS_1_C
  IF ~!HPLT(Myself,48)
RandomNum(4,2)~ THEN GOTO F2TOB_STATUS_1_D
  IF ~!HPLT(Myself,48)
RandomNum(4,3)~ THEN GOTO F2TOB_STATUS_1_E
  IF ~!HPLT(Myself,48)
RandomNum(4,4)~ THEN GOTO F2TOB_STATUS_1_F
END

IF ~~ THEN BEGIN F2TOB_STATUS_2
  SAY @1058
  IF ~HPLT(Myself,24)~ THEN GOTO F2TOB_STATUS_1_A
  IF ~HPLT(Myself,48)
!HPLT(Myself,24)~ THEN GOTO F2TOB_STATUS_1_B
  IF ~!HPLT(Myself,48)
RandomNum(4,1)~ THEN GOTO F2TOB_STATUS_1_C
  IF ~!HPLT(Myself,48)
RandomNum(4,2)~ THEN GOTO F2TOB_STATUS_2_D
  IF ~!HPLT(Myself,48)
RandomNum(4,3)~ THEN GOTO F2TOB_STATUS_2_E
  IF ~!HPLT(Myself,48)
RandomNum(4,4)~ THEN GOTO F2TOB_STATUS_2_F
END

IF ~~ THEN BEGIN F2TOB_STATUS_1_A
  SAY #58346 /* ~"But since you're asking, I could use healing.  Ichor's running bad... you wouldn't want to send me back to the planes, would you?  *That* would be a shame..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_STATUS_1_B
  SAY #58345 /* ~"But if you're really concerned, you could get me some healing.  I got scratches, you know... you wouldn't want me to die, would you?  I'm too useful!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_STATUS_2_B
  SAY @1059
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_STATUS_1_C
  SAY #58347 /* ~"But, hmmmn, let me see.  I'm kinda hungry.  How about a puppy sandwich?  A steak?  A chicken sacrifice?  C'mon, throw me a bone, here, sheesh!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_STATUS_1_D
  SAY #58348 /* ~"But since you asked, I think you should get more gold.  I wanna sleep in a BIG bag of gold.  I could swim in it... yeah, that's it, swim in the gold... yeah..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_STATUS_2_D
  SAY @1060
  IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN F2TOB_STATUS_1_E
  SAY #58349 /* ~"But I would like to say that you run around too much.  Here, there, back again... sheesh!  Don't you ever stop a while, set up shop?  Gimme a break, boss!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_STATUS_2_E
  SAY @1061
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_STATUS_1_F
  SAY #58350 /* ~"But since you asked, I wanna register a complaint.  Where's all *my* magical stuff?  I want a big sword... and a bag of holding... and some wands, yeah, wands..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_STATUS_2_F
  SAY @1062
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_EXIT_1
  SAY #58352 /* ~It looks ahead and sighs, scratching its rear luridly.  "Oh, sure.  Only, what, another fifty years of wanderin' around?  Don't you ever settle down?  Sheesh..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_EXIT_2
  SAY @1063
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_FEED_1_A
  SAY #73438 /* ~You offer the impish being a piece of dried meat.  It sniffs it with disgust and rolls its eyes.  "I don't really need nothin' to eat, boss.  Maybe if I'm wounded."  With that, it unceremoniously tosses the meat over its shoulder.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_FEED_1_B
  SAY #73441 /* ~The wounded imp takes a piece of dried meat gingerly from your pack and gulps it down greedily.  As he munches away, he looks at you askance.  "This don't mean I owes you nothin', boss."~ */
  IF ~~ THEN DO ~ApplySpell(Myself,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
END

IF ~~ THEN BEGIN F2TOB_FEED_2_A
  SAY @1067
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F2TOB_FEED_2_B
  SAY @1068
  IF ~~ THEN DO ~ApplySpell(Myself,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
END

// NEUTRAL FAMILIAR SOA

BEGIN ~FAMIL3~

IF ~!InPartySlot(LastTalkedToBy,0)
OR(2)
Alignment(Player1,MASK_GENEUTRAL)
Alignment(Player1,MASK_GOOD)
OR(2)
Alignment(Player1,MASK_GENEUTRAL)
!Alignment(LastTalkedToBy(Myself),MASK_GENEUTRAL)~ THEN BEGIN F3SOA_GABBER_1
  SAY #58356 /* ~The small creature looks at you with suspicion, and after a moment's inspection, it turns and gives you full view of its rear while it strolls to <CHARNAME>.~ */
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GOOD)
Alignment(LastTalkedToBy(Myself),MASK_GENEUTRAL)~ THEN BEGIN F3SOA_GABBER_2
  SAY @1069
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_EVIL)
Alignment(LastTalkedToBy(Myself),MASK_GENEUTRAL)~ THEN BEGIN F3SOA_GABBER_3
  SAY @1070
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_EVIL)
!Alignment(LastTalkedToBy(Myself),MASK_GENEUTRAL)~ THEN BEGIN F3SOA_GABBER_4
  SAY @1071
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GOOD)~ THEN BEGIN F3SOA_MAINMENU_1
  SAY #58357 /* ~The familiar sighs, its nose twitching slightly with curiosity as it looks up with dark eyes. "What is it now, <PRO_MANWOMAN>? I am hungry. I wish to be petted and fed."~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58358 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F3SOA_INPACK_1
  IF ~~ THEN REPLY #58299 /* ~(pet and play with it)~ */ GOTO F3SOA_PET_1
  IF ~~ THEN REPLY #58383 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F3SOA_ADVICE_1
  IF ~~ THEN REPLY #58384 /* ~How are you?  Everything okay down there?~ */ GOTO F3SOA_STATUS_1
  IF ~~ THEN REPLY @1072 GOTO F3SOA_STATUS_4_A
  IF ~~ THEN REPLY #59804 /* ~Give me anything you have pickpocketed, will you?~ */ GOTO F3SOA_STEAL_1
  IF ~~ THEN REPLY #58385 /* ~Perhaps later.  Let's just keep going.~ */ GOTO F3SOA_EXIT_1
END

IF ~InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GENEUTRAL)~ THEN BEGIN F3SOA_MAINMENU_2
  SAY #58357 /* ~The familiar sighs, its nose twitching slightly with curiosity as it looks up with dark eyes. "What is it now, <PRO_MANWOMAN>? I am hungry. I wish to be petted and fed."~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58358 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F3SOA_INPACK_1
  IF ~~ THEN REPLY #58360 /* ~(pet the familiar)~ */ GOTO F3SOA_PET_2
  IF ~~ THEN REPLY #58383 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F3SOA_ADVICE_1
  IF ~~ THEN REPLY #58384 /* ~How are you?  Everything okay down there?~ */ GOTO F3SOA_STATUS_2
  IF ~~ THEN REPLY #59804 /* ~Give me anything you have pickpocketed, will you?~ */ GOTO F3SOA_STEAL_1
  IF ~~ THEN REPLY #58385 /* ~Perhaps later.  Let's just keep going.~ */ GOTO F3SOA_EXIT_1
END

IF ~InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_EVIL)~ THEN BEGIN F3SOA_MAINMENU_3
  SAY @1073
  IF ~!InventoryFull(Player1)~ THEN REPLY #58328 /* ~Come here.  You're going in my pack, for now.~ */ GOTO F3SOA_INPACK_2
  IF ~~ THEN REPLY #58330 /* ~Don't be so frightened of me, idiot.  (pet the familiar)~ */ GOTO F3SOA_PET_3
  IF ~Range(LastTalkedToBy,3)~ THEN REPLY @1039 GOTO F3SOA_SLAP_1
  IF ~~ THEN REPLY #58353 /* ~Do have any advice for me, my familiar?~ */ GOTO F3SOA_ADVICE_1
  IF ~~ THEN REPLY #58354 /* ~Are you alright, familiar?  All is well?~ */ GOTO F3SOA_STATUS_3
  IF ~~ THEN REPLY @1072 GOTO F3SOA_STATUS_4_B
  IF ~~ THEN REPLY #59804 /* ~Give me anything you have pickpocketed, will you?~ */ GOTO F3SOA_STEAL_1
  IF ~~ THEN REPLY #58355 /* ~Never mind.  Just keep moving.~ */ GOTO F3SOA_EXIT_2
END

IF ~~ THEN BEGIN F3SOA_INPACK_1
  SAY #58359 /* ~The familiar eyes your pack, and then reluctantly crawls inside. "Very well. It is better that you carry me. Do not bump me around so much this time."~ */
  IF ~Alignment(Player1,MASK_LAWFUL)~ THEN DO ~GiveItemCreate("FAMFER",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_LCNEUTRAL)~ THEN DO ~GiveItemCreate("FAMRAB",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_CHAOTIC)~ THEN DO ~GiveItemCreate("FAMCAT",Player1,0,0,0)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN F3SOA_INPACK_2
  SAY @1074
  IF ~Alignment(Player1,MASK_LAWFUL)~ THEN DO ~GiveItemCreate("FAMFER",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_LCNEUTRAL)~ THEN DO ~GiveItemCreate("FAMRAB",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_CHAOTIC)~ THEN DO ~GiveItemCreate("FAMCAT",Player1,0,0,0)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN F3SOA_PET_1
  SAY @1075
  IF ~!InventoryFull(Player1)~ THEN REPLY #58358 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F3SOA_INPACK_1
  IF ~~ THEN REPLY #58383 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F3SOA_ADVICE_1
  IF ~~ THEN REPLY #58384 /* ~How are you?  Everything okay down there?~ */ GOTO F3SOA_STATUS_1
  IF ~~ THEN REPLY @1072 GOTO F3SOA_STATUS_4_A
  IF ~~ THEN REPLY #59804 /* ~Give me anything you have pickpocketed, will you?~ */ GOTO F3SOA_STEAL_1
  IF ~~ THEN REPLY #58385 /* ~Perhaps later.  Let's just keep going.~ */ GOTO F3SOA_EXIT_1
END

IF ~~ THEN BEGIN F3SOA_PET_2
  SAY #58361 /* ~"Aahhhh..."  The familiar half-closes its eyes with contentment, a pleased smile creeping across its face.  "Yes, this is good.  Food would also be nice."~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58358 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F3SOA_INPACK_1
  IF ~~ THEN REPLY #58360 /* ~(pet the familiar)~ */ GOTO F3SOA_PET_2
  IF ~~ THEN REPLY #58383 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F3SOA_ADVICE_1
  IF ~~ THEN REPLY #58384 /* ~How are you?  Everything okay down there?~ */ GOTO F3SOA_STATUS_2
  IF ~~ THEN REPLY #59804 /* ~Give me anything you have pickpocketed, will you?~ */ GOTO F3SOA_STEAL_1
  IF ~~ THEN REPLY #58385 /* ~Perhaps later.  Let's just keep going.~ */ GOTO F3SOA_EXIT_1
END

IF ~~ THEN BEGIN F3SOA_PET_3
  SAY @1076
  IF ~!InventoryFull(Player1)~ THEN REPLY #58328 /* ~Come here.  You're going in my pack, for now.~ */ GOTO F3SOA_INPACK_2
  IF ~Range(LastTalkedToBy,3)~ THEN REPLY @1039 GOTO F3SOA_SLAP_1
  IF ~~ THEN REPLY #58353 /* ~Do have any advice for me, my familiar?~ */ GOTO F3SOA_ADVICE_1
  IF ~~ THEN REPLY #58354 /* ~Are you alright, familiar?  All is well?~ */ GOTO F3SOA_STATUS_3
  IF ~~ THEN REPLY @1072 GOTO F3SOA_STATUS_4_B
  IF ~~ THEN REPLY #59804 /* ~Give me anything you have pickpocketed, will you?~ */ GOTO F3SOA_STEAL_1
  IF ~~ THEN REPLY @1077 GOTO F3SOA_EXIT_2
END

IF ~~ THEN BEGIN F3SOA_STATUS_4_A
  SAY @1078
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_STATUS_4_B
  SAY @1079
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_SLAP_1
  SAY @1080
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy(Myself),5)~ EXIT
END

IF ~~ THEN BEGIN F3SOA_EXIT_1
  SAY #58382 /* ~The familiar sighs and turns its eyes disinterestedly to the path before you.  "I would prefer to choose our path, myself, but you'll no doubt want to be stubborn."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_EXIT_2
  SAY @1081
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_ADVICE_1
  SAY #58364 /* ~The animal looks at you, fairly close to bewildered. "Me? I suppose I have thoughts that it would amuse me to share, but would you even regard them, <PRO_MANWOMAN>?"~ */
  IF ~Global("chapter","GLOBAL",1)
AreaType(DUNGEON)~ THEN GOTO F3SOA_ADVICE_1_A
  IF ~Global("chapter","GLOBAL",1)
!AreaType(DUNGEON)~ THEN GOTO F3SOA_ADVICE_1_B
  IF ~Global("chapter","GLOBAL",2)~ THEN GOTO F3SOA_ADVICE_1_C
  IF ~Global("chapter","GLOBAL",3)~ THEN GOTO F3SOA_ADVICE_1_D
  IF ~Global("chapter","GLOBAL",4)~ THEN GOTO F3SOA_ADVICE_1_E
  IF ~Global("chapter","GLOBAL",5)~ THEN GOTO F3SOA_ADVICE_1_F
  IF ~Global("chapter","GLOBAL",6)~ THEN GOTO F3SOA_ADVICE_1_G
  IF ~Alignment(Player1,MASK_GENEUTRAL)
Global("chapter","GLOBAL",7)~ THEN GOTO F3SOA_ADVICE_1_H
  IF ~!Alignment(Player1,MASK_GENEUTRAL)
Global("chapter","GLOBAL",7)~ THEN GOTO F3SOA_ADVICE_2_H
END

IF ~~ THEN BEGIN F3SOA_ADVICE_1_A
  SAY #58365 /* ~Looking about at the darkness, the familiar turns back with a shrug. "I would say let us be off to the surface, <PRO_MANWOMAN>. Surely food is more plentiful there."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_ADVICE_1_B
  SAY #58366 /* ~It looks about for several moments, watching various city animals and people. It finally turns back, almost startled. "What? Advice? Ah...no. No advice."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_ADVICE_1_C
  SAY #58367 /* ~The little animal thinks to itself for a few moments and then saunters away, presenting its tail and bum to you.  Apparently, it has tired of thinking.~ */
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy,5)~ EXIT
END

IF ~~ THEN BEGIN F3SOA_ADVICE_1_D
  SAY #58368 /* ~It thinks for a long moment and then seems to drift off, yawning widely. It stares, blinking several times. "Feed me, and then pet me some more. That is my advice."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_ADVICE_1_E
  SAY #58369 /* ~"Let's see...the wizard is behind all your trials, yes? Then it is easy, <PRO_MANWOMAN>. Find him, kill him, and your troubles are no more. Now will you feed me, yes?"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_ADVICE_1_F
  SAY #58370 /* ~It looks about balefully, its ears folding back against its head in fear. "This...is a place where I am food. I do not like this place. We should go elsewhere."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_ADVICE_1_G
  SAY #58371 /* ~"Hmm, the elven city has the Tree of Life within, <PRO_MANWOMAN>, a wondrous thing connected to all that is natural. You must find the city and the Tree. That is my advice."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_ADVICE_1_H
  SAY @1082
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_ADVICE_2_H
  SAY @1083
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_STATUS_1
  SAY #58374 /* ~It looks up with dark eyes, seemingly content to just be near you. It sighs and looks away briefly. "We are connected, you and I. If you are well, so am I."~ */
  IF ~HPLT(Myself,8)~ THEN GOTO F3SOA_STATUS_2_A
  IF ~HPLT(Myself,16)
!HPLT(Myself,8)~ THEN GOTO F3SOA_STATUS_1_B
  IF ~!HPLT(Myself,16)
RandomNum(4,1)~ THEN GOTO F3SOA_STATUS_2_C
  IF ~!HPLT(Myself,16)
RandomNum(4,2)~ THEN GOTO F3SOA_STATUS_1_D
  IF ~!HPLT(Myself,16)
RandomNum(4,3)~ THEN GOTO F3SOA_STATUS_2_E
  IF ~!HPLT(Myself,16)
RandomNum(4,4)~ THEN GOTO F3SOA_STATUS_1_F
END

IF ~~ THEN BEGIN F3SOA_STATUS_2
  SAY #58374 /* ~It looks up with dark eyes, seemingly content to just be near you. It sighs and looks away briefly. "We are connected, you and I. If you are well, so am I."~ */
  IF ~HPLT(Myself,8)~ THEN GOTO F3SOA_STATUS_2_A
  IF ~HPLT(Myself,16)
!HPLT(Myself,8)~ THEN GOTO F3SOA_STATUS_2_B
  IF ~!HPLT(Myself,16)
RandomNum(4,1)~ THEN GOTO F3SOA_STATUS_2_C
  IF ~!HPLT(Myself,16)
RandomNum(4,2)~ THEN GOTO F3SOA_STATUS_2_D
  IF ~!HPLT(Myself,16)
RandomNum(4,3)~ THEN GOTO F3SOA_STATUS_2_E
  IF ~!HPLT(Myself,16)
RandomNum(4,4)~ THEN GOTO F3SOA_STATUS_2_F
END

IF ~~ THEN BEGIN F3SOA_STATUS_3
  SAY @1084
  IF ~HPLT(Myself,8)~ THEN GOTO F3SOA_STATUS_2_A
  IF ~HPLT(Myself,16)
!HPLT(Myself,8)~ THEN GOTO F3SOA_STATUS_3_B
  IF ~!HPLT(Myself,16)
RandomNum(4,1)~ THEN GOTO F3SOA_STATUS_3_C
  IF ~!HPLT(Myself,16)
RandomNum(4,2)~ THEN GOTO F3SOA_STATUS_3_D
  IF ~!HPLT(Myself,16)
RandomNum(4,3)~ THEN GOTO F3SOA_STATUS_2_E
  IF ~!HPLT(Myself,16)
RandomNum(4,4)~ THEN GOTO F3SOA_STATUS_3_F
END

IF ~~ THEN BEGIN F3SOA_STATUS_2_A
  SAY #58376 /* ~"But I. myself, am hurt very badly.  I bleed, <PRO_MANWOMAN>.  I may survive, or I may not... we shall see."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_STATUS_1_B
  SAY @1085
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_STATUS_2_B
  SAY #58375 /* ~"But I, myself, have a few insignificant injuries. I am strengthened because you are stronger than I. If you could treat my wounds, it would please me."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_STATUS_3_B
  SAY @1086
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_STATUS_2_C
  SAY #58377 /* ~"But since you ask, I am possessed of a craving for food.  Procure some for me and I shall allow you to pet me for a while longer."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_STATUS_3_C
  SAY @1087
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_STATUS_1_D
  SAY @1088
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_STATUS_2_D
  SAY #58378 /* ~"But I think you are a good enough traveling companion. I am pleased with the progress we make. Perhaps I shall remain with you for some time to come, we shall see."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_STATUS_3_D
  SAY @1089
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_STATUS_2_E
  SAY #58379 /* ~The small animal seems to ponder saying something else, but eventually its attention drifts and it finds something more interesting than you elsewhere.  Walking away, it presents its tail and bum to you.~ */
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy,10)~ EXIT
END

IF ~~ THEN BEGIN F3SOA_STATUS_1_F
  SAY @1090
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_STATUS_2_F
  SAY #58380 /* ~"But all is well enough, <PRO_MANWOMAN>.  Why?  Are you not well?  You will not sicken and die on me, <PRO_MANWOMAN>, would you?  If you did it would sadden me, for a while."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_STATUS_3_F
  SAY @1091
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3SOA_STEAL_1
  SAY #59805 /* ~The familiar eyes you suspiciously.  "But when I take things they belong to me."~ */
  IF ~~ THEN REPLY #59806 /* ~Never mind that.  Hand it over.~ */ GOTO F3SOA_STEAL_2
  IF ~~ THEN REPLY #59807 /* ~Pretty please?  I'll feed you and pet you...~ */ GOTO F3SOA_STEAL_3
  IF ~~ THEN REPLY @1092 GOTO F3SOA_STEAL_4
  IF ~~ THEN REPLY #59808 /* ~Oh, never mind, then.~ */ GOTO F3SOA_STEAL_5
END

IF ~~ THEN BEGIN F3SOA_STEAL_2
  SAY #59809 /* ~The small animal rolls its eyes and sighs petulantly.  "Fine.  But you are very cruel to me, you know."~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

IF ~~ THEN BEGIN F3SOA_STEAL_3
  SAY #59810 /* ~The small animal twitches its tail, pondering.  "Well... perhaps.  But I would not put it past you not to keep your word.  (sigh)  Oh, very well.  It amuses me when you beg."~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

IF ~~ THEN BEGIN F3SOA_STEAL_4
  SAY #59813 /* ~"(sigh)  Very well.  Although next time don't expect such co-operation just from a few seconds of petting."~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

IF ~~ THEN BEGIN F3SOA_STEAL_5
  SAY #59811 /* ~"As it should be.  I earned it, after all."~ */
  IF ~~ THEN EXIT
END

// NEUTRAL FAMILIAR TOB

BEGIN ~FAMIL325~

IF ~!InPartySlot(LastTalkedToBy,0)
OR(2)
Alignment(Player1,MASK_GENEUTRAL)
Alignment(Player1,MASK_GOOD)
OR(2)
Alignment(Player1,MASK_GENEUTRAL)
!Alignment(LastTalkedToBy(Myself),MASK_GENEUTRAL)~ THEN BEGIN F3TOB_GABBER_1
  SAY #58356 /* ~The small creature looks at you with suspicion, and after a moment's inspection, it turns and gives you full view of its rear while it strolls to <CHARNAME>.~ */
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GOOD)
Alignment(LastTalkedToBy(Myself),MASK_GENEUTRAL)~ THEN BEGIN F3TOB_GABBER_2
  SAY @1069
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_EVIL)
Alignment(LastTalkedToBy(Myself),MASK_GENEUTRAL)~ THEN BEGIN F3TOB_GABBER_3
  SAY @1070
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_EVIL)
!Alignment(LastTalkedToBy(Myself),MASK_GENEUTRAL)~ THEN BEGIN F3TOB_GABBER_4
  SAY @1071
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GOOD)~ THEN BEGIN F3TOB_MAINMENU_1
  SAY #58357 /* ~The familiar sighs, its nose twitching slightly with curiosity as it looks up with dark eyes. "What is it now, <PRO_MANWOMAN>? I am hungry. I wish to be petted and fed."~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58358 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F3TOB_INPACK_1
  IF ~~ THEN REPLY #58299 /* ~(pet and play with it)~ */ GOTO F3TOB_PET_1
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY #73442 /* ~(feed the familiar)~ */ GOTO F3TOB_FEED_1_A
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY #73443 /* ~(feed the familiar)~ */ GOTO F3TOB_FEED_1_B
  IF ~~ THEN REPLY #58383 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F3TOB_ADVICE_1
  IF ~~ THEN REPLY #58384 /* ~How are you?  Everything okay down there?~ */ GOTO F3TOB_STATUS_1
  IF ~~ THEN REPLY @1072 GOTO F3TOB_STATUS_4_A
  IF ~~ THEN REPLY #59804 /* ~Give me anything you have pickpocketed, will you?~ */ GOTO F3TOB_STEAL_1
  IF ~~ THEN REPLY #58385 /* ~Perhaps later.  Let's just keep going.~ */ GOTO F3TOB_EXIT_1
END

IF ~InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GENEUTRAL)~ THEN BEGIN F3TOB_MAINMENU_2
  SAY #58357 /* ~The familiar sighs, its nose twitching slightly with curiosity as it looks up with dark eyes. "What is it now, <PRO_MANWOMAN>? I am hungry. I wish to be petted and fed."~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58358 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F3TOB_INPACK_1
  IF ~~ THEN REPLY #58360 /* ~(pet the familiar)~ */ GOTO F3TOB_PET_2
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY #73442 /* ~(feed the familiar)~ */ GOTO F3TOB_FEED_2_A
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY #73443 /* ~(feed the familiar)~ */ GOTO F3TOB_FEED_2_B
  IF ~~ THEN REPLY #58383 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F3TOB_ADVICE_1
  IF ~~ THEN REPLY #58384 /* ~How are you?  Everything okay down there?~ */ GOTO F3TOB_STATUS_2
  IF ~~ THEN REPLY #59804 /* ~Give me anything you have pickpocketed, will you?~ */ GOTO F3TOB_STEAL_1
  IF ~~ THEN REPLY #58385 /* ~Perhaps later.  Let's just keep going.~ */ GOTO F3TOB_EXIT_1
END

IF ~InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_EVIL)~ THEN BEGIN F3TOB_MAINMENU_3
  SAY @1073
  IF ~!InventoryFull(Player1)~ THEN REPLY #58328 /* ~Come here.  You're going in my pack, for now.~ */ GOTO F3TOB_INPACK_2
  IF ~~ THEN REPLY #58330 /* ~Don't be so frightened of me, idiot.  (pet the familiar)~ */ GOTO F3TOB_PET_3
  IF ~Range(LastTalkedToBy,3)~ THEN REPLY @1039 GOTO F3TOB_SLAP_1
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY #73442 /* ~(feed the familiar)~ */ GOTO F3TOB_FEED_3_A
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY #73443 /* ~(feed the familiar)~ */ GOTO F3TOB_FEED_3_B
  IF ~~ THEN REPLY #58353 /* ~Do have any advice for me, my familiar?~ */ GOTO F3TOB_ADVICE_1
  IF ~~ THEN REPLY #58354 /* ~Are you alright, familiar?  All is well?~ */ GOTO F3TOB_STATUS_3
  IF ~~ THEN REPLY @1072 GOTO F3TOB_STATUS_4_B
  IF ~~ THEN REPLY #59804 /* ~Give me anything you have pickpocketed, will you?~ */ GOTO F3TOB_STEAL_1
  IF ~~ THEN REPLY #58355 /* ~Never mind.  Just keep moving.~ */ GOTO F3TOB_EXIT_2
END

IF ~~ THEN BEGIN F3TOB_INPACK_1
  SAY #58359 /* ~The familiar eyes your pack, and then reluctantly crawls inside. "Very well. It is better that you carry me. Do not bump me around so much this time."~ */
  IF ~Alignment(Player1,MASK_LAWFUL)~ THEN DO ~GiveItemCreate("FAMFER25",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_LCNEUTRAL)~ THEN DO ~GiveItemCreate("FAMRAB25",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_CHAOTIC)~ THEN DO ~GiveItemCreate("FAMCAT25",Player1,0,0,0)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN F3TOB_INPACK_2
  SAY @1074
  IF ~Alignment(Player1,MASK_LAWFUL)~ THEN DO ~GiveItemCreate("FAMFER25",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_LCNEUTRAL)~ THEN DO ~GiveItemCreate("FAMRAB25",Player1,0,0,0)
DestroySelf()~ EXIT
  IF ~Alignment(Player1,MASK_CHAOTIC)~ THEN DO ~GiveItemCreate("FAMCAT25",Player1,0,0,0)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN F3TOB_PET_1
  SAY @1075
  IF ~!InventoryFull(Player1)~ THEN REPLY #58358 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F3TOB_INPACK_1
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY #73442 /* ~(feed the familiar)~ */ GOTO F3TOB_FEED_1_A
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY #73443 /* ~(feed the familiar)~ */ GOTO F3TOB_FEED_1_B
  IF ~~ THEN REPLY #58383 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F3TOB_ADVICE_1
  IF ~~ THEN REPLY #58384 /* ~How are you?  Everything okay down there?~ */ GOTO F3TOB_STATUS_1
  IF ~~ THEN REPLY @1072 GOTO F3TOB_STATUS_4_A
  IF ~~ THEN REPLY #59804 /* ~Give me anything you have pickpocketed, will you?~ */ GOTO F3TOB_STEAL_1
  IF ~~ THEN REPLY #58385 /* ~Perhaps later.  Let's just keep going.~ */ GOTO F3TOB_EXIT_1
END

IF ~~ THEN BEGIN F3TOB_PET_2
  SAY #58361 /* ~"Aahhhh..."  The familiar half-closes its eyes with contentment, a pleased smile creeping across its face.  "Yes, this is good.  Food would also be nice."~ */
  IF ~!InventoryFull(Player1)~ THEN REPLY #58358 /* ~Come here.  I want to pick you up and put you in my pack where it's a bit safer.~ */ GOTO F3TOB_INPACK_1
  IF ~~ THEN REPLY #58360 /* ~(pet the familiar)~ */ GOTO F3TOB_PET_2
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY #73442 /* ~(feed the familiar)~ */ GOTO F3TOB_FEED_2_A
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY #73443 /* ~(feed the familiar)~ */ GOTO F3TOB_FEED_2_B
  IF ~~ THEN REPLY #58383 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO F3TOB_ADVICE_1
  IF ~~ THEN REPLY #58384 /* ~How are you?  Everything okay down there?~ */ GOTO F3TOB_STATUS_2
  IF ~~ THEN REPLY #59804 /* ~Give me anything you have pickpocketed, will you?~ */ GOTO F3TOB_STEAL_1
  IF ~~ THEN REPLY #58385 /* ~Perhaps later.  Let's just keep going.~ */ GOTO F3TOB_EXIT_1
END

IF ~~ THEN BEGIN F3TOB_PET_3
  SAY @1076
  IF ~!InventoryFull(Player1)~ THEN REPLY #58328 /* ~Come here.  You're going in my pack, for now.~ */ GOTO F3TOB_INPACK_2
  IF ~Range(LastTalkedToBy,3)~ THEN REPLY @1039 GOTO F3TOB_SLAP_1
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY #73442 /* ~(feed the familiar)~ */ GOTO F3TOB_FEED_3_A
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY #73443 /* ~(feed the familiar)~ */ GOTO F3TOB_FEED_3_B
  IF ~~ THEN REPLY #58353 /* ~Do have any advice for me, my familiar?~ */ GOTO F3TOB_ADVICE_1
  IF ~~ THEN REPLY #58354 /* ~Are you alright, familiar?  All is well?~ */ GOTO F3TOB_STATUS_3
  IF ~~ THEN REPLY @1072 GOTO F3TOB_STATUS_4_B
  IF ~~ THEN REPLY #59804 /* ~Give me anything you have pickpocketed, will you?~ */ GOTO F3TOB_STEAL_1
  IF ~~ THEN REPLY @1077 GOTO F3TOB_EXIT_2
END

IF ~~ THEN BEGIN F3TOB_STATUS_4_A
  SAY @1078
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_STATUS_4_B
  SAY @1079
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_SLAP_1
  SAY @1080
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy(Myself),5)~ EXIT
END

IF ~~ THEN BEGIN F3TOB_EXIT_1
  SAY #58382 /* ~The familiar sighs and turns its eyes disinterestedly to the path before you.  "I would prefer to choose our path, myself, but you'll no doubt want to be stubborn."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_EXIT_2
  SAY @1081
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_ADVICE_1
  SAY #58364 /* ~The animal looks at you, fairly close to bewildered. "Me? I suppose I have thoughts that it would amuse me to share, but would you even regard them, <PRO_MANWOMAN>?"~ */
  IF ~True()~ THEN EXIT
  IF ~Global("chapter","GLOBAL",8)~ THEN GOTO F3TOB_ADVICE_1_A
  IF ~Alignment(Player1,MASK_GENEUTRAL)
Global("chapter","GLOBAL",9)~ THEN GOTO F3TOB_ADVICE_1_B
  IF ~!Alignment(Player1,MASK_GENEUTRAL)
Global("chapter","GLOBAL",9)~ THEN GOTO F3TOB_ADVICE_2_B
  IF ~Alignment(Player1,MASK_GENEUTRAL)
Global("chapter","GLOBAL",10)~ THEN GOTO F3TOB_ADVICE_1_C
  IF ~!Alignment(Player1,MASK_GENEUTRAL)
Global("chapter","GLOBAL",10)~ THEN GOTO F3TOB_ADVICE_2_C
END

IF ~~ THEN BEGIN F3TOB_ADVICE_1_A
  SAY #72700 /* ~The little animal shrugs, bored.  "I do not know what advice to give.  The wizard is dead, you have your soul... can you not just leave?"  It yawns widely.  "Maybe build an army.  Isn't that what you do?"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_ADVICE_1_B
  SAY #72701 /* ~It blinks several times, thinking hard.  "It...seems to me that there is a reason that all the children of Bhaal are coming together.  You must end it, I think."  It grins suddenly.  "And, of course, you must win!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_ADVICE_2_B
  SAY @1093
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_ADVICE_1_C
  SAY #72702 /* ~"The only answer must be obvious...you must find this female who has lied to you and kill her!  You must travel to the Abyss and her life must be ended!"  It shrugs.  "Or, at least, that's what I would do."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_ADVICE_2_C
  SAY @1094
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_STATUS_1
  SAY #58374 /* ~It looks up with dark eyes, seemingly content to just be near you. It sighs and looks away briefly. "We are connected, you and I. If you are well, so am I."~ */
  IF ~HPLT(Myself,24)~ THEN GOTO F3TOB_STATUS_2_A
  IF ~HPLT(Myself,48)
!HPLT(Myself,24)~ THEN GOTO F3TOB_STATUS_1_B
  IF ~!HPLT(Myself,48)
RandomNum(4,1)~ THEN GOTO F3TOB_STATUS_2_C
  IF ~!HPLT(Myself,48)
RandomNum(4,2)~ THEN GOTO F3TOB_STATUS_1_D
  IF ~!HPLT(Myself,48)
RandomNum(4,3)~ THEN GOTO F3TOB_STATUS_2_E
  IF ~!HPLT(Myself,48)
RandomNum(4,4)~ THEN GOTO F3TOB_STATUS_1_F
END

IF ~~ THEN BEGIN F3TOB_STATUS_2
  SAY #58374 /* ~It looks up with dark eyes, seemingly content to just be near you. It sighs and looks away briefly. "We are connected, you and I. If you are well, so am I."~ */
  IF ~HPLT(Myself,24)~ THEN GOTO F3TOB_STATUS_2_A
  IF ~HPLT(Myself,48)
!HPLT(Myself,24)~ THEN GOTO F3TOB_STATUS_2_B
  IF ~!HPLT(Myself,48)
RandomNum(4,1)~ THEN GOTO F3TOB_STATUS_2_C
  IF ~!HPLT(Myself,48)
RandomNum(4,2)~ THEN GOTO F3TOB_STATUS_2_D
  IF ~!HPLT(Myself,48)
RandomNum(4,3)~ THEN GOTO F3TOB_STATUS_2_E
  IF ~!HPLT(Myself,48)
RandomNum(4,4)~ THEN GOTO F3TOB_STATUS_2_F
END

IF ~~ THEN BEGIN F3TOB_STATUS_3
  SAY @1084
  IF ~HPLT(Myself,24)~ THEN GOTO F3TOB_STATUS_2_A
  IF ~HPLT(Myself,48)
!HPLT(Myself,24)~ THEN GOTO F3TOB_STATUS_3_B
  IF ~!HPLT(Myself,48)
RandomNum(4,1)~ THEN GOTO F3TOB_STATUS_3_C
  IF ~!HPLT(Myself,48)
RandomNum(4,2)~ THEN GOTO F3TOB_STATUS_3_D
  IF ~!HPLT(Myself,48)
RandomNum(4,3)~ THEN GOTO F3TOB_STATUS_2_E
  IF ~!HPLT(Myself,48)
RandomNum(4,4)~ THEN GOTO F3TOB_STATUS_3_F
END

IF ~~ THEN BEGIN F3TOB_STATUS_2_A
  SAY #58376 /* ~"But I. myself, am hurt very badly.  I bleed, <PRO_MANWOMAN>.  I may survive, or I may not... we shall see."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_STATUS_1_B
  SAY @1085
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_STATUS_2_B
  SAY #58375 /* ~"But I, myself, have a few insignificant injuries. I am strengthened because you are stronger than I. If you could treat my wounds, it would please me."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_STATUS_3_B
  SAY @1086
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_STATUS_2_C
  SAY #58377 /* ~"But since you ask, I am possessed of a craving for food.  Procure some for me and I shall allow you to pet me for a while longer."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_STATUS_3_C
  SAY @1087
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_STATUS_1_D
  SAY @1088
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_STATUS_2_D
  SAY #58378 /* ~"But I think you are a good enough traveling companion. I am pleased with the progress we make. Perhaps I shall remain with you for some time to come, we shall see."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_STATUS_3_D
  SAY @1089
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_STATUS_2_E
  SAY #58379 /* ~The small animal seems to ponder saying something else, but eventually its attention drifts and it finds something more interesting than you elsewhere.  Walking away, it presents its tail and bum to you.~ */
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy,10)~ EXIT
END

IF ~~ THEN BEGIN F3TOB_STATUS_1_F
  SAY @1090
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_STATUS_2_F
  SAY #58380 /* ~"But all is well enough, <PRO_MANWOMAN>.  Why?  Are you not well?  You will not sicken and die on me, <PRO_MANWOMAN>, would you?  If you did it would sadden me, for a while."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_STATUS_3_F
  SAY @1091
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_STEAL_1
  SAY #59805 /* ~The familiar eyes you suspiciously.  "But when I take things they belong to me."~ */
  IF ~~ THEN REPLY #59806 /* ~Never mind that.  Hand it over.~ */ GOTO F3TOB_STEAL_2
  IF ~~ THEN REPLY #59807 /* ~Pretty please?  I'll feed you and pet you...~ */ GOTO F3TOB_STEAL_3
  IF ~~ THEN REPLY @1092 GOTO F3TOB_STEAL_4
  IF ~~ THEN REPLY #59808 /* ~Oh, never mind, then.~ */ GOTO F3TOB_STEAL_5
END

IF ~~ THEN BEGIN F3TOB_STEAL_2
  SAY #59809 /* ~The small animal rolls its eyes and sighs petulantly.  "Fine.  But you are very cruel to me, you know."~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

IF ~~ THEN BEGIN F3TOB_STEAL_3
  SAY #59810 /* ~The small animal twitches its tail, pondering.  "Well... perhaps.  But I would not put it past you not to keep your word.  (sigh)  Oh, very well.  It amuses me when you beg."~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

IF ~~ THEN BEGIN F3TOB_STEAL_4
  SAY #59813 /* ~"(sigh)  Very well.  Although next time don't expect such co-operation just from a few seconds of petting."~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

IF ~~ THEN BEGIN F3TOB_STEAL_5
  SAY #59811 /* ~"As it should be.  I earned it, after all."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_FEED_1_A
  SAY @1095
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_FEED_1_B
  SAY @1096
  IF ~~ THEN DO ~ApplySpell(Myself,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
END

IF ~~ THEN BEGIN F3TOB_FEED_2_A
  SAY #73444 /* ~You scrounge up some food from your pack and offer it to the creature.  It seems pleased and nibbles away contentedly, pausing every now and again to grin at you.  "Thank you, my <PRO_LADYLORD>."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_FEED_2_B
  SAY #73445 /* ~The little creature seems ravenous and digs into the food you offer immediately.  Its wounds BEGIN F3TOB_to close before your eyes.  The pleased familiar grins at you repeatedly.  "Many thanks, my <PRO_LADYLORD>!"~ */
  IF ~~ THEN DO ~ApplySpell(Myself,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
END

IF ~~ THEN BEGIN F3TOB_FEED_3_A
  SAY @1097
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN F3TOB_FEED_3_B
  SAY @1098
  IF ~~ THEN DO ~ApplySpell(Myself,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
END

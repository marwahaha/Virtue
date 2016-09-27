// ADD VIRTUE CHANGES WHERE NOTHING HAPPENED BEFORE

REPLACE IMOEN2

IF ~~ THEN BEGIN 19 // from: 20.0 18.0
  SAY #49528
  IF ~~ THEN REPLY #49529 GOTO 21 // Nice response -> join
  IF ~~ THEN REPLY #49531 GOTO 21 // Nice response -> join
  IF ~NumInPartyGT(5)~ THEN REPLY #49532 DO ~SetGlobal("D0NiceToImoen","LOCALS",1)~ GOTO 22 // Good reject
  IF ~NumInPartyLT(6)~ THEN REPLY #49532 GOTO 22 // Evil reject (lie)
  IF ~~ THEN REPLY #49535 GOTO 22 // Evil reject
  IF ~NumInPartyGT(5)~ THEN REPLY #49537 DO ~SetGlobal("D0NiceToImoen","LOCALS",1)~ GOTO 22 // Good reject
  IF ~NumInPartyLT(5)~ THEN REPLY #49537 GOTO 22 // Evil reject (lie)
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #49549
  IF ~Global("D0NiceToImoen","LOCALS",1)~ THEN DO ~SetGlobal("D0Happiness","LOCALS",10)
SetGlobal("KickedOut","LOCALS",1)
SetDialog("Imoen2p")
EscapeAreaMove("ar0406",504,1493,0)~ EXIT
  IF ~!Global("D0NiceToImoen","LOCALS",1)
GlobalGT("D0Virtue","GLOBAL",15)~ THEN DO ~SetGlobal("D0Happiness","LOCALS",10)
IncrementGlobal("D0Change","GLOBAL",-4)
SetGlobal("KickedOut","LOCALS",1)
SetDialog("Imoen2p")
EscapeAreaMove("ar0406",504,1493,0)~ EXIT
  IF ~!Global("D0NiceToImoen","LOCALS",1)
GlobalLT("D0Virtue","GLOBAL",16)
GlobalGT("D0Virtue","GLOBAL",10)~ THEN DO ~SetGlobal("D0Happiness","LOCALS",10)
IncrementGlobal("D0Change","GLOBAL",-3)
SetGlobal("KickedOut","LOCALS",1)
SetDialog("Imoen2p")
EscapeAreaMove("ar0406",504,1493,0)~ EXIT
  IF ~!Global("D0NiceToImoen","LOCALS",1)
GlobalLT("D0Virtue","GLOBAL",11)
GlobalGT("D0Virtue","GLOBAL",5)~ THEN DO ~SetGlobal("D0Happiness","LOCALS",10)
IncrementGlobal("D0Change","GLOBAL",-2)
SetGlobal("KickedOut","LOCALS",1)
SetDialog("Imoen2p")
EscapeAreaMove("ar0406",504,1493,0)~ EXIT
  IF ~!Global("D0NiceToImoen","LOCALS",1)
GlobalLT("D0Virtue","GLOBAL",6)~ THEN DO ~SetGlobal("D0Happiness","LOCALS",10)
IncrementGlobal("D0Change","GLOBAL",-1)
SetGlobal("KickedOut","LOCALS",1)
SetDialog("Imoen2p")
EscapeAreaMove("ar0406",504,1493,0)~ EXIT
END

END

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

REPLACE_ACTION_TEXT MINSCA ~OpenDoor("Cell02")~ ~OpenDoor("Cell02")
SetGlobal("D0NPCsFree","GLOBAL",1)~

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

REPLACE_ACTION_TEXT VICONI ~SetGlobal("ViconiaDeath","AR1000",1)~ ~SetGlobal("ViconiaDeath","AR1000",1)
IncrementGlobal("D0Change","GLOBAL",-2)~

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

REPLACE JAHEIRAP

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #18763 /* ~I cannot stay here however.  I will probably be in Athkatla, as the Harpers have a base of sorts within.  If you can find it, that's where I'll be.~ */
  IF ~OR(2)
Global("JaheiraCursed","GLOBAL",0)
Global("JaheiraCursed","GLOBAL",10)~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("AR0300",1257,3007,14)~ EXIT
  IF ~GlobalGT("JaheiraCursed","GLOBAL",0)
GlobalLT("JaheiraCursed","GLOBAL",10)~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
IncrementGlobal("D0Change","GLOBAL",-2)
EscapeAreaMove("AR0300",1257,3007,14)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 69.1 67.1 28.1
  SAY #18785 /* ~You may, but it will not be the same. I will likely be in Athkatla, near the Harper hold that is there. Take your time in finding me.~ */
  IF ~OR(2)
Global("JaheiraCursed","GLOBAL",0)
Global("JaheiraCursed","GLOBAL",10)~ THEN DO ~SetGlobal("JaheiraRomance","GLOBAL",3)
SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("AR0300",1257,3007,14)~ EXIT
  IF ~GlobalGT("JaheiraCursed","GLOBAL",0)
GlobalLT("JaheiraCursed","GLOBAL",10)~ THEN DO ~SetGlobal("JaheiraRomance","GLOBAL",3)
SetGlobal("KickedOut","LOCALS",1)
IncrementGlobal("D0Change","GLOBAL",-2)
EscapeAreaMove("AR0300",1257,3007,14)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.2
  SAY #18788 /* ~I see.  If this is the way it shall be...  I will probably be in Athkatla, near the Harper hold.  You may seek me there, though it matters little.~ */
  IF ~OR(2)
Global("JaheiraCursed","GLOBAL",0)
Global("JaheiraCursed","GLOBAL",10)~ THEN DO ~SetGlobal("JaheiraRomance","GLOBAL",3)
SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("AR0300",1257,3007,14)~ EXIT
  IF ~GlobalGT("JaheiraCursed","GLOBAL",0)
GlobalLT("JaheiraCursed","GLOBAL",10)~ THEN DO ~SetGlobal("JaheiraRomance","GLOBAL",3)
SetGlobal("KickedOut","LOCALS",1)
IncrementGlobal("D0Change","GLOBAL",-2)
EscapeAreaMove("AR0300",1257,3007,14)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #18797 /* ~I will await your arrival at the hold. They will have my assurances that you are on your way. Do not make a liar of me.~ */
  IF ~OR(2)
Global("JaheiraCursed","GLOBAL",0)
Global("JaheiraCursed","GLOBAL",10)~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("AR0300",1257,3007,14)~ EXIT
  IF ~GlobalGT("JaheiraCursed","GLOBAL",0)
GlobalLT("JaheiraCursed","GLOBAL",10)~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
IncrementGlobal("D0Change","GLOBAL",-2)
EscapeAreaMove("AR0300",1257,3007,14)~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY #18824 /* ~I... I see.  Then I was foolish.  I will not... show such weakness again.  I will be at the Harper hold in Athkatla.  I look forward... I will await you there.~ */
  IF ~OR(2)
Global("JaheiraCursed","GLOBAL",0)
Global("JaheiraCursed","GLOBAL",10)~ THEN DO ~SetGlobal("JaheiraRomance","GLOBAL",3)
SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("AR0300",1257,3007,14)~ EXIT
  IF ~GlobalGT("JaheiraCursed","GLOBAL",0)
GlobalLT("JaheiraCursed","GLOBAL",10)~ THEN DO ~SetGlobal("JaheiraRomance","GLOBAL",3)
SetGlobal("KickedOut","LOCALS",1)
IncrementGlobal("D0Change","GLOBAL",-2)
EscapeAreaMove("AR0300",1257,3007,14)~ EXIT
END

END

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

REPLACE DPJON01
IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #59612 /* ~You are born of murder, the very essence of that which takes life.  You have power, if you wish it.~ [DPJON111] */
  IF ~~ THEN REPLY #59614 /* ~I have no interest in the horrors you offer!  None of this is to be believed! ~ */ GOTO 11
  IF ~~ THEN REPLY #59615 /* ~These images are interesting to me.  I deserve power because of what I am!~ */ DO ~IncrementGlobal("D0Change","GLOBAL",-2)~ GOTO 14
  IF ~~ THEN REPLY @102 GOTO 11
END
END

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

REPLACE_ACTION_TEXT VULOVA ~Shout(89)[^!]*Enemy()~ ~Shout(89)
IncrementGlobal("D0Change","GLOBAL",-1)
Enemy()~

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Killing Embarl
REPLACE MAEVAR
IF ~~ THEN BEGIN 40 // from: 39.3 39.2 39.1 39.0
  SAY #22857 /* ~Yes, yes, yes.  Truth be known, I'm not listening to you. Embarl was a thorn to be removed and now I can move on to other things. Now the way is clear to me.~ [MAEVAR12] */
  IF ~!Dead("Embarl")~ THEN DO ~SetGlobal("MaeVarWork","GLOBAL",6)~ GOTO 41
  IF ~Dead("Embarl")~ THEN DO ~SetGlobal("MaeVarWork","GLOBAL",6)
IncrementGlobal("D0Change","GLOBAL",-1)~ GOTO 41
END
END

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Hendak Stuff

REPLACE HENDAK
IF ~PartyHasItem("MISC4Z")
Global("HendakReleased","AR0406",0)~ THEN BEGIN 12 // from:
  SAY #17346 /* ~You have the key!  You have it!  Thank the Gods!  And thank you truly, my friend, for what you have done.~ [HENDAK07] */
  IF ~Dead("Lehtinan")
Global("SlavingJerk","GLOBAL",0)
~ THEN DO ~SetGlobal("KnowCellKey","AR0406",1)
AddExperienceParty(7500)
IncrementGlobal("D0Change","GLOBAL",1)~ GOTO 40
  IF ~!Dead("Lehtinan")
Global("SlavingJerk","GLOBAL",0)~ THEN DO ~SetGlobal("KnowCellKey","AR0406",1)
AddExperienceParty(7500)
IncrementGlobal("D0Change","GLOBAL",1)~ GOTO 14
  IF ~Global("SlavingJerk","GLOBAL",1)~ THEN REPLY #60906 /* ~Thank me not, slave, I will kill you for Lehtinan. The reward for the deed is adequate.~ */ DO ~SetGlobal("KnowCellKey","AR0406",1)
AddExperienceParty(7500)~ GOTO 63
  IF ~Global("SlavingJerk","GLOBAL",1)
!Dead("Lehtinan")~ THEN REPLY #60908 /* ~Lehtinan wanted me to kill you, and I agreed, but it was only a ruse to obtain a key. You are free, Hendak, to take your revenge.~ */ DO ~SetGlobal("KnowCellKey","AR0406",1)
AddExperienceParty(7500)
IncrementGlobal("D0Change","GLOBAL",1)~ GOTO 14
  IF ~Global("SlavingJerk","GLOBAL",1)
Dead("Lehtinan")~ THEN REPLY #60909 /* ~Lehtinan wanted me to kill you and I agreed but it was only a ruse to obtain a key. You are free Hendak.~ */ DO ~SetGlobal("KnowCellKey","AR0406",1)
AddExperienceParty(7500)
IncrementGlobal("D0Change","GLOBAL",1)~ GOTO 40
END
END

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Ginia and Ason escaping from Brynnlaw

REPLACE_ACTION_TEXT PIRCOR02 ~SetGlobal("HelpGinia","GLOBAL",3)~ ~SetGlobal("HelpGinia","GLOBAL",3)
IncrementGlobal("D0Change","GLOBAL",1)~

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Nether Scroll Lich

REPLACE NEVAZIAH
IF ~~ THEN BEGIN 4 // from: 23.3 23.2 0.2
  SAY #33231 /* ~Noooo!  NOOOO!!  Not...not after so long!!  I...I will fight you!!~ */
  IF ~~ THEN DO ~SetGlobal("D0IStartedIt","LOCALS",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY #33245 /* ~I...I do not believe you!  You...you lie!  You...you hunt me...and I must defend myself!  After...after all this time...nooooo!!~ */
  IF ~~ THEN DO ~SetGlobal("D0IStartedIt","LOCALS",1)
Enemy()~ EXIT
END
END

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ODREN

REPLACE GORODR1
IF ~~ THEN BEGIN 48 // from: 62.0 59.0 47.0 46.0
  SAY #62608 /* ~It is true, <CHARNAME>.  I deceived you, for I believed it was necessary.  But if you have destroyed the Imprisoned One, then all is for naught.  He will be free and Helm's wrath shall be great!~ */
  IF ~~ THEN GOTO D0_49
END

IF ~~ THEN BEGIN 49 // from: 62.1 59.1 48.0 47.1 46.1
  SAY #62609 /* ~Come, my brethren!  We must venture into the lower vault now that the Bhaalspawn has cleared the way... we must see for ourselves if the Imprisoned One is truly dead or not.~ */
  IF ~~ THEN DO ~IncrementGlobal("D0Change","GLOBAL",-4)~ GOTO 50
END
END

APPEND GORODR1
IF ~~ THEN BEGIN D0_49
  SAY #62609 /* ~Come, my brethren!  We must venture into the lower vault now that the Bhaalspawn has cleared the way... we must see for ourselves if the Imprisoned One is truly dead or not.~ */
  IF ~~ THEN GOTO 50
END
END

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// TOLMAS BENDELIA

REPLACE KPMERC01
IF ~~ THEN BEGIN 18 // from: 13.0
  SAY #40309 /* ~WHAT?!  You will st-still...?  No!  NOOO!!~ */
  IF ~~ THEN DO ~IncrementGlobal("D0Change","GLOBAL",-2)~ EXTERN ~KPDOMO01~ 52
END
END

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// GONT OF RIATVIN

REPLACE UDTRAP05
IF ~~ THEN BEGIN 19 // from: 20.0
  SAY #50731 /* ~I must try to find my way out and discover what happend to my own group. I wish you well.~ */
  IF ~~ THEN DO ~EraseJournalEntry(57554)
IncrementGlobal("D0Change","GLOBAL",1)
EscapeArea()~ SOLVED_JOURNAL #57555 /* ~Victims of Imprisonment.

Another person freed from the crystal I found, but this time his mind was sound and he did not wish to fight. He said that he was with another adventuring group, and that he must have been imprisoned battling a group of Drow. He did not know where they went, and he has now set off to find his lost comrades. He offered a little knowledge of the area, saying that a group of Kuo-Toans were guarding a bridge to the east, and that there was a Drow city to the north.~ */ EXIT
END
END

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// PALADIN STRONGHOLD

REPLACE DEMSON
IF ~~ THEN BEGIN 97 // from: 104.0 96.0
  SAY #38266 /* ~You are free to pursue your own goals for a time. The Order requires no more service from you just yet, and rewards you with a suit of powerful armor for all that you have done so far.  Carry on with your good works, <CHARNAME>.~ */
  IF ~Alignment(Player1,MASK_GOOD)
GlobalGT("D0Strikes","GLOBAL",1)
Dead("FIRKRA02")~ THEN DO ~SetGlobal("PaladinPlot","GLOBAL",30)
SetGlobal("D0Strikes","GLOBAL",1)
IncrementGlobal("D0Change","GLOBAL",1)
GiveItemCreate("plat15",Player1,0,0,0)
GiveItemCreate("shld30",Player1,0,0,0)
ActionOverride(Player1,RegainPaladinhood())~ EXIT
  IF ~Alignment(Player1,MASK_GOOD)
GlobalGT("D0Strikes","GLOBAL",1)
!Dead("FIRKRA02")~ THEN DO ~SetGlobal("PaladinPlot","GLOBAL",60)
SetGlobal("D0Strikes","GLOBAL",1)
IncrementGlobal("D0Change","GLOBAL",1)
GiveItemCreate("plat15",Player1,0,0,0)
GiveItemCreate("shld30",Player1,0,0,0)
ActionOverride(Player1,RegainPaladinhood())~ GOTO 111

  IF ~OR(2)
!Alignment(Player1,MASK_GOOD)
GlobalLT("D0Strikes","GLOBAL",2)
Dead("FIRKRA02")~ THEN DO ~SetGlobal("PaladinPlot","GLOBAL",30)
IncrementGlobal("D0Change","GLOBAL",1)
GiveItemCreate("plat15",Player1,0,0,0)
GiveItemCreate("shld30",Player1,0,0,0)~ EXIT
  IF ~OR(2)
!Alignment(Player1,MASK_GOOD)
GlobalLT("D0Strikes","GLOBAL",2)
!Dead("FIRKRA02")~ THEN DO ~SetGlobal("PaladinPlot","GLOBAL",60)
IncrementGlobal("D0Change","GLOBAL",1)
GiveItemCreate("plat15",Player1,0,0,0)
GiveItemCreate("shld30",Player1,0,0,0)~ GOTO 111
END
END

REPLACE GARREN
IF ~~ THEN BEGIN 50 // from: 40.1 39.1
  SAY #40630 /* ~You have shown great compassion placing yourself in danger for my sake. I have no reward to offer that would suffice. Perhaps I can grant a service instead.~ */
  IF ~Alignment(Player1,MASK_GOOD)
GlobalGT("D0Strikes","GLOBAL",1)~ THEN DO ~SetGlobal("D0Strikes","GLOBAL",1)
IncrementGlobal("D0Change","GLOBAL",1)
ActionOverride(Player1,RegainPaladinhood())~ GOTO 51
  IF ~OR(2)
!Alignment(Player1,MASK_GOOD)
GlobalLT("D0Strikes","GLOBAL",2)~ THEN DO ~IncrementGlobal("D0Change","GLOBAL",1)~ GOTO 51
END
END

                       Baldur's Gate II: Throne of Bhaal
                                 Virtue Mod
                        SimDing0 (SimDing0@hotmail.com)
                                 Version 19

Section I: Introduction
-----------------------
It all started in chat a while back, when Kish remarked that Reputation served
a dual purpose in the game. Not only does it indicate how other people in the game
think of the player, but also how morally "right" his actions are.

This mod sets out to remedy this by splitting it into two separate variables:
Reputation, which represents how people in the game feel about the party; and
Virtue, which represents how morally correct the party's actions are. Virtue will
now appear alongside reputation on the character screen, and be treated separately
where appropriate.

Additionally, Virtue will affect your alignment, so if your Virtue goes down, it
drags your alignment down with it. ALL party members also respond to Virtue instead
of reputation while in the party, although they continue to respond to reputation
while outside of it. They grow unhappy and leaving appropriately, so you can have a
party that feels your actions are good, even if everyone around you hates you.
Additional familiar dialog has been written to account for the impact of changing
alignment on your familiar.

Paladins will now fall after committing a TWO non-virtuous acts, and rangers will
now fall if their alignment shifts away from good.
You can get away with killing commoners without incurring a Reputation hit, so long
as nobody sees you. Your Virtue always drops, however.
Some of the things for which you would previously have incurred no penalty will now
affect your Virtue. This includes abandoning or killing NPCs and the trials you face
in Hell.


Section II: Installation
------------------------
BGII and ToB are required. The Virtue Mod should work fine with most other WeiDU
mods (including all of those created by the Pocket Plane team). It may be compatible
with some of the larger non-WeiDU mods, but I have not examined this possibility (and
have no real desire to).
THE VIRTUE MOD SHOULD BE INSTALLED *AFTER* OTHER WEIDU MODS.

Unzip the main ZIP file into your BGII main directory. This is normally:
        C:\Program Files\Black Isle\BGII - SoA\

Run (click on) "Setup-Virtue.exe".

First, pick your favorite language. Currently available:
  English
  French
  Spanish
  Polish (players are advised to read the translated readme, readme_polish.txt)
  Czech (players are advised to read the translated readme, readme_czech.txt)
  Italian
  Chinese

Then choose which components you would like to install. They are all optional. You may
always uninstall any or all of them later by re-running "Setup-Virtue.exe".

The Virtue mod may work correctly without starting a new game, but it is strongly
recommended that you do so.

The components should install correctly for international players who have both
DIALOG.TLK and DIALOGF.TLK.


Section III: Thanks
-------------------
Kish, for conceiving the whole idea.

Avenger, for the technique allowing modification to the character record.

Valued beta testers:
  Cybersquirt
  Grammar
  Pirengle
  Slayne

Joost R. Meerten, for lots of stuff. "Because he cares." :)

Rreiner, for input on the new NPC happiness system.

SixOfSpades. Comprehensive thoughts, as usual.

The people at alt.games.baldurs-gate. Great feedback, etc.

CamDawg and Idobek, for the KIT.IDS patching code.

Ghrey, for commenting on my groovy TP2 code and doing some major debugging.

Ana, for telling me how much I sux0r.

Anyone who provided input and feedback on the forum.

Neil and everyone else at www.forgottenwars.net for hosting and stuff.

JCompton and everyone else at www.pocketplane.net for new hosting and stuff.

This mod was created using the following utilities:
  Near Infinity - http://www.idi.ntnu.no/~joh/ni/
  WeiDU - http://www.cs.berkeley.edu/~weimer/bgate/
Special thanks go to the creators of these great tools.

Everyone should also check out the Glory of Istar total conversion, which was the
original mod for which the character screen modification technique was used:
http://www.dragonlancetc.com/


Section IV: Known Issues
------------------------
Virtue will not be affected by pickpocketing. If anyone can thing of a good way
to get around this annoying engine limitation, please let me know!

NOTE: If, for some reason, an erroneous Virtue drop occurs that causes effects
such as undesired alignment shifting or loss of class, the effects of Virtue changes
can be deactivated by setting the GLOBAL "D0VirtueDisable" to 1 via the console.
Set it back to 0 to re-enable Virtue.
While Virtue is disabled, you can modify the GLOBAL "D0VIRTUE" to change your current
in-game Virtue.

For modders' information, Virtue copies a file "virtue.xxx" to the override, which
can be used by WeiDU installers to detect if the mod is installed. Don't use this
if you can help it though... you're probably better off talking to me about
compatibility.


Section V: Version History
--------------------------
1 - Beta. Sucked.

2 - Initital public release dubbed v2 to make me sound cool.

3 - Resolved issue with Minsc Virtue drop occurring even if Minsc had been freed.
  - Resolved issue which would cause Virtue to drop if Commonners were killed without party involvement.
  - Imoen rescue timer made less restrictive.
  - Added console command to disable Virtue temporarily ingame.

4 - Hopefully resolved issue with people randomly turning hostile.

5 - Spanish translation by Bhasbuto (Clan DLAN)

6 - French translation by Raphaël Mizrahi 

7 - Fixed infinite looping when Rangers fall.
  - Removed Imoen rescue timer completely.
  - Fixed infinite looping of Valen reputation decrease.

8 - Additional opportunities for Virtue change.

9 - Fixed bug in SoA with Amnish Soldiers attacking each other. I think.
  - Dummy file to allow Virtue to be detected.

10 - Virtue affects Item Upgrade mod.
   - Issue with paladins falling with high rep and Virtue increases finally resolved. Sorry!

11 - Minor alterations to how Virtue changes are displayed.
   - New version of WeiDU makes hacky uninstallation obsolete.
   - Fixed some minor typos in the familiar dialogues. And some major ones. Sigh.
   - Incomplete German translation added. Anyone who wants to complete it is more than welcome.

12 - NPC unhappiness sounds play more often.
   - Life-threatening omissions in the readme rectified. :)
   - Virtue loss only if you choose to kill the lich guarding the Nether Scroll.
   - Familiars fight if they turn hostile.
   - Murdering people in Temple District produces results that make sense.
   - Now impossible to continue the Temple Stronghold quests if your alignment is inappropriate.
   - No longer use any precompiled scripts (more convenient for me).
   - Now possible to summon Minsc and Jaheira if you start a new game in ToB (it's assumed they were freed).
   - Minsc/Jaheira Virtue drop clarification is back.
   - Affects Kalah quest in UB.

13 - Installs correctly over UB Kalah. Sorry!
   - Virtue penalty for sending Odren to his death at Watcher's Keep.

14 - Freeing Djinni in Ust Natha is good.
   - Virtue penalty for killing dryads.
   - Killing the slaves in the Illithid city causes a Virtue drop.
   - Sponsoring a dogfight in the Copper Coronet causes a Virtue drop.
   - No more penalty for not freeing Minsc/Jaheira if you already get it for killing them.
   - Penalty for killing Rayic comes at a more sensible time.
   - Penalty for sending Odren to his death only if you intentionally do so.
   - Virtue change display no longer misleadingly suggests that Virtue is going above 20 or below 1.
   - Resolved issue whereby no responses would be available for NPC parting dialogs.
   - Valygar now drops his body as before.
   - Good and evil NPCs can still leave the party if they are unhappy, regardless of charisma.
   - NPCs respond to Virtue when in the party and Reputation when not; this is tracked using a unique happiness variable for every NPC.
   - Rangers fall when they are no longer good.
   - Cleric/Rangers no longer fall at all. This simply cannot be made to work, and didn't in vanilla BG2 either. If anyone has any ideas, let me know.
   - Added Polish translation (Damian Staniszewski).

15 - No more nasty BCS code in the TP2. Thanks Weimer!
   - Added Czech translation by Zbynìk Veir. Readme has also been translated. See readme_czech.txt.
   - Irenicus Dryads won't turn hostile if you fight monsters nearby. And they really do cause a Virtue drop this time.
   - Oversight compatibility no longer broken.
   - Readme is now in Polish. See readme_polish.txt.
   - Alignment changes slightly less wildly; instead of every Virtue change potentially affecting it, there is now scope for some actions to affect Virtue without altering alignment.

16 - Ugly errors on install suppressed.
   - Should install correctly over Desecration of Souls and Refinements.
   - Keto compatibility.

17 - Should install slightly faster.
   - Players no longer penalized for the actions of confused/charmed characters.
   - Many new opportunities for Virtue changes.
   - Paladins are now allowed two minor evil acts or one major before falling.
   - Various issues in Imoen's Spellhold dialogue resolved.
   - Fixed a number of NPC stutter bugs, of which Minsc's was the most notable.
   - NPC (un)happiness sounds play less often now.
   - Imoen no longer hears about party's evil acts while in Spellhold. It didn't really make sense.
   - Really affects Kelsey and Keto now.
   - Major overhaul to KIT.IDS patching.
   - Minsc and Jaheira penalty fixed yet again.
   - Added Italian translation by Al17 (http://rtt.altervista.org)

18 - Added Chinese translation by killmercy.
   - Updated Spanish translation.
   - NPC (un)happiness sounds no longer interrupt abilities such as Stealth and Turn Undead.
   - Kish expresses contempt for all things Ding0. The Virtue mod lives on regardless.
   - Alignment change borderlines shifted again to better balance good/evil.
   - Imoen won't leave the party in Irenicus' dungeon.
   - Paladin falling now interacts properly with stronghold quests.
   - No theft at all affects virtue now, rather than the previous inconsistency.
   - Evil hell trial rewards are no longer lost after death. Go inaccuarate IESDP updates! :)
   - I promise the Atonement system and all that other stuff is really coming next time!
   
19 - Updated Spanish translation.

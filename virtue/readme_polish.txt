                       Baldur's Gate II: Throne of Bhaal
                                Virtue Mod
                       SimDing0 (SimDing0@hotmail.com)
                                 Wersja 14

Rozdzia³ I: Wstêp
-----------------------
To wszystko zaczê³o siê na czacie, kiedy Kish zaznaczy³, ¿e reputacja ma podwójne
znaczenie w grze. Nie tylko oznacza jak inni ludzie w grze myœl¹ o graczu, ale tak¿e
jak moralnie "prawe" s¹ jego dzia³ania.

Ten mod naprawia to poprzez rozdzielenie reputacji na dwie oddzielne zmienne:
Reputacjê, która reprezentuje w jaki sposób ludzie w grze myœl¹ o tobie: oraz
Prawoœæ, która pokazuje jak moralnie poprawne s¹ dzia³ania dru¿yny. Prawoœæ
pojawi siê obok Reputacji na karcie postaci, i bêdzie wobec tego traktowana
oddzielnie tak jak to stosowne.

Dodatkowo, Prawoœæ bêdzie mia³a wp³yw na twój charakter, tak wiêc jeœli twoja
Prawoœæ spadnie to twój charakter równie¿ zleci w dó³. WSZYSCY cz³onkowie
dru¿yny równie¿ odnosz¹ siê do Prawoœci zamiast Reputacji kiedy s¹ w dru¿ynie,
aczkolwiek kontynuuj¹ odzywaæ siê o reputacji kiedy s¹ poza ni¹. Robi¹ siê
nieszczêœliwsi i opuszczaj¹ stosownie do tego dru¿ynê, tak wiêc mo¿esz mieæ
dru¿ynê, która uznaje, ¿e jej dzia³ania s¹ dobre, mimo ¿e wszyscy naoko³o ciê
nienawidz¹. Dodatkowe dialogi chowañców zosta³y napisane by wyjaœniæ
wp³yw zmiany charakteru na zachowanie twojego chowañca.

Paladyni teraz upadn¹ po POJEDYÑCZYM nieprawym akcie, a ³owcy upadn¹ jeœli ich
Prawoœæ spadnie zbyt nisko.
Mo¿e ci ujœæ na sucho zabijanie zwyk³ych przechodniów bez wp³ywu na Reputacjê,
tak d³ugo jak d³ugo nikt ciê nie widzi. Aczkolwiek twoja Prawoœæ spada wtedy w dó³.
Niektóre rzeczy, za które normalnie nie uzyska³byæ ¿adnej kary do reputacji teraz bêd¹
oddzia³ywa³y na twoj¹ Prawoœæ. Wlicza siê w to opuszczanie b¹dŸ zabijanie NPC-ów,
a tak¿e próby w piekle.


Rozdzia³ II: Instalacja
----------------------------
BGII i ToB s¹ wymagane. Virtue Mod powinien dzia³aæ sprawnie z wiêkszoœci¹ innych
modów WeiDU (wliczaj¹c wszystkie stworzone przez grupê Forgotten Wars). Mo¿e byæ
te¿ kompatybilny z wiêkszymi modami nie opartymi o WeiDU, ale nie sprawdza³em tej
mo¿liwoœci (i nie mam na to ochoty).
VIRTUE MOD POWINIEN BYÆ ZAINSTALOWANY *PO* INNYCH MODACH WEIDU.

Roz³aduj g³ówny plik ZIP do folderu, gdzie masz BGII. To jest domyœlnie:
        C:\Program Files\Black Isle\BGII - SoA\

Uruchom (kliknij na) "Setup-Virtue.exe".

Wpierw, wybierz jêzyk, którego chcesz u¿ywaæ. Obecnie dostêpne s¹: 
  Angielski
  Francuski
  Hiszpañski
  Polski

Potem wybierz, które sk³adniki chcesz zainstalowaæ. Mo¿esz je zawsze
póŸniej odinstalowaæ przez ponowne klikniêcie na "Setup-Virtue.exe".

Mod mo¿e dzia³aæ poprawnie bez rozpoczêcia nowej gry, ale mocno zaleca siê by
rozpocz¹æ now¹ grê. 

Sk³adniki powinny zainstalowaæ siê poprawnie dla miêdzynarodowych graczy,
którzy maj¹ zarówno DIALOG.TLK, jak i DIALOGF.TLK.


Rozdzia³ III: Podziêkowania
------------------------------------
Kish, za przekonanie mnie do tego pomys³u.

Cenieni betatesterzy:
  Cybersquirt
  Grammar
  Pirengle
  Slayne

Joost R. Meerten, za wiele rzeczy. "Poniewa¿ mu zale¿y." :)

Rreiner, za nowy system szczêœliwoœci NPC-ów.

Ludziom z alt.games.baldurs-gate. Wspania³e wsparcie, itd.

Ghrey, za komentowanie mojego kodu TP2.

Ana, za mówienie mi jak bardzo jestem do kitu.

Ka¿dy kto zapewni³ wsparcie na forum.

Neil i wszystkim innym na www.forgottenwars.net za ró¿ne rzeczy.

JComtpon i wszystkim innym na www.pocketplane.net za ró¿ne rzeczy.

Ten mod zosta³ stworzony przy u¿yciu nastêpuj¹cyh programów:
  Near Infinity - http://www.idi.ntnu.no/~joh/ni/
  WeiDU - http://www.cs.berkeley.edu/~weimer/bgate/
Specjalne podziêkowania dla autorów tych narzêdzi.


Rozdzia³ IV: Znane b³êdy
---------------------------------
Na Prawoœæ nie mo¿e wp³yn¹æ kieszonkowstwo. Jeœli ktoœ zna dobry sposób na
ominiêcie tego wkurzaj¹cego limitu silnika, proszê daæ mi znaæ!

ZAUWA¯: Jeœli z jakiegoœ nieznanego powodu Prawoœæ spada powoduj¹c niechciane
efekty w postaci zmiany charakteru lub utraty zdolnoœci klasowych, efekty Prawoœci
mo¿na zdeaktywowaæ poprzez ustawienie zmiennej GLOBAL "D0VirtueDisable" na 1
poprzez konsolê. Ponowne ustawienie na 1 znów w³¹czy Prawoœæ. Podczas gdy
Prawoœæ jest wy³¹czona mo¿esz zmodyfikowaæ GLOBAL "D0VIRTUE" by zmieniæ
twoj¹ obecn¹ Prawoœæ.

Dla twórców modów, Prawoœæ kopiuje plik "virtue.xxx" do katalogu override, który
mo¿e byæ u¿yty przez instalatory WeiDU by wykrywaæ czy mod jest zainstalowany.
Nie u¿ywajcie tego ... lepiej zrobicie mówi¹c ze mn¹ o kompatybilnoœci.


Rozdzia³ V: Zmiany
--------------------------
1 - Beta. Do kitu.
2 - Pierwsze publiczne wydanie nazwane v2 ¿eby by³o fajniej.
3 - Rozwi¹zany problem z utrat¹ reputacji za Minsca nawet jeœli zosta³ on uwolniony.
  - Naprawiony b³¹d ze spadkiem reputacji jeœli zwykli ludzie zostali zabici bez udzia³u dru¿yny.
  - Czas na uratowanie Imoen zosta³ trochê bardziej przed³u¿ony.
  - Dodano komendê w konsoli by móc wy³¹czaæ Prawoœæ podczas gry.
4 - Naprawiony b³¹d, który sprawia³, ¿e ludzie losowo stawali siê wrodzy.
5 - Hiszpañskie t³umaczenie - Bhasbuto (Clan DLAN)
6 - Francuskie t³umaczenie - Raphaël Mizrahi 
7 - Naprawiony b³¹d zwi¹zany z upadanie ³owców.
  - Usuniêto ca³kowicie czas na uratowanie Imoen.
  - Naprawiony b³¹d zwi¹zany z zmiejszaniem siê reputacji Valen.
8 - Dodatkowe okazje by pozmieniaæ coœ w Prawoœci.
9 - Naprawiony b³¹d w SoA z amnijskimi stra¿nikami atakuj¹cymi siebie nawzajem. Tak myœlê.
  - Plik zezwalaj¹cy na wykrycie Virtue.
10 - Prawoœæ ma w³yw na mod Item Upgrade Pack.
   - W koñcu naprawiony b³¹d z upad³ymi paladynami i wysok¹ reputacj¹ oraz prawoœci¹. Przepraszam!
11 - Pomniejsze zmiany tego jak zmienia siê wyœwietlanie Prawoœci.
   - Nowa wersja WeiDU usuwa przestarza³¹ deinstalacjê.
   - Poprawienie kilku literówek w dialogach chowañców. I kilku g³ównych.
   - Dodano niekompletne niemieckie t³umaczenie. Jeœli ktoœ chce je skoñczyæ, proszê bardzo.
12 - DŸwiêki niezadowolenia NPC-ów odgrywane s¹ znacznie czêœciej.
   - Zagra¿aj¹ce ¿yciu braki w pliku ReadMe poprawione. :)
   - Prawoœæ stracisz tylko jeœli zdecydujesz siê zabiæ lisza pilnuj¹cego Zwojów Nether.
   - Chowañce walcz¹ jeœli stan¹ siê wrodzy.
   - Mordowanie ludzi w Dzielnicy Œwi¹tynnej zaowocuje rezultatami, które maj¹ sens.
   - Teraz niemo¿liwe jest kontynuowanie zadañ w Twierdzy Œwi¹tynnej jeœli twój charakter jest nieprawid³owy.
   - Nie bêdzie wiêcej u¿ywania skompilowanych skryptów (wygodniej dla mnie).
   - Teraz mo¿na przywo³aæ Minsca i Jaheirê jeœli zacz¹³eœ now¹ grê w ToB (przyjmuje siê, ¿e zostali uwolnieni).
   - Utrata Prawoœci za zostawienie Minsca i Jaheiry zosta³o wyjaœnione.
   - Wp³ywa na quest Kalaha w UB.
13 - Instaluje siê teraz poprawnie na UB Kalah. Przepraszam!
   - Kara do Prawoœci za wys³anie Odrena na œmieræ w Twierdzy Stra¿nika.
14 - Uwolnienie D¿ina w Ust Natha jest teraz dobre.
   - Kara do Prawoœci za zabicie driad
   - Zabicie niewolników w mieœcie Ilithidów owocuje spadkiem Prawoœci.
   - Zasponsorowanie psiej walki w Miedzianym Diademie sprawia, ¿e obni¿a siê Prawoœæ.
   - Brak kary za nieuwolnienie Minsca/Jaheiry jeœli zdecydowa³eœ siê ju¿ ich zabiæ.
   - Kara za zabicie Rayica pojawia siê w sensowniejszym czasie.
   - Kara za wys³anie Odrena na œmieræ tylko jeœli zrobi³eœ to umyœlnie.
   - Wyœwietlanie Prawoœci nie wprowadza ju¿ w b³¹d sugeruj¹c, ¿e jest powy¿ej 20 lub poni¿ej 1.
   - Rozwi¹zany problem, w którym nie by³o mo¿liwych odpowiedzi w rozmowach w dru¿ynie.
   - Valygar teraz upuszcza swe cia³o tak jak poprzednioe.
   - Dobrzy i Ÿli NPC wci¹¿ mog¹ opuœciæ dru¿ynê jeœli s¹ nieszczêœliwi, niezale¿nie od charyzmy.
   - NPC odnosz¹ siê do Prawoœci kiedy s¹ w dru¿ynie i Reputacji kiedy s¹ poza ni¹; to jest traktowane jako unikalny system zadowolenia dla NPC.
   - £owcy upadn¹ kiedy nie s¹ ju¿ dobrzy.
   - Kap³ani/£owcy ju¿ nie upadaj¹. Tego po prostu nie da siê zrobiæ w BG2. Jeœli ktoœ ma jakiœ pomys³, proszê daæ mi znaæ.
   - Dodano polskie t³umaczenie (Damian Staniszewski).
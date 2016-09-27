                       Baldur's Gate II: Throne of Bhaal
                                Virtue Mod
                       SimDing0 (SimDing0@hotmail.com)
                                 Wersja 14

Rozdzia� I: Wst�p
-----------------------
To wszystko zacz�o si� na czacie, kiedy Kish zaznaczy�, �e reputacja ma podw�jne
znaczenie w grze. Nie tylko oznacza jak inni ludzie w grze my�l� o graczu, ale tak�e
jak moralnie "prawe" s� jego dzia�ania.

Ten mod naprawia to poprzez rozdzielenie reputacji na dwie oddzielne zmienne:
Reputacj�, kt�ra reprezentuje w jaki spos�b ludzie w grze my�l� o tobie: oraz
Prawo��, kt�ra pokazuje jak moralnie poprawne s� dzia�ania dru�yny. Prawo��
pojawi si� obok Reputacji na karcie postaci, i b�dzie wobec tego traktowana
oddzielnie tak jak to stosowne.

Dodatkowo, Prawo�� b�dzie mia�a wp�yw na tw�j charakter, tak wi�c je�li twoja
Prawo�� spadnie to tw�j charakter r�wnie� zleci w d�. WSZYSCY cz�onkowie
dru�yny r�wnie� odnosz� si� do Prawo�ci zamiast Reputacji kiedy s� w dru�ynie,
aczkolwiek kontynuuj� odzywa� si� o reputacji kiedy s� poza ni�. Robi� si�
nieszcz�liwsi i opuszczaj� stosownie do tego dru�yn�, tak wi�c mo�esz mie�
dru�yn�, kt�ra uznaje, �e jej dzia�ania s� dobre, mimo �e wszyscy naoko�o ci�
nienawidz�. Dodatkowe dialogi chowa�c�w zosta�y napisane by wyja�ni�
wp�yw zmiany charakteru na zachowanie twojego chowa�ca.

Paladyni teraz upadn� po POJEDY�CZYM nieprawym akcie, a �owcy upadn� je�li ich
Prawo�� spadnie zbyt nisko.
Mo�e ci uj�� na sucho zabijanie zwyk�ych przechodni�w bez wp�ywu na Reputacj�,
tak d�ugo jak d�ugo nikt ci� nie widzi. Aczkolwiek twoja Prawo�� spada wtedy w d�.
Niekt�re rzeczy, za kt�re normalnie nie uzyska�by� �adnej kary do reputacji teraz b�d�
oddzia�ywa�y na twoj� Prawo��. Wlicza si� w to opuszczanie b�d� zabijanie NPC-�w,
a tak�e pr�by w piekle.


Rozdzia� II: Instalacja
----------------------------
BGII i ToB s� wymagane. Virtue Mod powinien dzia�a� sprawnie z wi�kszo�ci� innych
mod�w WeiDU (wliczaj�c wszystkie stworzone przez grup� Forgotten Wars). Mo�e by�
te� kompatybilny z wi�kszymi modami nie opartymi o WeiDU, ale nie sprawdza�em tej
mo�liwo�ci (i nie mam na to ochoty).
VIRTUE MOD POWINIEN BY� ZAINSTALOWANY *PO* INNYCH MODACH WEIDU.

Roz�aduj g��wny plik ZIP do folderu, gdzie masz BGII. To jest domy�lnie:
        C:\Program Files\Black Isle\BGII - SoA\

Uruchom (kliknij na) "Setup-Virtue.exe".

Wpierw, wybierz j�zyk, kt�rego chcesz u�ywa�. Obecnie dost�pne s�: 
  Angielski
  Francuski
  Hiszpa�ski
  Polski

Potem wybierz, kt�re sk�adniki chcesz zainstalowa�. Mo�esz je zawsze
p�niej odinstalowa� przez ponowne klikni�cie na "Setup-Virtue.exe".

Mod mo�e dzia�a� poprawnie bez rozpocz�cia nowej gry, ale mocno zaleca si� by
rozpocz�� now� gr�. 

Sk�adniki powinny zainstalowa� si� poprawnie dla mi�dzynarodowych graczy,
kt�rzy maj� zar�wno DIALOG.TLK, jak i DIALOGF.TLK.


Rozdzia� III: Podzi�kowania
------------------------------------
Kish, za przekonanie mnie do tego pomys�u.

Cenieni betatesterzy:
  Cybersquirt
  Grammar
  Pirengle
  Slayne

Joost R. Meerten, za wiele rzeczy. "Poniewa� mu zale�y." :)

Rreiner, za nowy system szcz�liwo�ci NPC-�w.

Ludziom z alt.games.baldurs-gate. Wspania�e wsparcie, itd.

Ghrey, za komentowanie mojego kodu TP2.

Ana, za m�wienie mi jak bardzo jestem do kitu.

Ka�dy kto zapewni� wsparcie na forum.

Neil i wszystkim innym na www.forgottenwars.net za r�ne rzeczy.

JComtpon i wszystkim innym na www.pocketplane.net za r�ne rzeczy.

Ten mod zosta� stworzony przy u�yciu nast�puj�cyh program�w:
  Near Infinity - http://www.idi.ntnu.no/~joh/ni/
  WeiDU - http://www.cs.berkeley.edu/~weimer/bgate/
Specjalne podzi�kowania dla autor�w tych narz�dzi.


Rozdzia� IV: Znane b��dy
---------------------------------
Na Prawo�� nie mo�e wp�yn�� kieszonkowstwo. Je�li kto� zna dobry spos�b na
omini�cie tego wkurzaj�cego limitu silnika, prosz� da� mi zna�!

ZAUWA�: Je�li z jakiego� nieznanego powodu Prawo�� spada powoduj�c niechciane
efekty w postaci zmiany charakteru lub utraty zdolno�ci klasowych, efekty Prawo�ci
mo�na zdeaktywowa� poprzez ustawienie zmiennej GLOBAL "D0VirtueDisable" na 1
poprzez konsol�. Ponowne ustawienie na 1 zn�w w��czy Prawo��. Podczas gdy
Prawo�� jest wy��czona mo�esz zmodyfikowa� GLOBAL "D0VIRTUE" by zmieni�
twoj� obecn� Prawo��.

Dla tw�rc�w mod�w, Prawo�� kopiuje plik "virtue.xxx" do katalogu override, kt�ry
mo�e by� u�yty przez instalatory WeiDU by wykrywa� czy mod jest zainstalowany.
Nie u�ywajcie tego ... lepiej zrobicie m�wi�c ze mn� o kompatybilno�ci.


Rozdzia� V: Zmiany
--------------------------
1 - Beta. Do kitu.
2 - Pierwsze publiczne wydanie nazwane v2 �eby by�o fajniej.
3 - Rozwi�zany problem z utrat� reputacji za Minsca nawet je�li zosta� on uwolniony.
  - Naprawiony b��d ze spadkiem reputacji je�li zwykli ludzie zostali zabici bez udzia�u dru�yny.
  - Czas na uratowanie Imoen zosta� troch� bardziej przed�u�ony.
  - Dodano komend� w konsoli by m�c wy��cza� Prawo�� podczas gry.
4 - Naprawiony b��d, kt�ry sprawia�, �e ludzie losowo stawali si� wrodzy.
5 - Hiszpa�skie t�umaczenie - Bhasbuto (Clan DLAN)
6 - Francuskie t�umaczenie - Rapha�l Mizrahi 
7 - Naprawiony b��d zwi�zany z upadanie �owc�w.
  - Usuni�to ca�kowicie czas na uratowanie Imoen.
  - Naprawiony b��d zwi�zany z zmiejszaniem si� reputacji Valen.
8 - Dodatkowe okazje by pozmienia� co� w Prawo�ci.
9 - Naprawiony b��d w SoA z amnijskimi stra�nikami atakuj�cymi siebie nawzajem. Tak my�l�.
  - Plik zezwalaj�cy na wykrycie Virtue.
10 - Prawo�� ma w�yw na mod Item Upgrade Pack.
   - W ko�cu naprawiony b��d z upad�ymi paladynami i wysok� reputacj� oraz prawo�ci�. Przepraszam!
11 - Pomniejsze zmiany tego jak zmienia si� wy�wietlanie Prawo�ci.
   - Nowa wersja WeiDU usuwa przestarza�� deinstalacj�.
   - Poprawienie kilku liter�wek w dialogach chowa�c�w. I kilku g��wnych.
   - Dodano niekompletne niemieckie t�umaczenie. Je�li kto� chce je sko�czy�, prosz� bardzo.
12 - D�wi�ki niezadowolenia NPC-�w odgrywane s� znacznie cz�ciej.
   - Zagra�aj�ce �yciu braki w pliku ReadMe poprawione. :)
   - Prawo�� stracisz tylko je�li zdecydujesz si� zabi� lisza pilnuj�cego Zwoj�w Nether.
   - Chowa�ce walcz� je�li stan� si� wrodzy.
   - Mordowanie ludzi w Dzielnicy �wi�tynnej zaowocuje rezultatami, kt�re maj� sens.
   - Teraz niemo�liwe jest kontynuowanie zada� w Twierdzy �wi�tynnej je�li tw�j charakter jest nieprawid�owy.
   - Nie b�dzie wi�cej u�ywania skompilowanych skrypt�w (wygodniej dla mnie).
   - Teraz mo�na przywo�a� Minsca i Jaheir� je�li zacz��e� now� gr� w ToB (przyjmuje si�, �e zostali uwolnieni).
   - Utrata Prawo�ci za zostawienie Minsca i Jaheiry zosta�o wyja�nione.
   - Wp�ywa na quest Kalaha w UB.
13 - Instaluje si� teraz poprawnie na UB Kalah. Przepraszam!
   - Kara do Prawo�ci za wys�anie Odrena na �mier� w Twierdzy Stra�nika.
14 - Uwolnienie D�ina w Ust Natha jest teraz dobre.
   - Kara do Prawo�ci za zabicie driad
   - Zabicie niewolnik�w w mie�cie Ilithid�w owocuje spadkiem Prawo�ci.
   - Zasponsorowanie psiej walki w Miedzianym Diademie sprawia, �e obni�a si� Prawo��.
   - Brak kary za nieuwolnienie Minsca/Jaheiry je�li zdecydowa�e� si� ju� ich zabi�.
   - Kara za zabicie Rayica pojawia si� w sensowniejszym czasie.
   - Kara za wys�anie Odrena na �mier� tylko je�li zrobi�e� to umy�lnie.
   - Wy�wietlanie Prawo�ci nie wprowadza ju� w b��d sugeruj�c, �e jest powy�ej 20 lub poni�ej 1.
   - Rozwi�zany problem, w kt�rym nie by�o mo�liwych odpowiedzi w rozmowach w dru�ynie.
   - Valygar teraz upuszcza swe cia�o tak jak poprzednioe.
   - Dobrzy i �li NPC wci�� mog� opu�ci� dru�yn� je�li s� nieszcz�liwi, niezale�nie od charyzmy.
   - NPC odnosz� si� do Prawo�ci kiedy s� w dru�ynie i Reputacji kiedy s� poza ni�; to jest traktowane jako unikalny system zadowolenia dla NPC.
   - �owcy upadn� kiedy nie s� ju� dobrzy.
   - Kap�ani/�owcy ju� nie upadaj�. Tego po prostu nie da si� zrobi� w BG2. Je�li kto� ma jaki� pomys�, prosz� da� mi zna�.
   - Dodano polskie t�umaczenie (Damian Staniszewski).
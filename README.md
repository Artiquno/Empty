# Libraria Online
Nj&#235; librari online p&#235;r t&#235; lexuar libra. Site i shkruar n&#235; **ASP.NET** Web Forms.

1. [git clone](#si-të-klonosh-në-vs-git-plugin)
2. Marrja dhe d&#235;rgimi i ndryshimeve
    1. [git commit](#commit)
    2. [git push](#push)
    3. [git pull](#pull)

# Si t&#235; klonosh n&#235; VS Git Plugin

1. Hap Visual Studio.
2. N&#235; panelin n&#235; t&#235; djatht&#235;, hap 'Team Explorer'.
3. Tek 'Local Git Repositories' *kliko* 'Clone &#9662;'.
4. N&#235; fush&#235;n e URL (e para) shkruaj https://github.com/Artiquno/Libraria.git.
5. N&#235; fush&#235;n e Path (e dyta) shkruaj direktorin&#235; ku do q&#235; t&#235; shkarkohet projekti *(p.sh C:\EmptyFolder\ )* ose *kliko* butonin&nbsp;'**...**' n&#235; t&#235; djatht&#235; p&#235;r t&#235; hapur file explorer. Duhet t&#235; zgjedh&#235;sh nj&#235; folder bosh.
6. *Kliko* 'Clone'.
7. U klonua! Tani *File -> Open Site...* dhe hap folderin q&#235; zgjodhe m&#235; sip&#235;r.
8. N&#235;se nuk e ke konfiguruar Git n&#235; VS *kliko* butonin **Home** *(butoni i trete, ikon&#235;n e sht&#235;pis&#235;)* n&#235; krye t&#235; Team Explorer
9. Hap 'Settings', dhe pastaj 'Global Settings'
10. Tek 'User Name' vendos username q&#235; ke n&#235; Git
11. Tek 'Email Address' vendos email t&#235;nd
12. *Kliko* 'Update'

# Si t&#235; b&#235;sh ndryshime

## Commit
### Ruaj ndryshimet e b&#235;ra

1. Hap nj&#235; file nga projekti. *(p.sh README.md)*
2. B&#235;j nj&#235; ose m&#235; shum&#235; ndryshime *(p.sh shto nj&#235; p&#235;rsh&#235;ndetje)* dhe b&#235;je save.
3. Hap 'Team Explorer' n&#235; panelin n&#235; t&#235; djatht&#235;.
4. *Kliko* 'Changes'.
5. Shto file q&#235; ke ndryshuar duke klikuar butonin '**+**' p&#235;r t&#235; shtuar t&#235; gjith&#235; file e ndryshuar (ose duke p&#235;rzgjedhur file individuale me *Ctrl+Click*, *kliko* me t&#235; djatht&#235;n, dhe *kliko* 'Stage').
6. Shkruaj nj&#235; p&#235;rmbledhje t&#235; shkurt&#235;r t&#235; ndryshimeve tek fusha e m&#235;sip&#235;rme.
7. *Kliko* 'Commit'

## Push
### Hidhi ndryshimet n&#235; server

1. Pasi ke b&#235;r&#235; *commit*, *kliko* butonin **Home** n&#235; krye t&#235; 'Team Explorer'.
2. *Kliko* 'Sync'
3. *Kliko* 'Push'

## Pull
### T&#235;rhiq ndryshimet nga serveri

1. Tek **Home** *kliko* 'Sync'
2. *Kliko* 'Pull'
3. N&#235;se t&#235; thot&#235; 'Conflicts' do t&#235; thot&#235; q&#235; nj&#235; ose m&#235; shum&#235; file jan&#235; ndryshuar dhe n&#235; server dhe nga ti.
    1. *Kliko* 'Resolve Conflicts'.
    2. Tek file q&#235; ka konflikt *kliko* 'Merge'.
    3. Do t&#235; hapen n&#235; Visual Studio dy file q&#235; tregojn&#235; ndryshimet q&#235; jan&#235; b&#235;r&#235; nga ti dhe n&#235; server. Jeshile jan&#235; shtime, t&#235; kuqe jan&#235; heqje.
    4. *Kliko* nj&#235; ose t&#235; dy checkbox p&#235;r t&#235; zgjedhur kush ndryshim do t&#235; ruhet. Posht&#235; shfaqet file p&#235;rfundimtar, mund ta ndryshosh n&#235;se duhet.
    5. Kur t&#235; kesh mbaruar, n&#235; cepin e majt&#235;-sip&#235;r t&#235; faqeve me ndryshime *kliko* 'Accept Merge'.
    6. P&#235;rs&#235;rit p&#235;r t&#235; gjith&#235; file q&#235; kan&#235; konflikte.
    7. *Kliko* 'Commit Merge' tek 'Team Explorer', p&#235;rfundo *commit*, dhe pastaj *push*.
4. Tani ke kodin m&#235; t&#235; ri nga serveri.

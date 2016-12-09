# Libraria Online
Një librari online për të lexuar libra. Site i shkruar në **ASP.NET** Web Forms.

# Si të klonosh në VS Git Plugin

1. Hap Visual Studio.
2. Në panelin në të djathtë, hap 'Team Explorer'.
3. Tek 'Local Git Repositories' *kliko* 'Clone &#9662;'.
4. Në fushën e URL (e para) shkruaj https://github.com/Artiquno/Empty.git .
5. Në fushën e Path (e dyta) shkruaj direktorinë ku do që të shkarkohet projekti *(p.sh C:\EmptyFolder\ )* ose *kliko* butonin&nbsp;'**...**' në të djathtë për të hapur file explorer. Duhet të zgjedhësh një folder bosh.
6. *Kliko* 'Clone'.
7. U klonua! Tani *File -> Open Site...* dhe hap folderin që zgjodhe më sipër.

# Si të bësh ndryshime

## Commit
### Ruaj ndryshimet e bëra

1. Hap një file nga projekti. *(p.sh README.md)*
2. Bëj një ose më shumë ndryshime *(p.sh shto një përshëndetje)* dhe bëje save.
3. Hap 'Team Explorer' në panelin në të djathtë.
4. *Kliko* 'Changes'.
5. Shto file që ke ndryshuar duke klikuar butonin '**+**' për të shtuar të gjithë file e ndryshuar (ose duke përzgjedhur file individuale me *Ctrl+Click*, *kliko* me të djathtën, dhe *kliko* 'Stage').
6. Shkruaj një përmbledhje të shkurtër të ndryshimeve tek fusha e mësipërme.
7. *Kliko* 'Commit'

## Push
### Hidhi ndryshimet në server

1. Pasi ke bërë commit, *kliko* butonin **Home** në krye të 'Team Explorer'.
2. *Kliko* 'Sync'
3. *Kliko* 'Push'

## Pull
### Tërhiq ndryshimet nga serveri

1. Tek **Home** *kliko* 'Sync'
2. *Kliko* 'Pull'
3. Nëse të thotë 'Conflicts' do të thotë që një ose më shumë file janë ndryshuar dhe në server dhe nga ti.
    1. *Kliko* 'Resolve Conflicts'.
    2. Tek file që ka konflikt *kliko* 'Merge'.
    3. Do të hapen në Visual Studio dy file që tregojnë ndryshimet që janë bërë nga ti dhe në server. Jeshile janë shtime, të kuqe janë heqje.
    4. *Kliko* një ose të dy checkbox për të zgjedhur kush ndryshim do të ruhet. Poshtë shfaqet file përfundimtar, mund ta ndryshosh nëse duhet.
    5. Kur të kesh mbaruar, në cepin e majtë-sipër të faqeve me ndryshime *kliko* 'Accept Merge'.
    6. Përsërit për të gjithë file që kanë konflikte.
    7. Përfundo duke bërë Commit dhe Push.

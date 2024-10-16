Aparte notitie voor alles te doen met Linux in computer systems.

# Types shell
De brug tussen de gebruiker en de kernel. Onderdeel van een besturingssysteem.

We hebben in [[CS-H02]] al gehoord van de twee typen. Maar in Linux hebben we verschillende vormen CLI en Desktopomgevingen, we noemen er een paar op:
## CLI
Meestal worden ze samen genomen enkel hebben ze een klein verschil. CLI (= Command Line Interface) is hoe een gebruiker de computer manipuleert (a.d.h.v. commando's) en de CLI (= Command Line interpreter) is de achterliggende software die de commando's bepaalt, inleest en omzet in taken voor de kernel. Samen vormen ze een type 'shell'
### Bourne shell
De eerste Unix shell gemaakt door Stephen Bourne bij Bell Labs (Unix makers).

### Bash (Unix Shell)
De meest voornamelijke 'command line interpreter' in hedendaags Linux. Wij gaan hier ook leren meer werken.
- Bash = Bourne Again Shell -> Unix compatibele shell gemaakt door de GNU Project.

### Zsh (Z Shell)
Ook gekend vanuit macOS, gebasseerd op Bourne Shell.

## Grafisch
Ook gekend in Linux als een 'DE' (= Desktop Environment). Een grafische manier van werken.

### GNOME
De standaard DE voor veel distributies van Linux, zoals Fedora, Ubuntu & Debian. Modern en gemakkelijk maar kan intensief zijn op de hulpbronnen van je PC.

### KDE
Een 'windows-achtige' DE. Gebruikt door openSUSE, Kubuntu en KDE Neon.  Ze is heel aanpasbaar maar soms een beetje buggy.

# Bash
De bash shell is populair door verschillende redenen:
- Geschiedenis van commando's
- Inline bewerkingen 
	- Je kan met de pijltje terug gaan om iets aan te passen en hoeft niet alles weer te verwijderen
- Scripting
	- Je kan bash commando's in een tekstbestand steken en die uitvoeren
- Aliassen
	- Een lange opdracht kan je een 'alias' geven (= andere naam)
- Variabelen
	- Je kan info (tijdelijk) opslaan a.d.h.v. variabelen in bash.

## Prompt
Een bash omgeving (terminal op desktop of CLI) toont standaard een prompt:

```BASH
gebruiker@systeem:~$
```

Ze bestaat uit
- De huidige ingelogde gebruiker, in ons geval `gebruiker`
- Het `@` symbool voor onderscheiding
- De naam van de computer, in ons geval `systeem`
- De huidige map, in ons geval `~` een afkorting voor de thuismap van de gebruiker (`/home/gebruiker`) -> Zie later
- Een dollarteken om aan te geven dat de interpreter klaar is voor ingave.

# Commandostructuur
## Wat is een commando?
Een oproep in de vorm van tekst naar een softwareprogramma dat uitgevoerd wordt in de CLI en een actie op de computer uitvoerd.

## Opbouw commando
Een commando wordt opgebouwd uit de roepnaam, haar opties en argumenten. 

We nemen het voorbeeld van `ls`, een commando om de inhoud van een (huidige) map te tonen.

```Bash
ls -lh Documents
```

- De roepnaam `ls` vraagt naar de software
- `Documents` is de map die we willen inspecteren, ofwel het 'argument'
- `-lh`  bestaat uit twee verschillende opties:
	- `-l`: Toont uitgebreidere informatie
	- `-h`: Maakt het leesbaarder voor mensen

### Opties
Voor nieuwere commando's kan het zijn dat er een langere versie bestaat
- i.p.v. `-h` voor leesbaarheid te gebruiken, kan men de engelse term `--human-readable` gebruiken (nl. Leesbaar voor mensen)
- Pas op, je moet wel een dubbel koppelteken gebruiken zodat er geen verwarring ontstaat voor de interpreter `--`

Kortere opties kan je aan elkaar zetten bv. `-lhvf`, langere versies moet je altijd apart zetten `--human-readable --long --verbose`

### Argumenten
Er kunnen soms meerdere argumenten gebruikt worden in een commando, zoals:

```Bash
mv /tekstbestand.txt /mapMetTekstbestanden/tekstbestand.txt
```

Waarin je eerst het doelbestand selecteert, waarna de doelmap waarnaartoe je het bestand wil verzetten (het `mv` commando)

Ook kunnen opties argumenten hebben

```Bash
usermod -aG voetballer Doku
```

- De optie `-aG` ofwel 'append group' (nl. Toevoegen aan groep) heeft twee argumenten
	- De groep waaraan de gebruiker wordt toegevoegd -> `voetballer`
	- De gebruiker die toegevoegd wordt aan de groep -> `Doku`

## Geschiedenis
Alle uitgevoerde commando's worden in de geschiedenislijst opgeslagen. Deze kan je vinden in je thuismap als `.bash_history` of door het commando `history` uit te voeren.

**Voorbeeld** (`.bash_history`)
```bash
    6  git pull
    7  ls
    8  git status
    9  git init
   10  git add 
   11  clear
   12  cd ..
   13  rm -rf Quartz/
   14  mkdir Quartz
   15  ls
   16  cd Quartz/
   17  ls
   18  mkdir OpenBrein
   19  ls -lhvf
   20  cd OpenBrein
   21  git init
```

### Met de pijtljes
Door de pijtljes omhoog en omlaag te duwen op je toetsenbord kan je door de geschiedenis browsen.

### Met de uitroeptekens
- `!6` voert het vijfde uitgevoerde commando uit (in ons geval `git pull`)
- `!ls` voert het laatste zelfde type commando uit (in ons geval `ls -lhfv`)
- `!!` voert het laatste ingevoerd commando uit.

### Met shortcuts
Door `Ctrl + R` te typen kan je zoeken in je geschiedenis.

## Variabelen
Met variabelen in bash kan de gebruiker of shell gegevens opslaan. Er bestaan twee typen variabelen:
- Omgevingsvariabelen: 

### Lokale Variabele
Zijn enkel beschikbaar in je huidige terminal of terminal-venstertje. Ze gaan verloren bij het sluiten van die shell.

```Bash
mijnvariabele=200
```

```Bash
echo $mijnvariabele
UITVOER: 200
```

Bij het opvragen van de variabele plaatsen we een dollarteken voor haar naam. Dit zorgt ervoor dat bash weet dat het om een variabele gaat. Bv.

```bash
echo "Deze boom is mijnvariabele"
UITVOER: Deze boom is mijnvariabele
```

Maar

```Bash
echo "Deze boom is $mijnvariabele"
UITVOER: Deze boom is 200
```

### Omgevingsvariabelen
Zijn beschikbaar voor het volledige systeem maar gaan ook verloren bij het afsluiten van je sessie (terminalvenster, of bij server tty1, 2, ...)

We maken altijd eerst een normale variabele aan en promoveren ze daarna naar een omgevingsvariabele met het commando `export`. 

```Bash
export mijnvariabele
```

Om nu te zien dat ze effectief een omgevingsvariabele is geworden kunnen we het `env` commando uitvoeren en de lijst met omgevingsvariabelen ophalen.

**Fragment `env` commando (na uitvoeren export)**
```Bash {4}
...
PATH=/home/cheese/.local/bin:/home/cheese/.local/bin:/home/cheese/.local/bin:/home/cheese/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin
GDMSESSION=gnome
BLACKBOX_THEMES_DIR=/home/cheese/.var/app/com.raggesilver.BlackBox/data/blackbox/schemes
mijnvariabele=200
DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
MAIL=/var/spool/mail/cheese
TERM_PROGRAM=BlackBox
...
```

a.d.h.v. `unset` kunnen we de omgevingsvariabele ontslaan naar een normale variabele.

### Path variabele
De `$PATH` variabele bevat waar het systeem gaat zoeken voor programma's.

```Bash
echo $PATH
UITVOER:
/home/cheese/.local/bin:/home/cheese/.local/bin:/home/cheese/.local/bin:/home/cheese/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin
```

### Omgevingsvariabelen vastzetten
Zoals je ziet bij `$PATH` zal die altijd klaar staan zonder die zelf te moeten exporteren. 
- Dit komt doordat die bij het opstarten automatisch wordt vastgelegd via het `.bashrc` bestandje

## Bashrc
Bij het opstarten wordt het bash-script `.bashrc` in de thuismap van de gebruiker uitgevoerd. Hierin kan je vanalles zetten maar basis staat er in:

```Bash
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
export PATH=/home/cheese/.local/bin:$PATH
```

- Je ziet bv. dat hier de declaratie van `PATH` wordt gedaan.

## Aliassen
Een lang commando kan omgezet worden in een verkorte 'alias'. Het commando `ls` is basis een alias voor `alias ls='ls --color=auto'` zodat jij mooie kleurtjes krijgt.
- Je kan eender welk commando, inclusief onbestaande configureren als alias.

**Lange, herhalende opties**
Als we `ls` altijd uitvoeren met de opties `-lhvf` dan kunnen we dit in een alias voor ls zetten.

**Voorbeeld 'Hello World!'**
Met wat bash scripting kunnen we aliassen gebruiken om ons eigen 'commando's' aan te maken

```bash
alias helloworld='echo "Hello World!"'
```

```Bash
helloworld
UITVOER: Hello World!
```


Om een alias te verwijderen types we `unalias`

>[!warning]
>Zoals variabelen zijn aliassen per sessie, om ze altijd te kunnen gebruiken moet je ze in de `.bashrc` van je gebruiker zetten.

## Aanhalingstekens
### Enkel
Enkele aanhalingstekens ( ' )voorkomen dat de shell alle speciale tekens "interpreteert" of uitbreidt. 
![[Pasted image 20241013150424.png]]

### Dubbele
Dubbele aanhalingstekens ( " )voorkomen dat de shell sommige metatekens interpreteert, inclusief glob-tekens. (bv. `*`)

![[Pasted image 20241013150435.png]]

### Backtics
Achterwaardse aanhalingstekens veroorzaken
"opdrachtvervanging" waardoor een opdracht kan worden
uitgevoerd binnen de regel van een andere opdracht.
![[Pasted image 20241013150444.png]]

### Escape
Door `\`  te gebruiken kan je net zoals in elke programmeertaal een escape sequence invoeren. Het volgende teken zal worden niet worden geïnterpeteert en wordt gewoon weergegeven.

## Meer commando's op één lijn
Je kan in bash meerdere commando's uitvoeren a.d.h.v. één lijn. Je doet dit a.d.h.v. de volgende operatoren
- `;` voer commando's uit ongeacht of het vorige commando is gelukt **(compound)**
- `&&` voert commando's uit als het vorige gelukt is **(and)**
- `||` voert enkel het volgende commando uit als het vorige niet gelukt is. **(or)**

# Manpages & hulp
Een manier om commando's en kenmerken van het Linux systeem op te zoeken. (kwam doordat je vroeger niet direct alles kon google'n.)
- Je zoekt iets op door `man DING` - waar we `DING` vervangen met wat we willen opzoeken, bv. `man ls`

De manpages zijn opgedeeld in:
- `NAME`:  geeft de naam van het commando en een zeer korte beschrijving.
- `SYNOPSIS`: geeft voorbeelden van hoe het commando uitgevoerd wordt.
- `DESCRIPTION`: biedt een meer gedetailleerde beschrijving van het commando.
- `OPTIONS`: geeft een overzicht van de opties voor het commando en een beschrijving van hoe die gebruikt worden.

En indien nodig ook:
- `AUTHOR`: Geeft de naam van de persoon die de man page heeft opgesteld
- `REPORTING BUGS`:  geeft details over hoe problemen met het commando gerapporteerd kunnen worden.
- `COPYRIGHT`: geeft de licentie(s) weer die van toepassing zijn bij het commando.
- `SEE ALSO`: Geeft je een idee waar u aanvullende informatie kunt vinden.

**Voorbeeld**
Zie [[CS-LINUX-VB01]]

## Zelfde naam
Sommige onderdelen hebben dezelfde naam, bv. 
- bv. `passwd` (het bestand waar paswoorden opgeslagen worden) en `passwd` (het commando om je paswoord te veranderen)

Je kan ze uit elkaar halen a.d.h.v. hun volgnummer `passwd(1)` en `passwd(5)`. Dit is niet willekeurig maar heeft een betekenis:
1. **Algemene opdrachten** (General Commands)
2. **Systeemoproepen** (System Calls)
3. **Bibliotheekoproepen** (Library Calls)
4. **Speciale bestanden** (Special Files)
5. **Bestandsformaten en conventies** (File Formats and Conventions)
6. **Spellen** (Games)
7. **Diversen** (Miscellaneous)
8. **Systeembeheeropdrachten** (System Administration Commands)
9. **Kernel-routines** (Kernel Routines)

## Zoeken
### `-k`
Met de optie `-k` kan men de zoekfunctie van manpages gebruiken. Je hoeft enkel een kernwoord mee te geven.

**Voorbeeld**
```Bash
cheese@surlap:~$ man -k password
chage (1)            - change user password expiry information
chgpasswd (8)        - update group passwords in batch mode
chpasswd (8)         - update passwords in batch mode
cracklib-check (8)   - Check passwords using libcrack2
endpwent (3)         - get password file entry
endspent (3)         - get shadow password file entry
tpm2_policypassword (1) - Enables binding a policy to the authorization value of the authorized TPM object.
fgetpwent (3)        - get password file entry
fgetspent (3)        - get shadow password file entry
fgetspent_r (3)      - get shadow password file entry
getpass (3)          - get a password
getpw (3)            - reconstruct password line entry
getpwent (3)         - get password file entry
getpwnam (3)         - get password file entry
getpwnam_r (3)       - get password file entry
...
```

### `-f`
Met de optie `-f` kan je verder zoeken naar andere manpages met dezelfde naam.

**Voorbeeld**
```Bash
cheese@surlap:~$ man -f passwd
passwd (1)           - change user password
passwd (1ossl)       - OpenSSL application commands
passwd (5)           - password file
```

## Via commando
Je kan bij meeste commando's met de optie `--help` of `-h` ook extra info krijgen.

**Voorbeeld**
```Bash
cheese@surlap:~$ ls --help
Gebruik:  ls [OPTIE...] [BESTAND...]

Toont informatie over de gegeven BESTANDen (standaard over de huidige map).

De items worden alfabetisch gesorteerd als geen van de opties '-cftuvSUX'
noch '--sort' gegeven is.

(Een verplicht argument bij een lange optie geldt ook voor de korte vorm.)
  -a, --all                  ook de namen tonen die beginnen met een '.'
  -A, --almost-all           als '-a', maar de items '.' en '..' weglaten
      --author               (met '-l') de auteur van elk bestand tonen
  -b, --escape               niet-grafische tekens tonen als codes in C-stijl
      --block-size=SIZE      with -l, scale sizes by SIZE when printing them;
                             e.g., '--block-size=M'; see SIZE format below

  -B, --ignore-backups       geen namen tonen die eindigen op '~'
  -c                         with -lt: sort by, and show, ctime (time of last
                             change of file status information);
                             with -l: show ctime and sort by name;
                             otherwise: sort by ctime, newest first

  -C                         list entries by columns
      --color[=WHEN]         color the output WHEN; more info below
...
```

## Andere documentatie
Bijgeleverde info en documentatie wordt in de `/usr/share/doc` of `/usr/doc` map gezet.

# Bestandsysteem
In Linux wordt alles bewaard in bestanden (en mappen). 
- Bestanden worden gebruikt om gegevens op te slaan (bv. tekst, afbeeldingen, programma's, ...)
- Een map zorgt voor structuur in bestanden, ze bevat bestanden en heeft een naam.

Met deze twee componenten maken we een ''hiërarchische" organisatiestructuur 
- (bestand zit in een map zit in een map zit in een map, ...)

>[!info]
>De onderstaande koppen volgen de hiërarchische structuur van Linux. (bv. `etc` staat in de root en thuismap staat in `home`, ...)
## Root
De root is de laagste map van allemaal, alle mappen origineren hiervan. Ze wordt gekenmerkt met `/` aangezien er niks voor kan zitten.

![[Pasted image 20241016163241.png]]

### Bin
Bevat essentiële systeemprogramma's en uitvoerbare bestanden (binaries), zoals basiscommando's (ls, cp, etc.).

### Boot
Bestanden die nodig zijn om het systeem op te starten, zoals de kernel

### Dev
Bestanden die apparaten (devices) vertegenwoordigen, zoals schijven, terminals, en andere hardware.

### Etc
Bevat configuratiebestanden voor het systeem en de geïnstalleerde programma's.

### Home
De map waarin gebruikersfolders staan (met daarin alles te doen met de gebruiker, bv. Documenten, Downloads, ...) 

#### Gebruikersmap
De folder van een gebruiker noemen we de 'Home directory' en kenmerken we met de tilde (~). 
- Voor ingelogde gebruiker 'Sysadmin' is `/home/sysadmin` hetzelfde als `~`

### Lib
Essentiële systeem-bibliotheken die nodig zijn voor het draaien van programma's in `/bin` en `/sbin`.

### Media
Gebruikt voor het automatisch mounten van verwijderbare media zoals USB-sticks of CD's.

### Mnt
Gebruikt voor het tijdelijk mounten van bestandssystemen (zoals externe schijven

### Opt
Hier kunnen optionele softwarepakketten en programma's worden geïnstalleerd

### Proc
Virtueel bestandssysteem dat informatie bevat over draaiende processen en systeeminformatie.

### Root 
Niet de echte root, maar de `/root` map, de thuismap van de root-gebruiker (beheerder)

### Run
Bevat runtime-data die gegenereerd wordt na het opstarten van het systeem (bijv. PID's en sockets).

### Sbin
Essentiële systeembeheerprogramma's (alleen voor root-gebruikers).

### Usr
Bevat gebruikersprogramma's, libraries en documentatie. Submappen bevatten bijvoorbeeld uitvoerbare bestanden (`/usr/bin`) en documentatie (`/usr/share`).

### Sys
Virtueel bestandssysteem dat informatie geeft over de hardware en apparaten van het systeem.

## Relatieve & absolute paden
Elke map in Linux heeft een pad, maar er zijn 2 verschillende manieren om dit uit te drukken.

### Relatief pad
Opgebouwd relatief tot jouw huidige locatie. We nemen 'sprongetjes' naar boven of beneden.
- Als je een terminal opent dan start die meestal op vanaf de thuismap (`/home/GEBRUIKER` waar gebruiker jouw gebruikersnaam is) dus de folder `Documenten` staat ééntje hoger. (in `documenten`)

![[Pasted image 20241016170001.png]]

### Absoluut pad
We volgen de volledige aftakking vanaf de 'root' door te beginnen met `/`. 
- De map `Documenten` drukken we absoluut uit als `/home/GEBRUIKER/Documenten`

![[Pasted image 20241016165949.png]]

## Symbolen voor mappen
- `~`: Thuismap ingelogde gebruiker
- `..`: Map naar onder
- `.`: Huidige map
- `/`: Root

## Metadata van bestanden (en mappen)
Mappen hebben verschillende eigenschappen die kunnen toegekend worden. Dit wordt opgeslagen in de metadata en is zichtbaar a.d.h.v. `ls -l`

### Type
Er zijn drie soorten bestandtypes:
- `d`: een directory of map
- `-`: een bestand
- `l`: een symbolische link

### Rechten
De toegangsrechten voor een map of bestand, ze bepalen wie wat mag doen.
- bv. de `drwxr-xr-x` in `drwxr-xr-x 1 root root 0 Apr 11 21:58 upstart`

### Eigenaar
De eigenaar van het bestand die de toegangsrechten voorschrijft.
- bv. `root` in `drwxr-xr-x 1 root root 0 Apr 11 21:58 upstart`

### Groep
De groep die toegang heeft tot het bestand
-  bv. `syslog` in `-rw-r----- 1 syslog adm 416 Aug 22 15:43 kern.log`

### Bestandsgrootte
De grootte in bytes van een bestand (of map)
- bv. `1087150` in `-rw-r----- 1 syslog adm 1087150 Aug 23 15:17 syslog.1`

### Tijdstempel
Laatste keer dat bestand werd bewerkt.
- bv. `Aug 23 15:17` in `-rw-r----- 1 syslog adm 1087150 Aug 23 15:17 syslog.1`

### Naam
Naam van bestand (of map)
- bv. `bootstrap.log` in `-rw-r--r-- 1 root root 47816 Jul 17 03:36 bootstrap.log`

## Globbing
Ook vaak wildcards genoemd. We kunnen een abstracter patroon definiëren.
- `*` 0 of meer gelijk welke tekens -> bv. `D*` kan `Downloads`, `Data.img`, `Document.pdf`, ... opleveren
- `?` precies 1 teken (bv. `test.???` -> Zal extensie zoeken van 3 tekens voor test)
- `[]` Zoekt een match met precies 1 teken dat tussen de vierkante haakjes wordt opgegeven. (bv. `[a-z] of [abcdefghijklmnopqrstuvwxyz]` -> Alle tekens van A tot Z kunnen in deze ene plek zitten)
- `!` Wordt gebruikt met `[]` om aan te geven dat de tekens tussen `[]` niet mogen voorkomen. (bv. `[!a-c]` alle tekens behalve a, b & c)

![[Pasted image 20241016183702.png]]


## Commando's
### Veranderen van map
Het veranderen van map doen we met het commando `cd`, gevolgt door de naam van de map. Maar ze heeft enkele speciale operaties ook:
- Om een map omlaag te gaan doen we `cd ..`
- Om naar de thuismap te gaan typen we gewoonweg `cd` of `cd ~`
- Om naar de root folder te gaan typen we `cd /`

### Tonen huidige map
Met het commando `pwd` kunnen we de huidige folder zien.

**Voorbeeld**
```bash
cheese@surlap:~/Documenten$ pwd
/home/cheese/Documenten
```

### Inhoud van mappen
Om de inhoud van een map weer te geven in de terminal gebruiken we `ls`. Er zijn verschillende opties:
- `-a`: Toont alle bestanden, inclusief de verborgen bestanden (= bestanden waarvan de naam begint met een punt).
- `-l`: Toont de bestanden in een lange lijst met de metadata over die bestanden (zie volgende slides voor de details hiervan).
- `-R`: Toont de bestanden van een map én die van de submappen.
- `-S`: Toont de bestanden gesorteerd op bestandsgrootte van groot naar klein.

### Tonen structuur mappen
Met het programma `tree` kunnen we een boomdiagram aanvragen van de folderstructuur vanaf een bepaalde map.
- `-L NUMMER`: aantal subfolders tonen
- `-a`: Toont alle bestanden

**Voorbeeld**
```Bash
cheese@surlap:/$ tree -L 1
.
├── afs
├── bin -> usr/bin
├── boot
├── dev
├── etc
├── home
├── lib -> usr/lib
├── lib64 -> usr/lib64
├── lost+found
├── media
├── mnt
├── opt
├── proc
├── root
├── run
├── sbin -> usr/sbin
├── srv
├── sys
├── tmp
├── usr
└── var

22 directories, 0 files
```

### Kopiëren
We kunnen a.d.h.v. het commando `cp` een bestand kopiëren
- `-v`: (**Verbose**) Toont output indien de kopie succesvol is uitgevoerd.
- `-i`: (**interactive**) Vraagt of een bestand overschreven mag worden.
- `-r`: (**recursive**) Kopieert zowel bestanden als de volledige mappenstructuur.


**Voorbeeld**
```
cp /Documents/ict.pdf /Documents/ict/ict.pdf
```

- **Resultaat**: Bestand in `/Documents` genaamd `ict.pdf` en datzelfde bestand nog eens in `/Documents/ict/`

### Knippen (of verplaatsen)
We kunnen a.d.h.v. het commando `mv` een bestand verplaatsen
- `-v`: (**Verbose**) Toont output indien de verplaatsing succesvol is uitgevoerd.
- `-i`: (**interactive**) Vraagt of een bestand overschreven mag worden.
- `-n`: (**no clobber**) Overschrijft niet de inhoud van een doelbestand.

>[!info]
>er is geen optie `-r` omdat het `mv` commando standaard mappen verplaatst.

**Voorbeeld**
```
mv /Documents/ict.pdf /Documents/ict/ict.pdf
```

- **Resultaat**: Bestand (`ict.pdf` in `/Documents` verdwijnt en wordt veplaatst naar `/Documents/ict`.

### Verwijderen
Met het commando `rm` kun je een bestand of map verwijderen.
- `-r`: (**recursive**) Wordt gebruikt om een map te verwijderen.
- `-f`: (**force**) Alles wordt verwijderd zonder bevestiging te vragen.

>[!warning]
>wanneer een gebruiker een map verwijdert, worden alle bestanden en submappen verwijderd zonder bevestiging te vragen. Het is het beste om de optie -i te gebruiken.


### Zoeken
Het `find` commando wordt gebruikt om bestanden terug te vinden.
- `-name`: Zoek op naam (**Hoofdlettergevoelig**)
- `-iname`: Zoek op naam
- `-regex`: Zoek op reguliere expressie
- `-type`: Zoek op type (bestanden, mappen, ...)
- `-empty`: Zoek lege bestanden of mappen
- `-maxdepth`: Zoek niet dieper dan een maximaal aantal mappen.
- `-ls`: Voer het commando "ls -l" uit op de gevonden bestanden.
- `-delete`: Verwijder de gevonden bestanden of mappen.
- `-exec`: Voer een commando uit op de gevonden bestanden of mappen.
- `-atime, -amin, -ctime, -cmin, -mtime, -mmin, ...`: Zoek op bestanden of mappen die geopend, aangepast, … binnen x aantal minuten of dagen.

>[!warning]
>Let op! Test altijd eerst uit of het commando de juiste bestanden vindt met optie `-ls` voordat je `-delete` optiegebruikt om te verwijderen.

**Voorbeeld**
Zoek alle bestanden "linux.txt" in de map "/home/sysadmin/school"

```
find /home/sysadmin/Documenten/ -iname "linux.txt"
```
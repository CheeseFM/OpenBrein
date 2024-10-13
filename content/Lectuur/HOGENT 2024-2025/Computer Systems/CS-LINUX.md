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

## Hulp vragen
Kan via:
- Uitlegpagina's (`man COMMANDO` -> bv. `man ls`)
- 
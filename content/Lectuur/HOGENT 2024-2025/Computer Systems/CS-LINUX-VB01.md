```MAN
LS(1)              Opdrachten voor gebruikers              LS(1)

NAAM
       ls - toon de inhoud van mappen

SAMENVATTING
       ls [OPTIE]... [BESTAND]...

BESCHRIJVING
       Toon  informatie  over de gegeven BESTANDen (standaard in
       de huidige map). De items worden  alfabetisch  gesorteerd
       als geen van de opties -cftuvSUX noch --sort gegeven is.

       Een  verplicht  argument  bij  een  lange  optie  is  ook
       verplicht voor de korte optie.

       -a, --all
              ook de namen tonen die beginnen met een '.'

       -A, --almost-all
              items '.' en '..' weglaten

       --author
              met -l, toon de auteur van elk bestand

       -b, --escape
              niet-grafische tekens tonen als codes in C-stijl

       --block-size=GROOTTE
              met -I, schaal de  groottes  met  GROOTTE  tijdens
              afdrukken;   b.v.  '--block-size=M';  zie  GROOTTE
              formaat hieronder

       -B, --ignore-backups
              geen namen tonen die eindigen op ~

       -c     with -lt: sort by, and show, ctime (time  of  last
              change  of file status information); with -l: show
              ctime and sort by name; otherwise: sort by  ctime,
              newest first

       -C     de items in kolommen presenteren

       --color[=WANNEER]
              kleur   de   uitvoer   WANNEER;   meer  informatie
              hieronder

       -d, --directory
              toon alleen mappen, niet hun inhoud

       -D, --dired
              uitvoer produceren voor de 'dired'-modus van Emacs

       -f     toon alle items in plaatsingsvolgorde

       -F, --classify[=WANNEER]
              voeg indicator (één van */=>@|) achteraan toe  aan
              items WANNEER

       --file-type
              idem, behalve '*' niet achteraan toevoegen

       --format=WOORD
              pagina  breed -x, komma's -m, horizontaal -x, lang
              -l, enkele-kolom -1, uitgebreid -l, verticaal -C

       --full-time
              hetzelfde als -l --time-style=full-iso

       -g     als -l, maar geen eigenaar tonen

       --group-directories-first
              groepeer  mappen  voor  bestanden;  kan  aangevuld
              worden  met  een  --sort,  maar  elk  gebruik  van
              --sort=none -U deactiveert groepering

       -G, --no-group
              in een lange lijst, druk groep namen niet af

       -h, --human-readable
              met -I en -s, toon de groottes zoals b.v. 1K  234M
              2G

       --si   idem, maar machten van 1000 i.p.v. 1024 gebruiken

       -H, --dereference-command-line
              symbolische koppelingen op opdrachtregel volgen

       --dereference-command-line-symlink-to-dir
              volg  elke  symbolische koppeling op opdrachtregel
              die wijst naar een map

       --hide=PATROON
              de namen die voldoen aan PATROON niet tonen (geldt
              niet samen met -a of -A)

       --hyperlink[=WANNEER]
              hyperlink bestandsnamen WANNEER

       --indicator-style=WOORD
              voeg indicator met stijl WOORD aan item namen toe:
              'none'  (standaard),  'slash'  (-p),   'file-type'
              (--file-type) of 'classify' (-F)

       -i, --inode
              het indexnummer van elk bestand tonen

       -I, --ignore=PATROON
              de namen die voldoen aan PATROON niet tonen

       -k, --kibibytes
              standaard  in 1024-byte blokken voor disk gebruik;
              wordt alleen gebruikt in combinatie met -s en voor
              totalen van mappen

       -l     uitgebreide bestandsinformatie tonen

       -L, --dereference
              bij het  tonen  van  bestandsinformatie  voor  een
              symbolische  koppeling,  de  informatie  over  het
              bestand waar de koppeling naar verwijst  tonen  in
              plaats van over de koppeling zelf

       -m     geen kolommen maar komma gescheiden lijst tonen

       -n, --numeric-uid-gid
              als -l, met numerieke gebruikers- en groeps-ID's

       -N, --literal
              de item namen tonen zonder aanhalingen of escapes

       -o     als -l, maar groepsinformatie niet tonen

       -p, --indicator-style=slash
              voeg een '/'-indicator achter map namen toe

       -q, --hide-control-chars
              een '?' tonen in plaats van niet-grafische tekens

       --show-control-chars
              niet-grafische   tekens   tonen   zoals   ze  zijn
              (standaard, tenzij uitvoer naar terminal gaat)

       -Q, --quote-name
              item namen omsluiten met aanhalingstekens

       --quoting-style=WOORD
              gebruik de quote  stijl  WOORD  voor  item  namen:
              literal,     local,    shell,    shell-    always,
              shell-escape,    shell-escape-always,c,     escape
              (overschrijft de QUOTING_STYLE omgevingsvariabele)

       -r, --reverse
              de sorteervolgorde omdraaien

       -R, --recursive
              submappen recursief tonen

       -s, --size
              toegewezen aantal blokken tonen voor ieder bestand

       -S     op bestandsgrootte sorteren (grootste eerst)

       --sort=WIJZE
              sorteer  op  WIJZE  in plaats van naam: none (-U),
              size (-S),  time  (-t),  version  (-v),  extension
              (-X), width

       --time=SOORT
              select  which  timestamp  used to display or sort;
              access time (-u):  atime,  access,  use;  metadata
              change  time  (-c):  ctime,  status; modified time
              (default): mtime, modification; birth time: birth,
              creation;

              met -I, WOORD bepaald welk tijdstip getoond wordt;
              met  --sort=tijd  ,  sorteer  op  WOORD  (nieuwste
              eerste)

       --time-style=TIJD_STIJL
              datum/tijd   formaat   met   -I;   zie  TIJD_STIJL
              hieronder

       -t     sorteer op tijdstip, nieuwste eerst; zie --tijd

       -T, --tabsize=AANTAL
              te gebruiken tabstop AANTAL in plaats van 8

       -u     met -lt: op toegangstijd sorteren en  deze  tonen;
              met  -l:  toegangstijd  tonen en op naam sorteren;
              anders: op toegangstijd sorteren (nieuwste eerst)

       -U     de items ongesorteerd tonen, op plaatsingsvolgorde

       -v     logisch sorteren op (versie)nummers in de naam

       -w, --width=BREEDTE
              te gebruiken scherm BREEDTE; 0 betekent onbegrensd

       -x     de items per regel tonen i.p.v. in kolommen

       -X     alfabetisch sorteren op bestands extensie

       -Z, --context
              beveiligingscontext van elk bestand tonen

       --zero elke regel afsluiten met NUL-byte, niet met nieuwe
              regel

       -1     toon een bestand per regel

       --help toon de helptekst en stop

       --version
              toon programmaversie en stop

       The  SIZE  argument  is  an  integer  and  optional  unit
       (example: 10K is 10*1024).  Units are K,M,G,T,P,E,Z,Y,R,Q
       (powers  of  1024) or KB,MB,... (powers of 1000).  Binary
       prefixes can be used, too: KiB=K, MiB=M, and so on.

       Het  TIJD_STIJL  argument  is  full-iso,  long-iso,  iso,
       locale  of  +FORMAAT. FORMAAT wordt geïnterpreteerd zoals
       in  date(1).   Als   FORMAAT   van   de   vorm   is   als
       FORMAAT1<newline>FORMAAT2,   dan   hoort   FORMAAT1   bij
       niet-recente bestanden en FORMAAT2 bij recente bestanden.
       TIJD_STIJL voorafgegaan met 'posix'- heeft alleen  effect
       buiten  de  POSIX  locale.   Tevens bepaalt de TIJD_STIJL
       omgevingsvariabele de standaard te gebruiken stijl.

       Het WANNEER argument is standaard  'always'  en  kan  ook
       'auto' of 'never' zijn.

       Het gebruik van kleuren om bestandstypes te onderscheiden
       kan  uitgeschakeld  worden met --color=never (standaard).
       Met --color=auto produceert 'ls'  alleen  kleurcodes  als
       standaarduitvoer   verbonden   is   met   een   terminal.
       Omgevingsvariabele  LS_COLORS   kan   deze   instellingen
       wijzigen.  Gebruik  het  dircolors(1)  commando  om  deze
       variabele in te stellen.

   De afsluitwaarde is:
       0      indien OK,

       1      bij kleine problemen (bijv. geen toegang  tot  een
              submap),

       2      bij  serieuze  problemen   (bijv. geen toegang tot
              argument op opdrachtregel)

AUTEUR
       Geschreven door Richard M. Stallman en David MacKenzie.

RAPPORTEREN VAN BUGS
       Online       hulp        bij        GNU        coreutils:
       <https://www.gnu.org/software/coreutils/>
       Meld            alle           vertaalfouten           op
       <https://translationproject.org/team/nl.html>

COPYRIGHT
       Copyright © 2023 Free Software Foundation, Inc.  Licentie
       GPLv3+:     GNU     GPL     versie     3     of     later
       <https://gnu.org/licenses/gpl.html>.
       Dit  is  vrije  software: u mag het vrijelijk wijzigen en
       verder verspreiden. Deze  software  kent  GEEN  GARANTIE,
       voor zover de wet dit toestaat.

ZIE OOK
       dircolors(1)

       Volledige                 documentatie                op:
       <https://www.gnu.org/software/coreutils/ls>
       of lokaal via: info '(coreutils) ls invocation'

VERTALING
       De  Nederlandse  vertaling  van   deze   handleiding   is
       geschreven         door         Mario         Blättermann
       <mario.blaettermann@gmail.com>    en    Luc    Castermans
       <luc.castermans@gmail.com>

       Deze vertaling is vrije documentatie; lees de GNU General
       Public            License            Version            3
       ⟨https://www.gnu.org/licenses/gpl-3.0.html⟩ of later over
       de Copyright-voorwaarden. Er is geen AANSPRAKELIJKHEID.

       Indien U fouten in de vertaling van deze handleiding  zou
       vinden,    stuur    een    e-mail    naar   ⟨debian-l10n-
       dutch@lists.debian.org⟩.

GNU coreutils 9.4        September 2023                    LS(1)
```
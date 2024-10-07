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

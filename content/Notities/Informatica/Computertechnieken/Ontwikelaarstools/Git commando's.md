#uitgewerkt  

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 16-06-2024

---
# Afhalen bestanden Github
## Clone
Met dit commando kun je een bestaand Git-repository klonen naar een nieuwe directory op je lokale machine. 
* Dit maakt een kopie van het repository, inclusief alle bestanden, branches en commit geschiedenis.

``` Bash
git clone <url>
```

# Repo starten / afhalen
## Init
Dit commando wordt gebruikt om een nieuw Git-repository aan te maken in een bestaande map. 
* Hiermee wordt een .git submap gemaakt waarin alle Git-gerelateerde informatie voor dat project wordt opgeslagen.

``` Bash
git init
```

## Pull
Dit commando haalt de nieuwste wijzigingen op van de externe repository en integreert deze in je lokale repository.

``` Bash
git pull
```

# Aanpassingen doorvoeren naar (externe) repo
## Add
Dit commando voegt alle gewijzigde bestanden in de werkende directory toe aan de staging area, klaar om gecommit te worden.

``` Bash
git add
```

## Commit
Met dit commando kun je de wijzigingen die je hebt toegevoegd aan de staging area, permanent vastleggen in de commitgeschiedenis van het repository. Dit is een soort opmerking met wat je hebt gedaan.

``` Bash
git commit -m
```

## Push
Met dit commando worden lokale commits naar een externe repository gepusht, waardoor de wijzigingen beschikbaar worden voor anderen die aan hetzelfde project werken.

``` Bash
git push
```

# Informatie over repo
## Status
Dit commando geeft de huidige status van het werkende directory en de staging area weer. 
* Het laat zien welke bestanden gewijzigd zijn en klaarstaan om gecommit te worden, welke bestanden nog niet zijn toegevoegd aan de staging area, en andere relevante informatie.

``` Bash
git status
```

``` Output
# On branch main
# Changes to be committed:
# (use "git reset HEAD <file>..." to unstage)
#
#modified: hello.py
#
# Changes not staged for commit:
# (use "git add <file>..." to update what will be committed)
# (use "git checkout -- <file>..." to discard changes in working directory)
#
#modified: main.py
#
# Untracked files:
# (use "git add <file>..." to include in what will be committed)
#
#hello.pyc

```
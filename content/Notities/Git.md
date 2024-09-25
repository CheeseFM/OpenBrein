#uitgewerkt

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 15-06-2024

---
Git is een versiebeheersysteem gemaakt door Linus Torvalds om de [[Open source]] ontwikkeling van [[Linux]] mogelijk te maken. Het zorgt ervoor dat je met meerdere ontwikkelaars tegelijkertijd aan (verschillende aspecten van) één project kan werken zonder elkaar in de weg te zitten.

# Kenmerken van Git
## Gedistribueerd 
Waarin andere systemen op één centrale server werken (denk aan het versiebeheersysteem in Google Docs), heeft elke ontwikkelaar met Git een lokale kopie van de code. Deze kopie noemen we een 'clone' of onze lokale repo.

![[Pasted image 20240616125823.png]]
# Repository
'De map met alle code in' - Dit is de ontwikkelaarsomgeving waar je al je code inzet. Dit staat lokaal op je computer maar er bestaan ook:

## * Repo's op afstand (Remote repo's)
Platformen zoals Github, Gitlab, Bitbucket, ... bieden hosting voor een Git server aan. Zo kan je (meestal gratis) vanaf eender welke plaats met internet je code aanpassen en wijzigingen doorvoeren. Het is simpelweg een opslagserver met git integratie.

# Staging
Na een bestand toegevoegd wordt aan een git repository zal ze in de staging area gezet, klaar om ge-commit worden en permanent vastgelegd te worden in de geschiedenis van de repo

![[Pasted image 20240616130940.png]]


# Commits
Een commit is het vastleggen van alle wijzigingen die je hebt gedaan. Je voegt meestal ook een beschrijven bericht toe van wat je hebt verandert. 

Als je bijvoorbeeld gewerkt hebt aan het toevoegen van een nieuwe pagina op jouw website kan je hierna een commit doen. Zo heb je de toestand voordat je deze nieuwe pagina hebt toegevoegd en erna. Dit is het versie controle gedeelte van Git.

![[Pasted image 20240616141716.png]]

(Deze commits gebeuren op jouw git repo, lokaal op je PC)
![[Pasted image 20240616131125.png]]



## * Push en pull (Remote repo)
Wanneer je die commits wilt doorvoeren op een remote repo doe je een push. Ze zal alle veranderingen toepassen op de code die in de cloud staat (bv. Gitlab).

Het omgekeerde hiervan is de pull, het zal alle wijzigingen van je remote op je lokale git repo toepassen. 

![[Pasted image 20240616142834.png]]

## Branching, forking en merging
In git kan je een repository op verschillende manieren manipuleren. We nemen het voorbeeld van een browser.

![[Pasted image 20240616132206.png]]
### Branching
Aan onze browser willen we een accountsysteem toevoegen om te synchroniseren, we willen met meerdere ontwikkelaars hieraan werken zonder de ontwikkeling van browser zelf te belemmeren.

Je maakt een grote nieuwe functie, we creëren een aftakking of 'branch'. Dit kloont de toestand van de huidige repo naar een nieuwe branch. Alle veranderingen worden op deze nieuwe branch gedaan en niet op de main branch. 

Het is alsof je je mapje met code kopieert naar een nieuw mapje en dan in dit nieuw mapje programmeert.

![[Pasted image 20240616133739.png]]

### Merging
Wanneer je functie klaar is doen we een 'merge'. Dit is de clou van branching. Je kan na het integreren van je functie deze branches weer samenvoegen zodat je één eindproduct bekomt en niet meerdere versies.

Je hebt nu een browser met een accountsysteem (en de wijzigingen die parallel zijn gedaan tijdens de ontwikkeling van deze functie)

![[Pasted image 20240616133935.png]]

### Forking
Je kopieert de huidige toestand van een repo naar een eigen repo om er zelf aan te ontwikkelen.

Dit wordt soms gedaan als een project gestopt is maar jij het wilt voortzetten.
![[Pasted image 20240616134437.png]]

# Toepassen
Zie [[Git commando's]] om effectief dit toe te passen
---

---
# Doelstellingen
---
- Nut kennen van een behoeftenanalyse
- Verschillende soorten behoeften kunnen benoemen en uitleggen
- Nut kennen van een usecase diagram
- Opstellen van een usecase diagram op basis van een context
- Nut kennen van een activitydiagram
- Opstellen van een activitydiagram op basis van een usecase scenario
- Nut kennen van testscenario’s
- Opstellen van testscenario’s op basis van een usecase scenario

# Notities
--- 
## Vereisten & behoeftes
De klant weet niet altijd wat hij wil, probeer altijd de vraag te stellen "Hoe zie jij dit?". 
- We nemen het voorbeeld van een chatapplicatie.
### Functionele vereisten
Wat moet het systeem kunnen? 

**Bijvoorbeeld:**
- Berichten versturen
- Berichten ontvangen
- Afbeeldingen toevoegen aan berichten
- Groepchat aanmaken
- Bericht sturen ontdoen
- Berichten beveiligd versturen
- ....
### Non-functionele vereisten
Hoe ga je dit implementeren en hoe gaat dit eruit zien? 

**Bijvoorbeeld:**
- Moet snel werken
- Moet intuïtief zijn
- Moet de huisstijl van de klant hebben
- Encryptie met SHA256 (-> bericht beveiligd versturen)
- Berichten vertraagd verzenden (-> berichten sturen ontdoen)

Er zullen meer NFRs zijn dan FRs, dit is logisch want de NFRs bereiden uit op de FRs.

## Use cases
Manieren dat de gebruiker het systeem kan gebruiken. Ze is afhankelijk van het doel (een bepaald onderdeel) en welke gebruiker.
- Ze zal enkel functionele vereisten gebruiken.

![[Pasted image 20241009171946.png]]

>[!info]
>Voor Software Analysis (dit semester) moet men nog geen use case kunnen opstellen. Die krijg je, je moet enkel de use case diagram kunnen opstellen (zie verder)

### Actor
De persoon (gebruiker) van het systeem. Er zijn verschillende types gebruiker:
- Primary actor: De gebruiker die effectief met jouw systeem werkt. (bv. bestuurder auto die naar zijn werk moet)
- Supporting actor: Iemand die met de gebruiker 'meekijkt' maar geen specifiek doel heeft (bv. iemand die meerijd naar de stad)
- Stakeholder: Iemand die geen actie onderneemt maar wel hetzelfde doel heeft. (bv. iemand die meerijd naar jouw zelfde werk moet)

### Condities
We nemen het voorbeeld van de use case: registreren op Chamilo als student HoGent.

#### Preconditie
Wat moet er op voorhand al van te pas zijn vooraleer men het systeem gebruikt
- bv. Student moet ingeschreven zijn
#### Postconditie
Wat gebeurt er na het systeem zijn gang heeft gegaan (= doel systeem)

### Domeinregels
Welke vereisten zijn er voor bepaalde elementen van het systeem
- bv. De gebruiker moet een paswoord van bepaalde lengte en combinatie intypen, het mail-adres moet uniek zijn

### Verlopen
#### Normale verlopen
Hoe je verwacht dat de gebruiker je systeem standaard in werking te nemen.
- bv.
	1. De gebruiker wenst zich te registreren als speler.
	2. Het systeem vraagt naam, voornaam, e-mail, geboortedatum, wachtwoord en bevestiging wachtwoord.
	3. De gebruiker geeft de gegevens in.
	4. Het systeem valideert (alles verplicht + DR-wachtwoord + DR-email).
	6. Het systeem toont een gepaste melding aan de gebruiker.

#### Alternatieve verlopen
Alle onverwachte verlopen (meestal vernomen door te testen), we benoemen ze door de stap die mis gaat + letter
- bv.
	4a. Email die al bestaat

### Template
Hoe wordt dit nu opgesteld in praktijk:

- Use case: naam
- Actors
	- Primary actor
	- Stakeholder(s)
- Condities
	- Precondities
	- Postcondities
- Verloop
	- Normaal verloop
	- Alternatieve verlopen
- Domeinregels

## Nut van use cases
### Modelleren van functionele vereisten
Het maakt het gemakkelijker om de vereisten van de klant vast te leggen in functionele vereisten om later de non-functionele mee op te bouwen. 
- vb. Geldautomaat, bank:
![[Pasted image 20241009184012.png]]
### Eenheid van planning
Door de functionele vereisten vast te leggen kunnen we de prioriteit van implementatie bepalen. De hoofdzaak eerst, daarna de randproducten, bv:

![[Pasted image 20241009190615.png]]
Zo kunnen we ook direct de termijn nodig bepalen. (En deze toepassen in de agile methode per iteratie)
![[Pasted image 20241009190733.png]]
### Basis functioneel testen
We kunnen zien waar het mis gaat en nieuwe alternatieve verlopen aanmaken.
- bv. Inloggen kan zonder paswoord

We kunnen ook kijken of het non-functioneel ook goed is?
- bv. de achtergrond is zwart en de knop is te donker om zichtbaar te zijn, het duurt 5 minuten om op te slaan, ...

### Basis verder ontwerp
Vanaf we de functionele vereisten vastgelegd hebben kunnen we verder met de rest van de boel.
![[Pasted image 20241009191214.png]]

## Use case diagram
Visualiseert de [[#Use cases|use cases]] in een diagram. Ze heeft twee onderdelen:
- De gebruiker
- De functionele requirements

![[Pasted image 20241012113827.png]]

### Includes
Soms omvatten bepaalde vereisten (bv. het zoeken van documenten) automatisch andere vereisten (een voorvertoning van documenten). 
- Dit betekent dat het gedrag van de ene use case altijd een onderdeel is van de andere, en niet optioneel is.
- We noteren dit a.d.h.v. een pijl en `<<include>>`
![[Pasted image 20241012115640.png]]

### Extend
Sommige vereisten kunnen optioneel andere vereisten gebruiken (bv. het beheren van folders bereid het uploaden van documenten uit)
- use case A voert use case B uit tijdens een alternatief verloop
- We noteren dit a.d.h.v. een pijl en `<<extend>>`

![[Pasted image 20241012115629.png]]

## Activity diagram
Stelt de verlopen voor van de use case voor in een diagram. 
![[Pasted image 20241012120901.png]]

### Onderdelen
Zoals gezien op vorige foto bestaat de use-case diagram uit enkele vaste elementen

| Foto                                 | Onderdeel     | Omschrijving                                                                                 |
| ------------------------------------ | ------------- | -------------------------------------------------------------------------------------------- |
| ![[Pasted image 20241012120709.png]] | Initial node  | De start van onze use-case                                                                   |
| ![[Pasted image 20241012120725.png]] | Activity      | Activiteit die het systeem onderneemt (bv. Het systeem registreert de abonnee als aangemeld) |
| ![[Pasted image 20241012120647.png]] | Decision node | Je neemt een alternatief pad afhankelijk van de beslissing.                                  |
| ![[Pasted image 20241012120641.png]] | Merge node    | Je voegt twee paden samen in één pad (flow)                                                  |
| ![[Pasted image 20241012120715.png]] | Final node    | Het einde van een pad (+ mogelijke acties genomen na einde)                                  |

## Testscenarios
### Nut
Je wil zeker zijn dat de software doet wat jij verwacht, dus gaan we de software testen.
- Hieruit kunnen we ook alternatieve verlopen opstellen bij mogelijke ongeldige uitvoering van programma

![[Pasted image 20241012121716.png]]

### Tabel
Om de testen te documenteren gaan we die in een tabel plaatsen met de vast structuur:
- Naam
- Activiteiten
- Testcase
- Data
- Verwacht resultaat
- Gekregen (reëel) resultaat
- Status

**Goede testcase**

| Naam      | Acitiviteiten                                       | Testcase                                                   | Data                                                  | Verwacht       | Reëel          | Status |
| --------- | --------------------------------------------------- | ---------------------------------------------------------- | ----------------------------------------------------- | -------------- | -------------- | ------ |
| Aanmelden | 1. Aanmelden kiezen<br>2. Login en paswoord ingeven | Bestaande abonnee:<br>- Geldige login<br>- Geldig paswoord | gebruiker: abonnee@gmail.com<br>paswoord: abonnee1234 | login geslaagd | login geslaagd | OK!    |

**Slechte testcase**

| Naam      | Acitiviteiten                                       | Testcase                                                     | Data                                                       | Verwacht                   | Reëel          | Status   |
| --------- | --------------------------------------------------- | ------------------------------------------------------------ | ---------------------------------------------------------- | -------------------------- | -------------- | -------- |
| Aanmelden | 1. Aanmelden kiezen<br>2. Login en paswoord ingeven | Onbestaande abonnee:<br>- Geldige login<br>- Geldig paswoord | gebruiker: niet-abonnee@gmail.com<br>paswoord: abonnee1324 | foutmelding foutieve login | login geslaagd | NIET OK! |
# Bronnen
---
- [Slides - Chamilo Leerpaden](https://chamilo.hogent.be/index.php?application=Chamilo%5CApplication%5CWeblcms&go=CourseViewer&course=62361&tool=LearningPath&tool_action=ComplexDisplay&publication=2379863&preview_content_object_id=4839204&learning_path_action=Viewer&child_id=143859)
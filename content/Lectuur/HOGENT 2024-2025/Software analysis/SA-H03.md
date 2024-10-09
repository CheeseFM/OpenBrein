---

---
# Doelstellingen
---
- Nut kennen van een behoeftenanalyse
- Verschillende soorten behoeften kunnen benoemen en uitleggen
- Nut kennen van een usecase diagram

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

# Bronnen
---
- [Slides - Chamilo Leerpaden](https://chamilo.hogent.be/index.php?application=Chamilo%5CApplication%5CWeblcms&go=CourseViewer&course=62361&tool=LearningPath&tool_action=ComplexDisplay&publication=2379863&preview_content_object_id=4839204&learning_path_action=Viewer&child_id=143859)
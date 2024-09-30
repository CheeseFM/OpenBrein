# Doelstellingen
---
- Bouwen van een databank
- Entiteit(type)
- Attribuut(type)
- Relatie(type)

# Notities
--- 
## Ontwerpen van databank
Dit vertrekt vanuit de bedrijfsprocessen (bv. Maken van facturen, uurroosters, voorraadbeheer, ...) en bestaat uit 4 fases

![[Pasted image 20240927112344.png]]

### F1: Verzamelen en analyseren
De stappen en benodigde data van bedrijf begrijpen, wat nemen we eigenlijk op?
- Door: Interviews

Vragen:
- Welke data moet in de databank worden opgenomen? 
- Wat is de betekenis en context van alle data, symbolen, gebruikte coderingen?
- Hoe zal de data worden verwerkt? 
- Wat is de beoogde functionaliteit?
- Waarvoor zal de data gebruikt worden?

#### Voorbeeld
We willen info opslaan over schilderijen, schilders en musea.
- Relevante data is schilderijnaam, waarde van een schilderij, voor-en familienaam van de schilder
- Er moeten schilderijen kunnen toegevoegd worden, het schilderij verandert van museum, ...
- Het moet mogelijk zijn om een overzicht te krijgen van de schilderijen. In hoofdzaak moet het mogelijk zijn te rapporteren welke musea welke schilderijen in hun bezit hebben, ...

### F2: Conceptueel ontwerp
De abstractie van de data en de onderlinge verbanden, doorgaans een grafische representatie –basis voor communicatie en discussie tussen de gebruiker van het bedrijfsproces en de databank-ontwerper.
- moet voldoende formeel en ondubbelzinnig zijn voor de ontwerper
- moet gebruiksvriendelijk zijn

Dit gebeurt onafhankelijk van enig databankmodel of applicatie. Anders te vroeg gekoppeld aan een bepaald databankmodel of een bepaalde applicatie.

#### Voorbeeld
We willen info opslaan over schilderijen, schilders en eigenaars.
- De data zal worden georganiseerd rond de centrale concepten ‘SCHILDERIJ’, ‘SCHILDER' en ‘MUSEUM‘
	- SCHILDERIJ: naam, kunststroming waartoe het schilderij behoort, gebruikte verftechniek, ....
	- SCHILDER: naam, nationaliteit, .......
	- MUSEUM: naam, plaats, land......

### F3: Logisch ontwerp
Type databank (Relationeel, hiërarchische, ...) beslissen maar product ligt niet vast (MySQL, Microsoft, ...)

#### Voorbeeld
We kiezen voor een relationele databank omdat we enkel met verwante data werken (schilder <> schilderij <> museum)
- De centrale concepten ‘SCHILDERIJ’, ‘SCHILDER’ en ‘MUSEUM’ worden omgezet en zullen later evolueren naar tabellen.

### F4: Fysiek ontwerp
De implementatie van de vorige stappen, kiest het product, implementeert logisch model, performantie checken.

## Entity Relationship Diagram (ERD)
Het ERD is één van de populairste voorstellingswijzen voor het conceptueel gegevensmodel.

### Entiteitstype
Iets dat bestaat in de echte wereld, abstract of fysiek.
- bv. SCHILDERIJ, TENTOONSTELLING, CURSUS, AUTO
- is ondubbelzinnig gedefinieerd voor een bepaalde groep gebruikers.
- karakteriseert een collectie van entiteiten (bv. AUTO = Entiteitstype - Volkswagen Golf = Entiteit)
- Heeft een naam, inhoud en is identificeerbaar

### Attribuuttype
Een karakteristiek van een entiteitstype, ze beschrijft een entiteitstype
- bv. Bij entiteit 'SCHILDERIJ' hoort de attribuut 'naam' om de naam te omschrijven.

![[Pasted image 20240930201955.png]]
#### Enkelvoudige vs. samengestelde attribuuttypes
- Samengestelde: het attribuuttype kan nog opgesplitst worden. (bv. 'ADRES' in 'POSTCODE', 'STAD', 'STRAAT', ...)
- Enkelvoudige: het attribuuttype is niet meer opsplitsbaar.

#### Enkelwaardige vs. meerwaardigeattribuuttypes
- Enkelwaardig: attribuuttype heeft maar één waarde (bv. 'geboortejaar', 'jaar overlijden', ...).
- Meerwaardig: attribuuttype kan één of meerdere waarden bevatten (bv. 'talen', 'postcode', ...).

#### Afgeleide attribuuttypes
Waarde van attribuut wordt berekend tijdens het weergeven. 
- Opslaan van geboortejaar i.p.v. leeftijd

Zo moeten we de database niet constant aanpassen wanneer gebruiker verjaart (mogelijkheid op fouten)

#### Kandidaatsleutelattributen
Alle unieke attribuuttypes die een entiteittype anders maakt van andere entiteittypes

Twee types:
- Enkelvoudige kandidaatsleutelattributen: Een entiteittype kan worden onderscheden door een enkele attribuuttype (vb. denk maar aan een uniek stamnummer)
- Samengestelde kandidaatsleutelattributen: Door meerdere attribuuttypes samen te voegen kan het entiteittype onderscheden worden (vb. datum en naam voor een activiteit)

### Relatietype
Entiteittypes kunnen onderlinge verbanden met elkaar of zichzelf hebben, dit noemen we relatietypes.
- bv. Een schilderij is geschilderd door een schilder
- Er kunnen één, twee of meer entiteittypes betrokken zijn in een relatie (bv. Een schilderij kan door meerdere schilders)

#### Unaire relatie
Één entiteit kan verwant zijn met een andere entiteit van hetzelfde type (bv. Schilder1 is een afstammeling van Schilder2)
![[Pasted image 20240927113821.png]]
#### Binaire relatie
Twee entiteiten van verschillende entiteitstypes kunnen verwant met elkaar zijn. (bv. Museum1 en Schilderij1) 

![[Pasted image 20240930202546.png]]

#### Relatie attributen 
Relaties kunnen ook attributen hebben. 
- bv. een museum kocht een schilderij op een 'datum' voor een 'prijs'. 

![[Pasted image 20240930202754.png]]
### Cardinaliteiten
Elk relatietype kan worden gekarakteriseerd in termen van cardinaliteit. Het is het aantal entiteiten dat kan deelnemen aan de relatie.
- bv. Een VIDEO op YouTube kan maar door één KANAAL tegelijk geüpload worden, maar een KANAAL kan meerdere VIDEO's uploaden op YouTube

#### Voorbeeld: Maximum en minimumcardinaliteit
De max- en minimumcardinaliteit drukt dit uit in symbolen: 
![[Pasted image 20240930204437.png]]
* Maximumcardinaliteit:
	* Kan één GEBRUIKER meer dan één VIDEO geüpload hebben? Ja => N
	* Kan één VIDEO geüpload zijn door meer dan één GEBRUIKER? Neen => 1
* Minimumcardinaliteit
	* Moet één GEBRUIKER ten minste één VIDEO geüpload hebben? Neen => 0
	* Moet één VIDEO geüpload zijn door ten minste één GEBRUIKER? Ja => 1

# Bronnen
---
- [Powerpoint - Chamilo](https://chamilo.hogent.be/index.php?go=CourseViewer&application=Chamilo%5CApplication%5CWeblcms&course=59117&tool=Document&publication_category=335960&browser=Table&tool_action=Viewer&publication=2396366)
- [Oefeningen - Github](https://github.com/HOGENT-Databases/DB1-Workshops/blob/master/workshops/01-conceptueel_model/exercises.md)
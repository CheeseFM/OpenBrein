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

# Bronnen
---
- 
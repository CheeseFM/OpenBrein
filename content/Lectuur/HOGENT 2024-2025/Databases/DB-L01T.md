# H1: Inleiding
Databanktechnologie wordt gebruikt bij opslagen terug ophalen van informatie (data)
(bv. Sensoren, biometrie, GPS, loonberekening, ...)

Probleem:
![[Pasted image 20240927104501.png]]
- Data zit overal en geïsoleerd per applicatie
- Zelfde data staat op verschillende plaatsen
- Data zit op allemaal verschillende plaatsen in het geheugen 
  ![[Pasted image 20240927104705.png]]
- Data wordt in alle soorten vormen opgeslagen


-> Oplossing: Databanken
	"Een gedeeldeverzameling van logisch met elkaar verbonden gegevens en hun beschrijving, ontworpen om aan de informatienodenvan een organisatie te voldoen."

DBMS: Alle software nodig om de databank in te stellen (definiëren, creëren, wijzigen, beheren, gebruiken)

Tegenhanger SQL: NoSQL

RDBMS
Meest frequent gebruikte, SQL, relationeel
-> Voorbeelden: Oracle, mSQL (Microsoft), MySQL, PostgreSQL

Er zijn verschillende applicaties die communiceren met de DBMS om gebruiksvriendelijke interactie te vorderen.
![[Pasted image 20240927105229.png]]

De data-administrators (DA): zijn in een onderneming centraal verantwoordelijk zijn voor de data

Dbontwerpervertaalt: conceptueel model naar logisch en intern model

DBA (databankbeheerder of database administrator): implementeert en monitort DB

Applicatieontwikkelaar: schrijft databankprogramma’s/databankapplicaties 

Eindgebruikers: gebruikt databankapplicaties en voert op die manier databankacties uit

Datamodel = Een schema
- Beschrijving databankstructuur
- Specificaties v/d elementen, hun relaties, beperkingen en eigenschappen
- Opgestelt tijdens ontwerp
- Wijzigt niet rap
- Opgeslagen in de cataloog

Er bestaan 3 soorten datamoddelen
![[Pasted image 20240927105950.png]]

- Conceptueel: 
	- perfecte weergave van de gegevensvereisten van de ‘business
	- algemene beschrijving gegevenselementen, kenmerken en relaties
- Logisch
	- vertaling conceptueel gegevensmodel naar het type databankmodel
	- nog altijd verstaanbaar voor niet IT-ers, maar leunt al dichter aan bij hoe de data fysiek zal opgeslagen worden
- Fysiek
	- Geeft informatie over fysieke opslag (Waar, wat, indexen)
	- Afhankelijk van DBMS

-> Bv. 
	Kunstenaar (naam, geboorteplaats, geboortedatum)
	Kunstwerk (naam, museum, jaar)
	Museum (naam, stad)

![[Pasted image 20240927105708.png]]
De drie lagen architectuur
-> Doel: Verkrijgen van dataonafhankelijkheid (minimale wijzigingen)
- Externe laag: externe datamodel, bevat views–Deelverzameling van het logisch model–Voor een specifieke doelgroep.–Wordt gebruikt om de toegang tot gegevens te controleren en beveiliging af te dwingen
- Middelste laag: conceptuele / logische laag
- Interne laag: interne datamodel,  legt vast hoe data fysisch georganiseerd en opgeslagen wordt

![[Pasted image 20240927110443.png]]

Gegevensonafhakelijkheid: Men wil dat wijzigingen niet te veel impact hebben op de applicaties

Ongestructureerde en gestructureerde gegevens:
- Ges. : 
	- Kunnen in een logisch datamodelvoorgesteld worden
	- Integriteitsregels kunnen opgesteld en afgedwongen worden
	 -> naam, geboortejaar, geboorteplaats van een kunstenaar
- Ong.
	- kunnen niet op een zinvolle manier worden geïnterpreteerd door een applicatie 
	-> gesprekken op socialmedia, e-mails
- Semi-ges
	- De structuur van de gegevens is zeer onregelmatig of zeer wisselend.
	-> webpagina's van individuele gebruikers op een socialmedia platform, cv-documenten in een personeelsdatabank

Redundante gegevens:
- Soms worden databanken gedupliceerd uit veiligheidsoverwegingen (of zelfs performantie)
- (DBMS is verantwoordelijk voor synchronisatie)

Integriteitsregels: Houd foute ingaves tegen en heeft errorcodes
-> bv. Je kan iet in de toekomst geboren zijn, een geheel getal is geen 'Jan', ...

Cataloog: Schatkist van DBMS
- Bevat definities en omschrijving van elementen (metdata)
- Definitie logisch gegevensmodel en intern gegevensmodel
- Opslagplaats voor integriteitsregels en andere informatie (zoals gebruikers.)

# H2: Conceptueel model
Het ontwerpen van een databank bestaat uit 4 fases:
- Fase1 = Verzamelen en analyseren van de functionele/ inhoudelijkevereisten
- Fase2 = Conceptueelontwerp
- Fase3 = Logischontwerp
- Fase4 = Fysiekontwerp

Dit vertrekt vanuit de bedrijfsprocessen (bv. Maken van facturen, uurroosters, voorraadbeheer, ...)

![[Pasted image 20240927112344.png]]

## Fase 1: Verzamelen van info
De stappen en benodigde data van bedrijf begrijpen, wat nemen we eigenlijk op?
- Door: Interviews

Vragen:
- Welke data moet in de databank worden opgenomen? 
- Wat is de betekenis en context van alle data, symbolen, gebruikte coderingen?
- Hoe zal de data worden verwerkt? 
- Wat is de beoogde functionaliteit?
- Waarvoor zal de data gebruikt worden?

## Fase 2: Conceptueel ontwerp
- is de abstractie van de data en de onderlinge verbanden 
- moet voldoende formeel en ondubbelzinnig zijn voor de DBontwerper.
- moet gebruiksvriendelijk zijn
- doorgaans een grafische representatie –basis voor communicatie en discussie tussen de gebruiker van het bedrijfsproces en de databankontwerper.
- gebeurt onafhankelijk van enig databankmodel of applicatie. Anders te vroeg gekoppeld aan een bepaald databankmodel of een bepaalde applicatie.

## Fase 3: Logisch ontwerp
Type databank (Relationeel, hiërarchische, ...) beslissen maar product ligt niet vast (MySQL, Microsoft, ...)

## Fase 4: Fysiek ontwerp
De implementatie van de vorige stappen, kiest het product, implementeert logisch model, performantie checken.

## Entity Relationship diagram
is éénvan de populairstevoorstellingswijzenvoorhet conceptueelgegevensmodel.

Bouwstenen:
- Entiteitstypes (& Entiteiten)
	- Voorstelling van de reële wereld (kan abstract als fysiek zijn) = indentificeerbaar
	- Ondubbelzinnig
	- Heeft een naam en **inhoud**
	- Entiteitstypes: Gebruiker, Entiteiten: bv. Jan
- Attribuuttypes (& Attributen)
	- Een beschrijving van een entiteitstype
	- Heeft een speicifeke waarde voor elk attribuuttype 
	- Bv. Een email van de Gebruiker 
- Relatietypes (& Relaties)
	- Wordt kenemerkt door een naam
	- IS een verzameling van relaties tussen instanties van één of meer verschillende entiteittypes. 
	- bv. een SCHILDERIJ werd geschilderd door één of meerdere SCHILDER(s)
	- Geeft een graad van relatietype: unair, binair (aantal entiteitstypes)
	- Geeft een rol (beschrijft de rol van de relatie)![[Pasted image 20240927113821.png]]


Kandidaatsleutelattribuuttype: Unieke attributen van een entiteit (bv. bij Locatie de GIS coordinaten)
- Kan uit meerdere attributen bestaan (bv. bij klas heb je het jaar de richting en groep nodig om een unieke sleutel te hebben)
- Maar kan ook meerdere sleutels hebben (bv. beide email en stamnummer zijn APARTE unieke sleutels)

Opstellen Conceptueel model (ERD)
1. Entiteitstypes opstellen
2. Attributtypes geven aan entiteit
3. Relaties tussen entiteitstypes maken
4. Cardinaliteit van relaties noteren

# Oefeningen
## Voorbeelden
Je wil een activiteitendatabank creëren
- Elke ACTIVITEIT krijgt een uniek volgnummer, een datum, een naam, een startuur, vermoedelijk einduur, een korte omschrijving en een deelnamekost.
- Elke ACTIVITEIT start en eindigt op een bepaalde LOCATIE. Een LOCATIE heeft unieke GIScoördinaten, een naam en een stad. 

Welke entiteittypes en attribuuttypes herken je?: 
- Locatie
- Activiteit

## Individueel
https://github.com/HOGENT-Databases/DB1-Workshops


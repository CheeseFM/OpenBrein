# Doelstellingen
---
- Definities
- Toepassingen
- Gegevensmanagement
- Geschiedenis
- Architectuur
- Bouwen van een database

# Notities
--- 
## Inleiding
Wie / Wat gebruikt databanktechnologie? 
- Traditionelebedrijfsapplicaties(loonberekening, tijdsregistratie, ...)
- Biometrischeapplicaties(vingerafdrukken, resultatenscans)•Sensor-applicaties(in kerncentrales, ...)
- GIS applicaties(geografischeinformatiesystemen(Google Maps, ...)
- Big Data applicaties(Walmart, ...)
- ‘Internet of Things (IoT)’ applicaties(Telematics, ...)

-> Alle systemen die geordend gegevens terughalen en opslaan. 

## Gegevensmanagement via bestanden
Elke toepassing definieert zijn eigen bestanden
- bv. een klant.txt voor klantenbeheer, clienteel.xls voor facturatie, ...

### Probleem
Dit leidt ernaar dat:
- Data overal zit en geïsoleerd per applicatie
- Zelfde data staat op verschillende plaatsen
- Aanpassingen (bv. naam) worden niet doorgegeven naar alle systemen
- Data wordt op verschillende manieren opgeslagen en kan niet overgebracht worden van één naar een ander programma

![[Pasted image 20240927104501.png]]
### Oplossing
Een systeem met gedeelde opslag en gelijkmatige, logische opbouw.

## Begrippen
### Databanken
Een gedeeldeverzameling van logisch met elkaar verbonden gegevens en hun beschrijving, ontworpen om aan de informatienodenvan een organisatie te voldoen

### DBMS
(= Database Management System) Een verzameling computerprogramma’s nodig om een databank te definiëren, creëren, wijzigen, beheren en gebruiken.

### Databanksysteem
De effectieve databank gekoppeld met de software nodige om ze te gebruiken (DBMS).

![[Pasted image 20240930184959.png]]
### Toepassingsprogramma's
Toepassingssoftware zorgt voor de verbinding (tussen gebruiker) met de DBMS. 
- DBMS verzorgt de toegang tot de relevante databanken. 

### Databank gebruikers
- De data-administrators (DA): zijn in een onderneming centraal verantwoordelijk zijn voor de data
- Dbontwerpervertaalt: conceptueel model naar logisch en intern model
- DBA (databankbeheerder of database administrator): implementeert en monitort DB
- Applicatieontwikkelaar: schrijft databankprogramma’s/databankapplicaties 
- Eindgebruikers: gebruikt databankapplicaties en voert op die manier databankacties uit

### RDBMS
Een DBMS voor relationele databanken
- Maaktgebruikvan het relationeelgegevensmodel(met tabellen, rijen, kolommen, ...)
- Momenteelhet meestfrequent gebruiktin de bedrijfswereld
- Gebruikt 'SQL' (beschrijvend en gebaseerd op resultset)

#### Voorbeelden van RDBMS'
- Oracle: Het grootste en eerste commerciële RDBMS. Wordt gebruikt in veel van 's werelds grootste bedrijven
- Microsoft SQL server: RDBMS-product van Microsoft. Leverbaar in vele versies voor verschillende bedrijfsbehoeften.
- MySQL: Het populairste open source RDBMS. Sinds 2010 wordt het ontwikkeld, gedistribueerd en ondersteund door Oracle Corporation.
- PostgreSQL: Ook een gratis, open source RDBMS. Sommigen zouden zeggen krachtiger dan MySQL

## Databankmodel
![[Pasted image 20240927105950.png]]
Bestaat uit meerdere datamodellen die de gegevens weegeven met hun kenmerken en relaties. Verschillende types mogelijk.
- Beschrijving databankstructuur
- Specificaties v/d elementen, hun relaties, beperkingen en eigenschappen
- Opgestelt tijdens ontwerp
- Wijzigt niet rap
- Opgeslagen in de cataloog

### Conceptueel datamodel
Weergave en eerste optekening van hoe de databank in het  algemeen in elkaar zit.
- Gebruikt door: IT en Zakelijk personeel
- Voorstellng: (E)ERD diagram

### Logisch datamodel
Vertaling in een specifiek type databankmodel. V
- Hiërarchisch
- Object georiënteerd
- Relationeel
- ...

### Fysiek datamodel
Geeft informatie over fysieke opslag Heel technisch.
- Waar worden welke gegevens opgeslagen
- Wat is de grootte van de datavelden
- Indexen die het ophalen versnellen

## Architectuur databanken
![[Pasted image 20240927110443.png]]
### 1 laag
Alle functies van de database en DBMS draaien op één computer.

### 2 lagen
- De presentatie en bewerkingen gebeurt via externe software (bv. applicatie, website, ...) = DBMS
- De database (opslag) zelf zit apart (draaiende op een server)
- 
### 3 lagen
- De presentatie gebeurt via externe software (bv. applicatie, web, ...)
- Bewerkingen gebeuren op een server
- De database draait als een apart applicatie (of zelfs aparte opslagserver)

## Gegevens op een databank
### Gegevensonafhankelijkheid
Wijzigigngen aan de gegevensbeschrijvingen hebben weinig tot (meestal) geen impact op applicaties.

#### Fysieke gegevensonafhankelijkheid
Wijzigingen van de opslagspecificaties hebben geen invloed op het logisch model noch op de applicatie

#### Logische gegevensonafhankelijkheid
Minimale aanpassingen aan de applicaties bij wijzigingen aan het logisch model.

### Structuur gegevens
#### Gestructureerde gegevens
- Kunnen in een logisch datamodelvoorgesteld worden
- Integriteitsregels kunnen opgesteld en afgedwongen worden
- Vereenvoudigen, opzoeken, verwerken en analyseren

-> Voorbeelden: naam, geboortejaar, geboorteplaats van een kunstenaar

#### Ongestructureerde gegevens
kunnen niet op een zinvolle manier worden geïnterpreteerd door een applicatie
-> Voorbeelden: gesprekken op sociale media, e-mails

#### Semi-gestructureerdegegevens
De structuur van de gegevens is zeer onregelmatig of zeer wisselend.
-> Voorbeelden: webpagina's van individuele gebruikers op een sociaal media platform, cv-documenten in een personeelsdatabank

### Redundante gegevens
Overbodige gegevens voor mocht de primaire opslagoplossing falen. (bv. Harde schijf kapot)
-> bv. Soms worden databanken gedupliceerd uit veiligheidsoverwegingen of omwille van performantie

### Integriteitsregels
Vastleggen hoe gegevens worden opgeslagen (syntactische regel)
- Worden gedefinieerd op basis van het conceptueel model en opgeslagen in de catalog.
-> bv. customerIDis een geheel getal (100, 200, niet 2.A), Eenheidsprijs > 0; geboortedatum > niet vandaag

### Cataloog
Schatkist van DBMS, bewaart:
- Definities en beschrijving van de elementen  in de DB (= metadata) 
- Definities logisch gegevensmodel en intern gegevensmodel
- Opslagplaats voor integriteitsregels, en andere informatie zoals gebruikers, ...

Zorgt voor synchronisatie en consistentie van de gegevensmodellen

# Bronnen
---
- [Powerpoint - H1-Databanken-Inleiding](https://chamilo-downloads.hogent.be/Chamilo/Libraries/Resources/Javascript/Plugin/PDFJS/web/viewer.html?file=https%3A%2F%2Fchamilo-downloads.hogent.be%3Fapplication%3DChamilo%255CCore%255CRepository%26go%3DDocumentDownloader%26object%3D8493612%26DownloadHost%3D1%26security_code%3Dd285fc2760d8b22607523c11428cee15db3c0c0c%26display%3D1%26saveName%3DDB%2BH1%2B-%2BInleiding%2B-%2Bdatabanken%2Bgekaderd.pdf)
- https:/www.guru99.com/nl/dbms-architecture.html
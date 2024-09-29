# Doelstellingen
---
- Data, het virtuele goud
- Toestanden van data
- CIA-driehoek
- De cybersecurity kubus

# Notities
--- 
## Data, virtueel goud
Introductiestuk en besef laten vallen hoe waardevol data is en hoe onveilig jouw huidige 'data' situatie is.

### Uitleg titel

| Vroeger (Goud)                     | Vandaag (Data)                               |
| ---------------------------------- | -------------------------------------------- |
| Banken worden beroofd              | Grote bedrijven worden gehackt               |
| Goudtransporten wordan aangevallen | Netwerken worden afgeluisterd en aangevallen |
| Mensen worden overvallen           | Mensen worden gephisht, databreuken, ...     |
### Redenen om te 'hacken'
- Geld
- Verveling
- Wraak (al dan niet politiek)
- Aanzien (al dan niet politiek)

### Industriële data
Niet enkel jou data is interessant voor hackers, ook die van bedrijven. 
- Personeel- & gebruikersbestanden (bv. Inloggegevens van sociale media)
- Industriële netwerken (bv. Elektriciteitsnet)

### Persoonlijk data
Bestaat in verschillende vormen en soorten, al dan niet openbaar:
- Private gegevens: chat, e-mail, foto's, ...
- Medisch: aandoeningen, ziektegeschiedenis, medicatie, ...
- Data op je toestellen
- Financiën: bankrekeningen, overschrijvingen, ...
- School: punten, verslagen, feedback, ...
- Overheid: rechtszaken, boetes, eigendom, ...

#### Waar zit die data?
Overal, grotendeels bedrijven (bv. Google: Google Drive, Microsoft: Outlook & 365, Meta: Facebook)

### Typische aanvalsdomeinen
- Productie
	- Branchecontroles
	- Automatisering
	- SCADA (Supervisory Control And Data Acquisition)
- Energieproductie en -distributie
	- Elektrische distributie en Smart Grid
	- Olie en gas
- Communicatie
	- Telefoon
	- E-mail
	- Berichten
- Transportsystemen
	- Vliegreizen
	- Het spoor
	- Op de weg

## Toestanden van data
Om data te kunnen beveiligen bekijken we de drie verschillende toestanden waarin data zich kan bevinden. Hieruit vertrekken we telkens met een unieke toepasselijke beveiligingsmethode.

### Data in rust
Gegenvens opgeslagen op opslagapparaten die (tijdelijk) niet gebruikt worden door personen of processen.

#### Waar
Opslagapparaten kunnen lokaal (harde schijf, USB-stick, ...) of op afstand aangesloten zijn (Google Drive, NAS, ...) en daarop data (in rust) bevatten.

#### Risico

|          | Data gaat verloren (Beschikbaarheid) | Data wordt gestolen (Vertrouwelijkheid) | Data wordt aangepast (Integriteit)            |
| -------- | ------------------------------------ | --------------------------------------- | --------------------------------------------- |
| Fysiek   | Laptop achtergelaten trein           | Harde schijf of USB-stick gestolen      | Harde schijf valt en werkt deeltelijks        |
| Digitaal | Fout verwijderen van bestand         | Databank met gebruikersinfo gelekt      | Malware op PC en bestanden worden versleuteld |

### Data tijdens verzenden
Gegevens die in overgang van één plek naar de andere is.
- Één van de grootste uitdagingen om te beschermen.

#### Hoe
- Sneakernet: Fysiek transporteren van opslagapparaten via harde schijf en iemand of iets die van de ene plek naar de andere wandelt.
- Bedraad: Via netwerkkabels (koper, fiber) data overbrengen
- Draadloos: via elektromagnetische golven (WiFi, Bluetooth, LTE, ...) gegevens doorsturen

#### Risisco

|          | Data wordt afgeluisterd, gekopïeerd en/of gestolen (Vertrouwelijkheid) | Data wordt aangepast (Integriteit)                       | Data wordt verhindert (Beschikbaarheid)                                   |
| -------- | ---------------------------------------------------------------------- | -------------------------------------------------------- | ------------------------------------------------------------------------- |
| Fysiek   | Internet kabel in twee hakken en transmissie aflezen                   | Harde schijven (sneakernet) stelen en aanpassen          | Sterk elektromagnetische veld uitsturen die wifi verbindingen overweldigd |
| Digitaal | Draadloze signalen afluisteren                                         | Wifi punt nadoen en eigen gegevens toevoegen aan uitvoer | Bestelwagen (sneakernet) in de vaart duwen                                |
### Data tijdens verwerken
Gegevens die worden ingevoerd, aangepast, berekend of in uitvoer zijn.

#### Risico

|          | Data wordt afgeluisterd, gekopïeerd en/of gestolen (Vertrouwelijkheid) | Data wordt aangepast (Integriteit)                                                      | Data wordt verhindert (Beschikbaarheid)                    |
| -------- | ---------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | ---------------------------------------------------------- |
| Fysiek   | Iemand kijkt af tijdens dat je je passwoord ingeeft                    | Hardeschijf gaat kapot en je bestanden worden door elkaar geschud.                      | Netwerkkabel wordt uitgetrokken                            |
| Digitaal | Keylogger op toetsenbord stuurt je toetsen (en dus passwoord) door     | Malware op je PC verandert je factuur naar hun IBAN nummer i.p.v. je energieleverancier | Iemand bombardeert je router / server met pakketten (DDOS) |

## De CIA driehoek
Data kan op verschillende manieren aangevallen worden.
- Confidentiality (nl. Vertrouwelijkheid): Wie mag het zien?
- Integrity (nl. Integriteit): Klopt de data wel, juiste persoon, ... ?
- Availability (nl. Beschikbaarheid): Kan ik er aan wanneer ik het nodig heb?

-> Zie Tabellen voor voorbeelden (tussen haakjes)

## Cybersecurity kubus 


# Bronnen
---
- [Slides - Hoofdstuk 1: Data, het virtuele goud](https://hogenttin.github.io/cybersecurity-slides/h1.html?print-pdf&showNotes=separate-page#/)
#kladversie 

📅 Aangemaakt: 01-10-2024

---
Om data te kunnen beveiligen bekijken we de drie verschillende toestanden waarin data zich kan bevinden. Hieruit vertrekken we telkens met een unieke toepasselijke beveiligingsmethode.

## Data in rust
Gegenvens opgeslagen op opslagapparaten die (tijdelijk) niet gebruikt worden door personen of processen.

### Waar
Opslagapparaten kunnen lokaal (harde schijf, USB-stick, ...) of op afstand aangesloten zijn (Google Drive, NAS, ...) en daarop data (in rust) bevatten.

### Risico

|          | Data gaat verloren (Beschikbaarheid) | Data wordt gestolen (Vertrouwelijkheid) | Data wordt aangepast (Integriteit)            |
| -------- | ------------------------------------ | --------------------------------------- | --------------------------------------------- |
| Fysiek   | Laptop achtergelaten trein           | Harde schijf of USB-stick gestolen      | Harde schijf valt en werkt deeltelijks        |
| Digitaal | Fout verwijderen van bestand         | Databank met gebruikersinfo gelekt      | Malware op PC en bestanden worden versleuteld |

## Data tijdens verzenden
Gegevens die in overgang van één plek naar de andere is.
- Één van de grootste uitdagingen om te beschermen.

### Hoe
- Sneakernet: Fysiek transporteren van opslagapparaten via harde schijf en iemand of iets die van de ene plek naar de andere wandelt.
- Bedraad: Via netwerkkabels (koper, fiber) data overbrengen
- Draadloos: via elektromagnetische golven (WiFi, Bluetooth, LTE, ...) gegevens doorsturen

### Risisco

|          | Data wordt afgeluisterd, gekopïeerd en/of gestolen (Vertrouwelijkheid) | Data wordt aangepast (Integriteit)                       | Data wordt verhindert (Beschikbaarheid)                                   |
| -------- | ---------------------------------------------------------------------- | -------------------------------------------------------- | ------------------------------------------------------------------------- |
| Fysiek   | Internet kabel in twee hakken en transmissie aflezen                   | Harde schijven (sneakernet) stelen en aanpassen          | Sterk elektromagnetische veld uitsturen die wifi verbindingen overweldigd |
| Digitaal | Draadloze signalen afluisteren                                         | Wifi punt nadoen en eigen gegevens toevoegen aan uitvoer | Bestelwagen (sneakernet) in de vaart duwen                                |
## Data tijdens verwerken
Gegevens die worden ingevoerd, aangepast, berekend of in uitvoer zijn.

### Risico

|          | Data wordt afgeluisterd, gekopïeerd en/of gestolen (Vertrouwelijkheid) | Data wordt aangepast (Integriteit)                                                      | Data wordt verhindert (Beschikbaarheid)                    |
| -------- | ---------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | ---------------------------------------------------------- |
| Fysiek   | Iemand kijkt af tijdens dat je je passwoord ingeeft                    | Hardeschijf gaat kapot en je bestanden worden door elkaar geschud.                      | Netwerkkabel wordt uitgetrokken                            |
| Digitaal | Keylogger op toetsenbord stuurt je toetsen (en dus passwoord) door     | Malware op je PC verandert je factuur naar hun IBAN nummer i.p.v. je energieleverancier | Iemand bombardeert je router / server met pakketten (DDOS) |

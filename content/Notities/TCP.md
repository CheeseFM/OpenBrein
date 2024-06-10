#uitgewerkt 

🗂️ Onderwerp: [[Basis van netwerken]]
🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 07-06-2024

---
Transmission Control Protocol (Verbinding-georiënteerd protocol) biedt tegenover [[UDP]] meer betrouwbaarheid. Ze geeft telkens een check of de data juist toegekomen is nadat ze hem verstuurt. Ook bij het openen en sluiten van een verbinding zal ze een bepaalde hand shake doen om te garanderen dat er effectief een ontvanger aan de andere kant staat.

# Verbinden via TCP
## Opstellen
Om een verbinding op te stellen gebruiken we een 'Three-way handshake', ze gaat als volgt:
* Verzendende host stuurt een 'SYN', een synchronisatie bericht om de communicatie te starten.
* De ontvangende host antwoordt met een 'SYN-ACK', een erkenning dat het bericht ontvangen is waarna ze nog eens kijkt of de verzendende host bereikbaar is door een synchronisatie bericht te sturen.
* De verzendende host stuurt een erkenning (ACK) en de verbinding is opgesteld.

## Communiceren
Bij elke overdracht van data heeft de ontvangende host ([[Server]]) erkenning aan de verzendende host (Client) vooraleer de client het volgende bericht verstuurd.

Als een bericht fout ontvangen wordt dan vraagt de ontvangende host (Server) om het bericht opnieuw te sturen. Dit gebeurt a.d.h.v. een '[[Checksum]]'.

![[TCP Sequence and Acknowledgement Numbers Explained – MadPacketsVisit.png]]

## Afbreken
Men moet een verbinding afbreken a.d.h.v. een speciaal bericht.
* De verzendende host stuurt een 'FIN' 
* De ontvangende host bevestigt met een 'ACK'
* De ontvangende host stuurt een 'FIN'
* De verzendende host bevestigt met een 'ACK'

De communicatie moet met een 'Four-way handshake' worden beëindigt om te voorkomen dat de ontvangende of verzendende host niet oneindig zit te wachten op het volgende bericht (te sturen).

Wanneer de communicatie voor een lange tijd stil valt zal er een 'time-out' klok na een (ingestelde) periode de verbinding automatisch verbreken.
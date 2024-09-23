#uitgewerkt 

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 17-06-2024

---
# Waarom wil je veilige websites?
## Opnieuw afluisteraars?
Yep! Grotendeels. Een afluisteraar kan bij onveilige websites gewoon je wachtwoord zien. (mochten ze een MitM aanval doen)

## Een ander antwoord
Dezelfde technologie die ons veilige websites geeft, kijkt ook of de gegevens correct worden ontvangen. 
* Wat tussen de website en gebruiker wordt gedeeld kan niet door een oplichter worden veranderd.

Hiervoor gebruiken we de basisprincipes van [[Versleuteling|versleuteling]].

![[@ Assets/Foto's/Veilige websites/1.png]]
## Een website doet zich voor als een ander
Om paswoorden, identiteiten, … te stelen kan een website zich exact voordoen als een ander.
* Iemand kan ervoor zorgen dat de ing.com die jij wilt bereiken niet de `ing.com` in realiteit is. We willen dus een check uitvoeren om zeker te zijn dat dit klopt.

![[@ Assets/Foto's/Veilige websites/2.png]]
Hiervoor hebben we "certificaten" die je vertellen welke websites écht zijn en welke van oplichters.

>[!info]
>De naam voor de veilige verbinding die alle veilige principes gebruikt noemt men HTTPS. Het staat voor de veilige versie van HTTP, de ‘S’ staat voor secure.

# Hoe werken veilige websites?
## HTT.. wadde?
### [[Web Development]]
HTML of HyperText Markup Language is de taal gebruikt om websites te maken.
* Het is minder een programmeertaal en meer een soort formatering. Net zoals je bv. in LaTeX, Markdown of Rich Text zou schrijven.

### [[HTTP]]
HTTP of HyperText Transfer Protocol is de set instructies om websites op het wijde web te tonen.
* Het neemt HTML en stuurt ze letterlijk in tekstvorm door naar alle gebruikers.

## Encryptie
Een groot deel van websites veilig maken ligt bij de encryptie. Zoals we al eerder gezien hebben bij berichten wordt de HTML in tekstvorm gewoon versleuteld en doorgestuurd.
* Nu weten we al dat onze doorgestuurde paswoorden veilig zijn, maar er is nog één probleem!

![[@ Assets/Foto's/Veilige websites/4.png]]

## Certificaten
Het kan nu wel zijn dat je passwoord versleuteld wordt, maar als je deze gegevens naar een server van oplichters stuurt dan maakt het niet écht uit.
* We willen dus zeker zijn dat de infrastructuur die je contacteert gekend is en zich niet wilt voordoen als een ander. 

![[@ Assets/Foto's/Veilige websites/5.png]]

### Wat zijn certificaten?
Certificaten tonen aan dat een website betrouwbaar is en zich niet voordoet als een ander.
* Ze bevatten de naam, locatie, IP, … van degene die hem ondertekend heeft (de CA) en de server van de website die je probeert te bezoeken.
* Na het certificeren bij een CA bevatten deze certificaten ook de een versleutelde handtekening dat enkel de CA kan lezen om later te verifiëren of een certificaat van hen komt.

### De CA (Certificate authority)
De Certificate Authorities maken en beheren certificaten.
* Deze certificaten kunnen gewoon uit de duim gezogen zijn als we niemand hebben die te vertrouwen is met ze te maken. Daarom hebben we de CA

Er zijn maar een twaalftal erkende CA’s. 


## Een certificaat krijgen voor een website
### Stap 1
De webserver vraagt aan de CA een certificaat en stuurt haar public key mee.

![[@ Assets/Foto's/Veilige websites/6.png]]

### Stap 2
Het certificaat wordt versleuteld met de public key teruggestuurd naar de webserver.

![[@ Assets/Foto's/Veilige websites/7.png]]

### Stap 3
Het certificaat wordt ontcijferd met de private key van de server.

![[@ Assets/Foto's/Veilige websites/8.png]]

### Einde
Enkel deze specifieke webserver bezit het certificaat

![[@ Assets/Foto's/Veilige websites/9.png]]

## Een beveiligde verbinding met een website opzetten
Nu we een HTTPS server hebben opgezet moeten we er nog mee kunnen verbinden. 
### Stap 1
We starten communicatie met de server met een ‘Hallo’ en een aanvraag naar zijn identiteit.

![[@ Assets/Foto's/Veilige websites/10.png]]

### Stap 2
De server stuurt zijn certificaat terug
![[@ Assets/Foto's/Veilige websites/11.png]]

### Stap 3
We bekijken of het een gekende CA is en indien wel contacteren we de CA vermeld op het certificaat om te vragen of het geldig is.

![[@ Assets/Foto's/Veilige websites/12.png]]

### Stap 4
De CA kijkt of zijn handtekening hierop staat en of de webserver is wie hij zegt dat hij is en indien juist stuurt hij de oké!

![[@ Assets/Foto's/Veilige websites/13.png]]
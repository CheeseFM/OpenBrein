#uitgewerkt  

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 15-06-2024

---
# Waarom versleuteling?
## De MitM aanval
Een MitM of Man in the Middle aanval houdt in dat er tussen jou en de ontvanger iemand je berichten onderschept. 
* Het is net alsof iemand je afluistert!

![[@ Assets/Foto's/Versleuteling/4.png]]

# De gevaren van de Digitale wereld
## Achterdeur in de software
Sommige bedrijven bouwen in hun software een achterdeurtje. Zij (of de overheid) kunnen jouw berichten dan lezen.

![[@ Assets/Foto's/Versleuteling/0.png]]
## Hacken van router
Een router kan overgenomen worden en zijn verkeer kan in de gaten worden gehouden. 
![[@ Assets/Foto's/Versleuteling/1.png]]

## Aftappen van kabel
We kunnen ook fysiek een netwerkkabel in twee snijden en het verkeer aftappen. 

![[@ Assets/Foto's/Versleuteling/2.png]]

## Voordoen als ander netwerk
Een laptop-router combinatie kan gebruikt worden om zich voor te doen als een andere netwerk. Ze blokkeert de signalen van de originele router en nemen haar naam over.

![[@ Assets/Foto's/Versleuteling/3.png]]

# Hoe beschermen we dan onze berichten?
We willen dat niemand anders dan de bedoelde ontvanger ons bericht kan lezen. Maar hoe pakken we dit aan?

## Alles apart?
We kunnen inderdaad alles apart aanpakken en …
- Software gebruiken zonder achterdeur
- Onze router beter beveiligen (beter wachtwoord, geen fysieke toegang, …)
- Beschermde netwerkkabels gebruiken / kabels niet bloot in het openbaar laten liggen
- Geen openbare netwerken gebruiken

![[@ Assets/Foto's/Versleuteling/6.png]]

En hoe dan wel dit allemaal goede raad is en je dit allemaal beter ook toepast is het meer een pleister op een houten been plakken. Je pakt de oorzaak van het probleem niet aan.
* Mensen zijn koppig, ze gaan altijd andere manieren vinden om dezelfde aanval te doen op een wijze die nog niet beveiligd is.

We moeten onze berichten op één of andere manier onleesbaar maken voor iedereen behalve de ontvanger.

# Hoe gaan we versleutelen?

## Realiteit van versleuteling
Een bericht wordt niet in een doosje gestoken en dan versleuteld, in werkelijkheid gaat men het bericht ‘scramblen’, eigenlijk gewoon door elkaar schudden. 
* We doen dit wel systematisch zodat we weten hoe we het terug leesbaar maken.

Je kan dit vergelijken met een voltooide rubiks kubus stap voor stap door elkaar halen en elke stap opschrijven. 
* De kubus is je bericht, de stap-bij-stap instructies zijn je sleutel.

## Tekst wordt ciphertekst
Ons computer gebruikt dus een programma om de tekst te versleutelen. Tekst wordt omgezet naar 'willekeurige' karakters.
* Hallo wordt bv. FhA8R21dA

![[@ Assets/Foto's/Versleuteling/10.png]]


>[!info]
>In technische termen noemen we dit onleesbaar maken encryptie of versleutelen en het leesbaar maken noemen we decryptie of ontcijferen

## Sleutel meesturen?
We versleutelen ons bericht en sturen de manier om ze te ontcijferen mee, toch?
* Oei! Maar we zitten nog altijd op een onbeveiligd netwerk. De afluisteraar neemt gewoon de sleutel en ontcijfert het bericht.

![[@ Assets/Foto's/Versleuteling/7.png]]

# Sleutel en slot
Het sleutel- en slotsysteem is een geniaal idee dat bijna overal wordt toegepast. Het is een tikkeltje ingewikkeld dus we gaan er stap voor stap over. (letterlijk)

## Public en private keys
We werken met een soort sleutel en slot inrichting. 
* Het slot kan enkel berichten versleutelen en wordt openbaar gedeeld
* De sleutel kan enkel ontcijferen en wordt NOOIT openbaar gedeeld

![[@ Assets/Foto's/Versleuteling/11.png]]

>[!warning] Opmerking
>We gebruiken ter illustratie een slot en sleutel, dit is in realiteit niet zo. We noemen ze allebei ‘keys’.

>[!info]
>Het slot noemen we de ‘public key’, de sleutel noemen we de ‘private key’.

## Stappenplan
### Stap 1
Je doet een verzoek aan de ontvanger voor de public key.
![[@ Assets/Foto's/Versleuteling/12.png]]

### Stap 2
De ontvanger stuurt zijn ‘slot’ (public key) zodat de afzender zijn bericht kan versleutelen.
![[@ Assets/Foto's/Versleuteling/13.png]]

### Stap 3
Je versleutelt het bericht met het slot van de ontvanger
![[@ Assets/Foto's/Versleuteling/14.png]]

### Stap 4
Het versleutelde bericht wordt terug naar de ontvanger gestuurd
![[@ Assets/Foto's/Versleuteling/15.png]]

### Stap 5
De ontvanger kan het bericht ontcijferen met zijn sleutel (private key)
![[@ Assets/Foto's/Versleuteling/16.png]]

### Stap 6
Om iets terug te sturen doen we exact hetzelfde maar omgekeerd.

## Eindscenario
Nadat we allebei onze public keys hebben gedeeld, komen we hier …
* Persoon A heeft persoon B’s public key en zijn eigen private key
* Persoon B heeft persoon A’s public key en zijn eigen private key.

![[@ Assets/Foto's/Versleuteling/17.png]]

>[!info]
>Het principe van sleutel en slot (private en public keys) noemen we asymmetrische versleuteling. 
>* Er is een specifieke sleutel voor het ontcijferen en een specifieke sleutel voor het versleutelen

# Toch de sleutel meesturen?
We hebben daarnet het principe van symmetrische versleuteling gezien (zie [[#Sleutel meesturen?]]), maar waar is dit nu handig? 
* Je hebt maar één sleutel nodig, wat betekent dat het efficiënter en rapper is. We proberen symmetrische versleuteling dus zo veel mogelijk te gebruiken! 

![[@ Assets/Foto's/Versleuteling/22.png]]

## Hoe lossen we het veiligheidsprobleem op?
Oké allemaal goed en wel, maar je kan zo’n sleutel niet gewoon meesturen op het net of we hebben hetzelfde scenario als in het begin. 
* We gebruiken asymmetrische versleuteling!

>[!warning]
>We beginnen bij het volgende stappenplan vanaf [[#Eindscenario]]

### Stap 1
We gebruiken asymmetrische versleuteling om onze symmetrische sleutel mee te sturen.

![[@ Assets/Foto's/Versleuteling/18.png]]

### Stap 2
Er is een soort tunnel aangemaakt specifiek tussen de afzender en ontvanger. 

![[21.png]]

We hebben nu allebei dezelfde sleutel om beide te ontcijferen als versleutelen. De public en private keys zijn niet meer nodig. Bam! Een veilige, snelle en efficiënte symmetrische verbinding! 

![[20.png]]

> [!info]
> Dezelfde sleutel hebben voor ontcijferen en versleutelen noemen we symmetrische versleuteling. 


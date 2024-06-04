#uitgewerkt 

🗂️ Onderwerp: [[🛜 Netwerken]]
🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 04-06-2024

---
# Wat is een netwerk?
Heel basic is een netwerk het verbinden en communiceren van computers met elkaar. Maar hedendaagse netwerken zijn een tikkeltje ingewikkelder, ze verbinden continenten met elkaar en worden niet enkel gebruikt voor pure communicatie. 

![[Ring.png.png]]

Software, browsers en spelletjes kunnen 'online' worden gebruikt. Zo kan jij iemand anders zijn computer ([[Een server]]) gebruiken die kilometers verder woont om een mooie webpagina op je scherm te laten verschijnen.

# Bestuderen van jouw netwerk
We gaan eens een netwerk bekijken die jij mogelijk in je huis hebt. Mogelijks zitten elementen 2, 3, 4, 5 en 6 allemaal ingebouwd in de combo router van je internet service provider (bv. Telenet, Proximus, ...)

![[Jouw opbouw.png.png]]
## Cloud (1)
De cloud ofwel het internet is alles 'online' en buiten je netwerk. We noemen dit ook wel eens de [[WAN]] zijde.

## [[Modem]] (2)
Soms toepasselijk, soms niet. De modem zet de signalen om die je krijgt van je ISP (= Internet Service Provider) om in leesbare [[TCP/IP]] instructies. Dit kan nodig zijn in gevallen van:
* De coax (of in de volksmond, kopper) verbinding, die soms telefonie, tv en internet draagt. Dit wordt dan opgesplitst en naar de correcte ontvangers
* Een glasvezel verbinding, die a.d.h.v. lichtpulsen data verstuurd. Die wordt dan gedecodeerd.

## [[Router]] (3) 

```C
# Invoegen standaardgateway
```

De router neemt de pakketjes en stuurt ze de juiste richtingen op. Ze zit tussen twee netwerken en maakt dat ons klein netwerkje van thuis met het wijdere netwerk van het internet kan communiceren. 

Je kan je netwerk inbeelden als een wijk, waarvan de router de ingang van de wijk is. De naam van je wijk (het externe IP) vertelt de postbode wel waar ze moet zijn om het af te leveren maar niet aan wie.

## [[Switch]] (5)
De switch neemt één fysieke verbinding en maakt er meerdere van. Ze kijkt naar welke computer de router je pakketje stuurt en maakt de verbinding tussen die twee apparaten.

Je kan de switch zien als de straat waarmee de huizen (computers en netwerkapparaten) verbonden zijn. 

![[Switch netwerk.png.png]]

## [[Domain name server]] (6)
De DNS of domain name server vertaalt geschreven woorden naar adressen die de router kan verstaan. Als jij `google.com` intypt, dan zal de DNS dit omzetten naar bv. `172.138.2.901`. Het is net een telefoonboek voor domeinnamen. 

## Wi-Fi modem (6)
Een Access-Point (AP), Wi-Fi modem of wifi toegangspunt zijn allemaal synoniemen voor hetzelfde stukje hardware. Ze neemt een netwerkkabel van je router en zet het signaal om in een draadloos signaal. 

## Netwerkgebruikers (7 & 8)
Netwerkapparaten zoals printers, computers, laptops, telefoons, tablets, ... verbonden via kabel (7) of via draadloze verbinding (8).

# Onder het oppervlakte
## Het [[OSI]] en [[TCP/IP]] model

## [[Netwerk protocollen]]
#uitgewerkt  

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 10-06-2024

---
# Forward proxy
## Wat?
Een forward proxy, of gewoon 'proxy', fungeert als vertegenwoordiger voor zijn clients. Ze neemt aanvragen op en stuurt dit naar de server, ze stuurt het antwoord daarna terug naar de client.
- Als een client bv. een foto van een kat wilt afhalen van katten.be, dan zal hij via de proxyserver deze aanvraag doen en de foto naar jou terugsturen.

![[2.png]]

## Waarom?
Oké, cool, je kan een server jouw verzoeken voor je laten doen. Waarom is dit handig — duurt dit dan niet gewoon langer?
* We bekijken enkele voorbeelden van hoe je een proxyserver kunt toepassen.

### Anonimiteit
Als je niet wilt dat de server waartoe je aanvragen stuurt weet wat je IP is voor privacy redenen kan je een proxy gebruiken. 
- De server heeft geen idee waarvan de client stuurt (IP) of zelf dat er een proxyserver bestaat. Het enigste dat hij weet is dat er iemand een aanvraag heeft gedaan (de proxyserver)

![[5.png]]

### Toegang tot geblokkeerde websites
Door een proxy te gebruiken kan je geblokkeerde websites op je netwerk bezoeken. Ook kan men verbinden met een proxy in een ander land en zo geblokkeerde content in jouw land bekijken.

![[6.png]]![[7.png]]

### Beveiliging
Wanneer je een aanvraag doet via een proxyserver wordt het antwoord ook teruggestuurd naar die server. Logisch, maar het impliceert ook een extra laag van veiligheid!
- Als je een verzoek doet aan een verdachte dienst of website dan zullen virussen (pogingen tot hacken) ook tegengehouden worden aan de proxyserver.


![[8.png]]

### Bandbreedte
Een proxyserver kan frequent bezochte website cachen, zo haalt de client niet altijd de website van het wijde web maar van de proxyserver. Ook bij meerdere clients die naar dezelfde website browsen kan er één aanzoek worden gedaan naar de server i.p.v. drie of naar de gecachte site gaan kijken.

![[9.png]]

### Monitoring
Alle verzoeken gaan door de proxyserver, wat betekent dat je alle verzoeken via deze server kunt bekijken door extra software op de server.
* Zo kan een netwerkbeheerder al het verkeer zien op een netwerk.

![[10.png]]





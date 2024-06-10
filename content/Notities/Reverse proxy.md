#kladversie  #uitgewerkt  #volwassen

🗂️ Onderwerp: [[Proxy server]]
🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 10-06-2024

---
# Reverse proxy
## Wat?
De reverse proxy werkt op dezelfde manier als de gewone proxy, maar gewoon in ‘reverse’ (omgekeerd). 
* Hij is nog steeds een vertegenwoordiger, maar i.p.v. een tussenpost te zijn tussen het interne netwerk en het externe is ze dit nu voor het externe t.o.v. het interne netwerk.

![[12 1.png]]

## Waarom?
### Toegangscontrole en monitoring
Door verkeer door een proxy te laten gaan kan je dit verkeer ook bekijken en bepaalde verbindingen weigeren / blokkeren. 
- Zoals bv. bij connecties van het buitenland, connecties op een bloklijst of verkeer die niet expliciet zijn toegelaten.

![[13.png]]

### Enkel punt van uitgang
Door een proxyserver te gebruiken kan je al het verkeer naar je servers beveiligen. Zo kan je je router instellen om jouw proxy te gebruiken en al het verkeer door één punt te laten gaan voor een beter beveiligd netwerk.
- Je kan hier dan de principes van toegangscontrole en monitoring dan toepassen.

#### Zonder reverse proxy

![[14.png]]

#### Met reverse proxy

![[15.png]]


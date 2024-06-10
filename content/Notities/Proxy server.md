#onderwerpen 

🗂️ Onderwerp: [[🖥️ Computertechnieken]]
🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 10-06-2024

---
# Types proxy server
We hebben twee types proxy server, een forward en reverse. 

## [[Forward proxy]]
Een forward proxy, of gewoon 'proxy', fungeert als vertegenwoordiger voor zijn clients. Ze neemt aanvragen op en stuurt dit naar de server, ze stuurt het antwoord daarna terug naar de client.

![[11.png]]

## [[Reverse proxy]]
De reverse proxy werkt op dezelfde manier als de gewone proxy, maar gewoon in ‘reverse’ (omgekeerd). Hij is nog steeds een vertegenwoordiger, maar i.p.v. een tussenpost te zijn tussen het interne netwerk en het externe is ze dit nu voor het externe t.o.v. het interne netwerk.

![[12.png]]

# Een proxy server is geen ...
## [[Router]]
Sommige functies toegepast bij een proxy kan men ook draaien op een moderne router. Zoals bv. het verkeer op je netwerk zien, bepaalde websites blokkeren, … en moet je niet speciaal een proxyserver voor opzetten.

![[16.png]]

| **Proxyserver**                                                                                               | **Router**                                                                                                        |
| ------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| Een proxyserver krijgt aanvragen en stuurt ze naar de ontvanger, ze zit tussen de communicatie.               | Een router maakt dat aanvragen van verzender naar ontvanger geraakt zonder tussenpost te zijn.                    |
| Een proxyserver wordt per applicatie opgezet, bv. proxy mijn mail of proxy mijn webverzoeken!                 | Een router wordt voor al het verkeer op het netwerk ingezet, zonder ze was er geen verkeer.                       |
| Ze werkt op een hoger niveau dan een router met specifieke en ingewikkeldere protocols (zoals HTTP, SMTP, …). | Ze werkt op een lager niveau met TCP/IP en pakketten en geen ingewikkelde protocols voor specifieke toepassingen. |

## [[VPN]]
Een VPN werkt op dezelfde principes van een proxyserver. Ze krijgt aanvragen en doet alsof ze van haarzelf zijn, ze stuurt de antwoorden respectievelijk terug. Enkel zijn er twee kleine verschillen:
* VPN's zullen ook het verkeer tussen de client en server versleutelen. 
* VPN’s werken niet per applicatie, maar voor al het verkeer vanaf je router naar de server.

![[17.png]]

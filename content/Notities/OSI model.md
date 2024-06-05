#kladversie 

🗂️ Onderwerp: [[Basis van netwerken]]
🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 05-06-2024

---
Een netwerk is enorm ingewikkeld als je écht onder het oppervlakte begint te kijken. Daarom ontwikkelde men het OSI model. Het is een conceptuele voorstelling dat toont hoe communicatie gebeurt via lagen. 

# Lagen
## Applicatie laag (7)
De toplaag waar toepassingen en gebruikers toegang hebben tot het netwerk. Het omvat protocollen voor services zoals e-mail, bestandsuitwisseling, en het bekijken van webpagina's. 

Voorbeelden zijn [[HTTP]], [[SMTP]], en [[FTP]].

## Presentatie laag (6)
Deze laag is verantwoordelijk voor de presentatie en het formaat van gegevens die worden uitgewisseld tussen toepassingen. Het kan codering, compressie en encryptie van gegevens omvatten om ervoor te zorgen dat de gegevens correct worden geïnterpreteerd aan de ontvangende kant.

## Sessie laag (5)
De sessielaag legt de verbindingen (sessies) tussen verschillende toepassingen op een netwerk vast en beheert ze. Het kan bijvoorbeeld controlemechanismen bevatten om te zorgen voor een betrouwbare communicatie en om sessies te coördineren en te beheren.

## Transport laag (4)
Deze laag biedt end-to-end communicatie tussen verschillende apparaten over het netwerk. Het omvat protocollen zoals [[TCP]] en [[UDP]], die verantwoordelijk zijn voor het segmenteren, verzenden, en opnieuw assembleren van gegevenspakketten.

## Netwerk laag (3)
De netwerklaag is verantwoordelijk voor het routeren van gegevenspakketten tussen verschillende netwerken en het omzeilen van obstakels zoals routers en switches. Het bevat protocollen zoals IP (Internet Protocol) die de adressering en routering van gegevens regelen.

## Datalink laag (2)
Deze laag is verantwoordelijk voor het foutloos verzenden van gegevensframes over individuele fysieke netwerken. Het omvat protocollen zoals Ethernet en [[WiFi]], die zorgen voor de fysieke transmissie van gegevens en het beheer van de toegang tot het netwerk.

## Fysieke laag (1)
De onderste laag van het OSI-model omvat de fysieke componenten van het netwerk, zoals kabels, switches en andere apparatuur. Het zorgt voor de overdracht van ruwe gegevensbits tussen apparaten.
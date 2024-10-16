# Doelstellingen
---
- Interne vs. externe aanvallen
- Risico's en gevolgen
- B!g data
- Malware (aanvallen)
- Misleiding en oplichting (aanvallen)
- E-mail en browser aanvallen
- Applicatie-aanvallen
- APT's

# Notities
--- 
## Interne vs. externe aanvallen
Aanvallen kunnen afkomstig zijn van binnen een organisatie of van buiten de organisatie ...

### Interne
Afkomstig van een interne gebruiker, zoals een medewerker of contractpartner.
- Kunnen per ongeluk of opzettelijk zijn
- Interne aanvallen kunnen grotere schade aanrichten -> Meer toegang om bv. Server gewoon kapot te smijten
- Interne aanvallers hebben doorgaanse kennis van de systemen

### Externe
Afkomstig van een externe gebruiker zoals een amateur of ervaren 'hacker'. 
- Externe aanvallen maken misbruik van zwakheden of kwetsbaarheden om toegang te krijgen tot interne bronnen.
- Na binnen te geraken kunnen ze vaak evenveel schade toerichten als interne aanvallen.

## Risico's en gevolgen
De hedendaagse wereld draagt nieuwe risico's en hun gevolgen, hier lijsten we er een paar op.

### Mobiele apparaten
- **Vroeger**: gebruikten werknemers doorgaans door het bedrijf uitgegeven computers die waren verbonden met een bedrijfsnetwerk.
- **Nu**: steeds meer gebruik gemaakt van eigen mobiele apparaten zoals smartphones, tablets, eigen laptops ... op de werkvloer.

#### Gevolg
- Gebruikers 'moeten maken' dat hun systemen up-to-date en goed beschermd zijn. **Dit wordt bijna niet gedaan** 
- Persoonlijke laptops met bedrijfsinformatie kunnen  gehackt, gestolen of verloren worden.

### IoT
(**IoT is**) De verzameling technologieën die de verbinding van verschillende apparaten met het internet mogelijk maakt.
- Meer en meer zwak beschermde CO2 meters, camera's, elektronische sloten, thermostaten, ... worden verbonden met het bedrijfsnetwerk.
- Soms bevorderen deze apparaten toegang tot diensten, computers, ... van op afstand.

#### Gevolg
A.d.h.v. deze apparaten kunnen aanvallers binnen geraken op het netwerk of m.b.v. deze apparaten schade aanrichten.

### Federatief identiteitsbeheer
Inloggen met Google, Facebook, Apple, ... is gemakkelijk.

#### Gevolg
Als bv. jouw Google Account gehackt wordt hebben de aanvallers toegang tot alle accounts verbonden met dit account.

### Verhoogde waakzaamheid
- **Vroeger**: Een slimme middelbare scholier of scriptkiddie kon toegang krijgen tot systemen.
- **Nu**: Meer waakzaamheid. De dreiging van cyberaanvallen staat nu in de meeste landen bovenaan de lijst van grootste bedreigingen

## Big data
Big data is het resultaat van datasets die groot en complex zijn, waardoor traditionele dataverwerkingstoepassingen ontoereikend zijn.

Ze bestaat uit de drie V's
- **Velocity**: De snelheid van gegevens
- **Variety**: De verscheidenheid of het bereik van gegevenstypen en bronnen
- **Volume**: Het volume of de hoeveelheid gegevens

**Voorbeeld**
Drieëntwintig IoT (volume) meettoestellen in een brouwerij die de tankniveaus, alcoholsaturatie en tijdsverloop (Variety) om de 5 seconden (Velocity) melden aan een centrale computer.

## Malware
Software met kwaadaardige bedoeling die de gebruiker meestal zelf moet uitvoeren.

### Voorbeelden
- **Virus**: Een kwaadaardig stukje code die vasthangt aan een uitvoerbaar bestand
- **Worm**: Een stukje kwaadaardige code die zich kenmerkt doordat het zichzelf repliceert
- **Trojan horse**: Malware die verborgen zit in gewenste bestanden zoals foto's of een game
- **Logic bomb**: Een kwaadaardig programma die wordt geactiveerd op bepaald moment (= trigger)
- **Ransomware**: Een computersysteem of data wordt geblokkeerd of geëncrypteerd tot het moment dat het slachtoffer een geldsom betaalt
- **Backdoors en rootkits**: Een rootkit zal het besturingssysteem aanpassen naar zijn eigen wil meestal a.d.h.v. een backdoor
- **Keylogging**: Een computerprogramma die de toetsenbordaanslagen (keystrokes) gaat opnemen of loggen
- **Spyware**: Software gemaakt om zo veel mogelijk sensitieve data te verzamelen en door te sturen naar aanvaller
- **Adware**: Virus die advertenties aan gebruiker toont om geld te verdienen
- **Scareware**: Pop-ups die je urgent naar een nummer doen bellen voor 'hulp'

## Misleiding en oplichting
De vaste zwakheid bij elk bedrijf exploiteren: mensen. Ook gekend als social engineering:
- Het bestaat erin om het vertrouwen van jouw slachtoffer te winnen. (Zeer doeltreffend: 80+ %)

### Voorbeelden
- **Phishing**: Hierbij probeert de aanvaller informatie (meestal logingegevens, credit card informatie, ...) te verkrijgen van het slachtoffer a.d.h.v. misleidende loginschermen, mails
- **Pretexting**: Phishing aan bedrijven of entiteiten voor info over een gebruiker te halen
- **Vishing**: Met geluid (AI stem, via telefoon bellen) phishen
- **Cat phishing**: Phishen a.d.h.v. catfishing (valse identiteit)
- **Spear phishing / whaling**: phishing gericht op een specifieke persoon, doelgroep of organisatie (met hoge toegangsrechten)
- **Pharming**: Phishen door een val te zetten (zie volgend voorbeeld)
- **Typosquating**: Phishen a.d.h.v. typfouten (bv. Website google.com -> gooogle.com)
- **Shoulder surfing**: Afkijken pincode of andere info
- **Dumpster diving (context)**: Het zoeken van info in afval
- **Impersonation**: Voortdoen als iemand anders
- **Piggybacking/tailgating**: Meeglippen met iemand die wel toegang heeft

## E-mail en browser aanvallen
A.d.h.v. e-mails, websites of de browser zelf aanvallen.
- **SEO poisoning**: (Kwaadaardige) site vanboven in de zoekresultaten dwingen
- **Brower hijacking**: Instellingen wijzigen van browser in voordeel van aanvaller
- **Spam**: Ongewenste mail naar zodanig veel mensen sturen met kwaadaardige links
- **Hoaxes**: Liegen op grote schaal voor massadesinformatie

## Netwerkaanvallen
Aanvallen op of met een netwerk.
- **Botnets**: Een aaneenschakeling van (onwetende) computers om zo veel mogelijk computerkracht te hebben
- **(D)DOS aanval**: Aanval die toegang tot service wilt verbreken (door zoveel mogelijk 'verkeer' te sturen)
- **Sniffing**: Verkeer op netwerk bekijken om mogelijke sensitieve data uit te halen
- **Spoofing**: Vervalsen van netwerkverkeer of aanvragen
- **Man-in-the-middle attack**: Iemand die tussen jou en de gewilde dienst zit en verkeer afluistert of zelf beïnvloed
- **Rogue Access Point**: Een internet toegangspunt saboteren zodat jij al het verkeer kan bekijken en/of aanpassen

# Bronnen
---
- [Slides - Github](https://hogenttin.github.io/cybersecurity-slides/h3.html?showNotes=true#/)
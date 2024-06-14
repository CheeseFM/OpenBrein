#documentatie  #bezig 

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)


> [!warning] Knowhow
> Je hebt een basiskennis van ICT en TIA nodig en een PLC met een (ongekende) IP configuratie - Dit is normaal al ingesteld vanaf de fabriek.
> [[Basis informatica]]
> 



---
Benodigdheden
* Computer met TIA Portal (v14)
* RJ45 netwerkkabel
* PLC met voeding (op didactisch bordje)

# Fysieke verbindingen maken
## Steek een netwerkkabel in de PLC
Neem een einde van je RJ45 en plug deze in in de `PROFINET` poort van je PLC.

![[IMG_5869.jpg]]

## Steek het ander einde in je PC
Neem de andere kant van de kabel en plug die in op een dongle of ethernet poort op je PC.

![[IMG_5870.jpg]]

## Finale opstelling
Je PLC is ingeplugd op je PC en je verkrijgt een ethernetverbinding zonder internet.

![[IMG_5871.jpg]]
![[IMG_5872.jpg]]

# TIA en project openen
## Open TIA op je PC
Ga naar de Windows zoekbalk en vind TIA.

![[Pasted image 20240524145134.png]]

## Open een willekeurig project
Op het startscherm open je een willekeurig project, het maakt niet uit welk zolang je PLC is geconfigureerd.

![[Pasted image 20240524145922.png]]

### Een project aanmaken met PLC 1214C
Heb je nog geen project? Volg dit even verder voor een nieuw project aan te maken met de juiste PLC - Vanaf de start pagina klik je door naar `Create new project` en geef ze een willekeurige naam en bestand locatie, klik hierna op `Create` en wacht.

![[Pasted image 20240524150114.png]]

### Stel de juiste PLC in
Je krijgt nu een `First steps` pagina waar je een boomdiagram krijgt van wat je allemaal kan doen. Klik op `Configure a device`

![[Pasted image 20240524150326.png]]

### Voeg een nieuw apparaat toe
Je krijgt nu een pagina met `Show all devices`, klik door naar `Add new device`.

![[Pasted image 20240524150503.png]]

Zoek de `CPU 1214C DC/DC/DC AE30-0XB0,` volg de afbeelding hieronder. Klik daarna op `Add` en wacht even tot hij een project aanmaakt.

![[Pasted image 20240524150608.png]]

# PLC vinden
## Open het "Accessible devices ..." menu
Druk op `Ctrl + U` of open het menu door de `Online > Accessible devices...` optie te gaan.

![[Pasted image 20240524152416.png]]
![[Pasted image 20240524152455.png]]

## Configureer je netwerkkaart
Ga naar de `Type of the PG/PC interface` en selecteer `PN/IE` en selecteer bij `PG/PC interface` je netwerkkaart. 

![[Pasted image 20240524152758.png]]

## 
![[Pasted image 20240524154806.png]]

# Statische IP instellen
## Waarom?
De PLC heeft nu een adres waar naartoe jij brieven (data) kan sturen, maar de PLC kan niks naar jou sturen want jij hebt geen adres! - Je moet dit zelf instellen aangezien er geen router tussen jou en de PLC zit die dit normaal voor jou regelt.
## Configuratiescherm openen

---
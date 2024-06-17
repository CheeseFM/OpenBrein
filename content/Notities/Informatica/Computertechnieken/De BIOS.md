#uitgewerkt

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 17-06-2024

---
# Waarom een BIOS?
## Geen besturingssysteem
De BIOS is het eerste stukje software dat opstart voor je [[Besturingssystemen|besturingssysteem]]. 

## Communicatie
De BIOS software legt communicatie tussen het bovenstaande besturingssysteem en de hardware.

> [!info]
> Software gemaakt voor communicatie tussen hardware en software te leggen noemt men firmware

# Hoe werkt een BIOS?
## Een kleine chip
Hoe kan het dat zonder opslag een computer nog steeds een BIOS kan laden?
* Er zit een kleine opslagchip op je moederbord met de BIOS software erop. Dit noemen we de BIOS chip.

## Doel van een BIOS
Met de BIOS kan men de hardware van een computer configureren. We bespreken de voornaamste en interessantste functies van de meeste BIOS'en. Er zijn er nog veel meer!

### Opstartopties
Je kan de manier van opstarten aanpassen. Of het apparaat selecteren die je eerst wilt bekijken om op te starten.
* Veilig via secure boot
- Sneller via de nieuwere ‘Quick boot’
- Via USB, CD-ROM, Floppy, Schijf 1, Schijf 2, … 

### Datum & tijd
Op jouw PC zit een systeemklok die a.d.h.v. een batterijtje de tijd bijhoudt. 
* A.d.h.v. de BIOS kan je deze systeemklok instellen.

### Processor instellingen
Met de BIOS kan je ook verschillende instellingen voor je processor veranderen.
* [[Virtualisatie]] aanzetten
* Snelheid van de processorklok

### Geheugen instellingen
Men kan via de BIOS ook het (RAM) geheugen configureren
- Snelheid van de geheugenklok

### Wachtwoord
Je kan de BIOS vergrendelen zodat niemand anders je PC opnieuw kan instellen

>[!warning]
>Een BIOS is geen besturingssysteem.
Je kan naast configuratie niks met de BIOS, het heeft één doel.

## Geen BIOS maar UEFI?
De term ‘BIOS’ komt van het vroegere ‘Basic-Input-Output-System’, een verouderde technologie voor het configureren van de PC. We gebruiken nu het UEFI platform (Unified Extensible Firmware Interface). Het is een veiligere, uitgebreide versie. 
* We zullen dus voor de rest van dit document de koepelterm ‘BIOS’ gebruiken maar vergeet niet dat dit naar de nieuwere ‘UEFI’ verwijst.

### Verschillen BIOS en UEFI
#### Kleinere instructies
De BIOS chip werkt enkel met 16 bit woorden, dit was logisch toen dit overeenkwam met de destijdse norm, maar deze dagen gebruiken we 64 bit instructies.
* Een moderne processor moet tijdens het opstarten in een lagere capaciteit (16 bit) handelen en zal dus trager opstarten.
* Ook kan een 16 bit systeem maximaal 64 KB aan ram geheugen gebruiken. Dit is minuscuul tegenover de gigabytes aan ram deze dagen.

#### Secure boot
Bij het aanzetten van secure boot gaat de UEFI chip al het verkeer tussen de hardware en software van de computer controleren.
* Als er kwaadaardige software (malware) tussenzit dan zal hij de boel stopzetten.

#### Formatering
Om te weten hoe de BIOS via een schijf moet opstarten, schrijven we naar die schijf een partitietabel. 
* Bij BIOS gebruiken we MBR (Master Boot Record), deze is gelimiteerd tot opstartschijven van 2 TB
* Bij UEFI gebruiken we GPT (GUID Partition Table), deze kan apparaten boven 2 TB gebruiken om op te starten.

#### Toegang tot schijven
UEFI heeft toegang tot onze lokale opslaginfrastructuur.
* Ze kan zo firmware direct naar de schijven sturen en is niet gelimiteerd tot wat ze kan opslaan op de BIOS chip zelf.

#### Eigen software
Het UEFI systeem kan eigen apparaat drivers ([[Firmware]]) en andere software draaien om compatibiliteit met diverse hardware nog te vergroten.
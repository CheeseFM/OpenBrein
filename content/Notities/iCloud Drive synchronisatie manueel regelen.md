#documentatie  #afgerond 

🗂️ Onderwerp: [[🧠 Ontwikkelen van OpenBrein]]
🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 19-05-2024

> [!info] Bronnen
> https://stackoverflow.com/questions/2888851/how-to-stop-process-from-bat-file

---
Voor een of andere reden heeft Apple beslist dat vanaf je de Windows iCloud app opendoet die gewoon altijd aanblijft en constant synchroniseert. Allemaal goed en wel voor hun energie efficiënte laptops maar dit zuigt batterij / energie op een gewone pc.

# Uitzetten starten op opstarten
We moeten eerst de iCloud dienst uitzetten bij het opstarten. Anders werkt het script niet en heeft deze documentatie geen nut.

## Open Windows Search
Tik op de Windows toets en typ iCloud in de zoekbar. Vanaf hier klik je op 'App-instellingen'

![[Pasted image 20240519195809.png]]

## Zet alles uit
Als je naar beneden scrolt zie je 'Wordt uitgevoerd bij aanmelding', zet hierbij alles uit.

![[Pasted image 20240519200117.png]]

>[!warning] 
>Hierna moet je opnieuw opstarten vooraleer je aan het script begint.

# Script aanmaken
## Locatie kiezen
Je kan dit script van eender waar uitvoeren. - Je kiest bv. de `Documenten` folder om je script in te bewaren.

## Nieuw tekstbestand
Maak een nieuw tekstbestand aan in je locatie van keuze met rechtermuisknop

![[Pasted image 20240519200559.png]]

## Hernoemen met juiste extensie
In plaats van een tekstbestand willen we een `.bat` ofwel een 'batch' file hebben. Je noemt het wat je wilt en voegt de batch extensie toe. - Het kan zijn dat je gevraagd wordt dat je zeker bent van de extensie te wijzigen, klik ja.

![[Pasted image 20240519200836.png]]

## Bewerken
Klik met je rechtermuisknop op het bestand en daarna 'bewerken'. Je bestand opent met de ingestelde tekstverwerker, basis is dit notepad (of kladblok).

![[Pasted image 20240519200933.png]]

## Voeg het script in
Om enkel iCloud Drive te synchroniseren gebruiken we het volgende:

```Batch file
start iCloudDrive-AppX.exe
start iCloudHome-AppX.exe

PAUSE 60

taskkill /IM iCloudDrive.exe
taskkill /IM iCloudCKKS.exe
taskkill /IM iCloudHome.exe
taskkill /IM iCloudPasswords.exe
taskkill /IM iCloudPasswordsExtensionHelper.exe
taskkill /IM iCloudPhotos.exe
taskkill /IM iCloudPhotoViewer.exe
taskkill /IM iCloudPrefs.exe
taskkill /IM iCloudServices.exe
taskkill /IM iCloudChrome.exe
taskkill /IM iCloudFirefox.exe
```

* `start` doet wat het zegt, het start een uitvoerbaar bestand / applicatie
* `PAUSE` wacht tot een signaal van de gebruiker of mits van toepassing (in ons geval wel) een gespecificeerde periode
* `taskkill` doet ook wat het zegt. Het is net alsof je in taakbeheer een taak stopt maar dan in commando vorm
#### Wat elke app doet
Wil je zelf je eigen script samenstellen? Gebruik dan deze app namen bij het 'start' commando.

* `iCloudDrive` synchronisatie tussen jou PC en iCloud via een netwerkfolder of mits ingesteld een mirror op je lokale apparaat
* `iCloudCKKS` achterliggende service voor wachtwoordsynchronisatie
* `iCloudHome` de grafische interface als je de iCloud app opent
* `iCloudPasswords` interface tussen iCloudCKKS en gebruiker
* `iCloudPasswordsExtensionHelper` helper tussen Windows, iCloudCKKS en browser extensie
* `iCloudPhotos` synchronisatie tussen iCloud Photo's en lokale mirror
* `iCloudPhotoViewer` service voor iCloud Photo's in de grafische Microsoft Photo's app
* `iCloudPrefs` service voor instellingen van iCloud
* `iCloudServices` daemon voor de rest van de iCloud apps
* `iCloudChrome` middelware tussen iCloudCKKS, Passwords en browser extensie voor Chromium gebaseerde browsers.
* `iCloudFirefox` middelware tussen iCloudCKKS, Passwords en browser extensie voor Firefox gebaseerde browsers.
---
#### **⛓️ Verwijzingen:**
* [[Obsidian installatie met iCloud sync]]
* [[iCloud linken met Quartz installatie]]

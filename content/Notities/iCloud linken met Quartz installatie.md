#guide  #afgerond 

🗂️ Onderwerp:  [[🧠 Ontwikkelen van OpenBrein]]
🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)


>[!warning] Knowhow
>Je moet een Quartz installatie hebben ([[Quartz installatie]]) en jouw Obsidian vault moet via iCloud gesynchroniseerd staan ([[iCloud linken met Quartz installatie]]). 
>
>Je moet ook de basics van informatica bezitten. -  [[💻 Basis computertechnieken]]

---
## Inleiding
### Doel
Oké we hebben nu een Obsidian vault in de cloud op iCloud en een lege Quartz content folder, we willen nu:

```mermaid

flowchart LR 
id(Vault op iCloud Drive) --> 
id2(content folder van je Quartz installatie)
```
## Manueel synchroniseren
### Copy - paste!
Wil je écht volledige controle over wat er online wordt gepubliceerd? - Dan kan je je notities manueel van je iCloud drive kopiëren naar de Quartz content folder.

![[Pasted image 20240518231504.png]]
### Synchronise~
Nu moeten we een terminal openen in de Quartz hoofdfolder, in mijn geval `C:\Users\jelle\OpenBrein` en het synchroniseer commando uitvoeren.

``` PowerShell
npx quartz sync 
```

## Automatiseren
Als je dit wilt synchroniseren is het letterlijk hetzelfde maar dan in scriptvorm.

### Maak een batch (.bat) file aan
Maak een nieuwe batch file aan in de hoofdmap van je quartz installatie (bij mij `C:\Users\jelle\OpenBrein`) en open hem met een tekstverwerker.

### Script invoegen
Voeg de onderstaande code toe toe in je `.bat` bestand.

```Batch file
@echo off
REM Leeg de content map in de Quartz folder
rmdir /S /Q "C:\Users\locatie\van\quartz\content\"
mkdir "C:\Users\locatie\van\quartz\content\"

REM Vul de content map met de content op de iCloud opslag
xcopy "C:\Users\locatie\van\iCloud\*" "C:\Users\locatie\van\quartz\content\" /E /H /C /I

REM Verander omgeving naar de Quartz hoofdmap
cd /d C:\Users\locatie\van\quartz

REM Voer het ingebouwde sync commando uit
npx quartz sync

```

Vooraleer je hem kan uitvoeren moet je wel enkele aanpassingen doen:
* Verander `C:\Users\locatie\van\quartz\content\` naar waar jouw content folder staat van Quartz.
* Verander `C:\Users\locatie\van\iCloud\*` naar waar je je iCloud folder hebt gezet in '[[Obsidian installatie met iCloud sync]]' - **Behoud de asterisk op het einde of het zal niet werken**
* Verander `C:\Users\locatie\van\quartz` naar de Quartz hoofdmap.

#### Voorbeeld
``` Batch file
@echo off
REM Delete all contents of the target directory
rmdir /S /Q "C:\Users\jelle\Quartz\OpenBrein\content"
mkdir "C:\Users\jelle\Quartz\OpenBrein\content"

REM Copy contents from source to target directory
xcopy "C:\Users\jelle\iCloudDrive\iCloud~md~obsidian\OpenBrein\*" "C:\Users\jelle\Quartz\OpenBrein\content" /E /H /C /I

REM Change to the Quartz directory
cd /d C:\Users\jelle\Quartz\OpenBrein

REM Run the Quartz sync command
npx quartz sync

REM Pause to see the output
pause
```

### * Folders weglaten
Door simpelweg de folders te verwijderen in de doelmap (Quartz installatie) kan je bv. je templates folder weglaten. Dit zorgt ervoor dat ze niet op je Quartz webpagina staat, wat mogelijk wat netter is.

``` Batch file
@echo off
REM Delete all contents of the target directory
rmdir /S /Q "C:\Users\jelle\Quartz\OpenBrein\content"
mkdir "C:\Users\jelle\Quartz\OpenBrein\content"

REM Copy contents from source to target directory
xcopy "C:\Users\jelle\iCloudDrive\iCloud~md~obsidian\OpenBrein\*" "C:\Users\jelle\Quartz\OpenBrein\content" /E /H /C /I

REM Remove the "4 - Templates" folder from the target directory if it exists
if exist "C:\Users\jelle\Quartz\OpenBrein\content\4 - Templates" (
    rmdir /S /Q "C:\Users\jelle\Quartz\OpenBrein\content\4 - Templates"
)

REM Change to the Quartz directory
cd /d C:\Users\jelle\Quartz\OpenBrein

REM Run the Quartz sync command
npx quartz sync

REM Pause to see the output
pause

```

---

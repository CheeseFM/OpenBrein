#uitgewerkt 

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 17-06-2024


>[!warning] Knowhow
>Het is best dat je weet hoe git in elkaar zit vooraleer je verder gaat. Technische termen verschijnen in dit document [[Git]]

---
Nadat je een [[Lokale git repo maken|lokale git repo]] en [[Github repo aanmaken|een remote repo op github]] hebt en [[Remote origin toevoegen|je hebt de remote (origin) ingesteld]] en [[Bestand tracken met Git|er staat iets in die lokale repo]] kan je eindelijk die synchroniseren met elkaar.

# Stappenplan
## Doelmap
Ga naar de map van je lokale git repo. In ons geval `C:\Users\gebruiker\Downloads\git-test`

## Push je lokale repo
Nu gaan we alle wijzigingen van onze lokale repo pushen naar de remote. 

```Powershell
git push -u origin main
```

* Je moet mogelijk `main` veranderen als je je hoofdtak een andere nam hebt gegeven.

## Synchronisatie!
Je wijzigingen en bestanden zijn gesynchroniseerd met Github!

![[Pasted image 20240617193824.png]]
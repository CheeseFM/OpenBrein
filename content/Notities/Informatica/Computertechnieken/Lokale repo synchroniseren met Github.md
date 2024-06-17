#kladversie

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 17-06-2024


>[!warning] Knowhow
>Het is best dat je weet hoe git in elkaar zit vooraleer je verder gaat. Technische termen verschijnen in dit document [[Git]]

---
Nadat je een [[Lokale git repo maken|lokale git repo]] en [[Github repo aanmaken|een remote repo op github]] hebt aangemaakt [[Bestand tracken met Git|en er staat iets in die lokale repo]] kan je die synchroniseren met elkaar.

# Stappenplan
## Doelmap
Ga naar de map van je lokale git repo. In ons geval `C:\Users\gebruiker\Downloads\git-test`

## Commando's
Voer de commando's van de laatste stap van [[Github repo aanmaken]] in.

![[Pasted image 20240617191345.png]]

```
git remote add origin https://github.com/gebruiker/repo.git
```

* `gebruiker` moet vervangen worden door jouw gebruikersnaam
* `repo` moet vervangen worden door de naam van je repo

## Push je lokale repo
Nu gaan we alle wijzigingen van onze lokale repo pushen naar de remote. 

```Powershell
git push -u origin main
```

* Je moet mogelijk `main` veranderen als je je hoofdtak een andere nam hebt gegeven.

## Synchronisatie!
Je wijzigingen en bestanden zijn gesynchroniseerd met Github!

![[Pasted image 20240617193824.png]]
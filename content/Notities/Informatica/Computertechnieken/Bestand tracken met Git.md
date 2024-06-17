#kladversie

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 17-06-2024

>[!warning] Knowhow
>Het is best dat je weet hoe git in elkaar zit vooraleer je verder gaat. Technische termen verschijnen in dit document [[Git]]

---
Je hebt net een bestand toegevoegd [[Lokale git repo maken|aan je lokale repo]], maar hoe houden we de versiegeschiedenis nu bij? - En misschien later zelfs [[Lokale repo synchroniseren met Github|hoe synchroniseer je je bestand met een remote repo zoals Github?]]

# Stappenplan
## Ga naar je lokale repo
Browse op je computer naar je repo, de mijne staat in `C:\Users\gebruiker\Downloads\git-test>`

## * Maak een bestand aan
Als je dit nog niet hebt gedaan, maak een bestand aan in je lokale repo, voeg iets van inhoud toe en sla het op.

```
notepad.exe test.txt
```

![[Pasted image 20240617193207.png]]

## Voeg het bestand toe aan het versiebeheer
Nu dat je bestand is aangemaakt moeten we git laten weten dat we dit bestand willen tracken.

```Powershell
git add test.txt
```

- Je moet mogelijk `test.txt` veranderen door de naam van het bestand dat jij wilt navolgen.

## Vastleggen als een mijlpaal
Als we klaar zijn met veranderingen maken aan het bestand kunnen we onze wijzigingen vastleggen in jouw geschiedenis met een opmerking.

```Powershell
git commit -m "test bestand aangemaakt"
```

* `"test bestand aangemaakt"` moet je aanpassen naar wat je wilt dat de commit zegt. 

## Tracking!
Jouw bestand wordt door git bijgehouden en je hebt je verandering zelfs vastgelegd om in de toekomst mogelijk op terug te keren.

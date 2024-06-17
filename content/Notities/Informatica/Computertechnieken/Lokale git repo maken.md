#uitgewerkt

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 17-06-2024


>[!warning] Knowhow
>Het is best dat je weet hoe git in elkaar zit vooraleer je verder gaat. Technische termen verschijnen in dit document [[Git]]


---
A.d.h.v. verschillende [[Git commando's|git commando's]] gaan we op onze computer een git repo maken.

# Stappenplan
## [[Een (doel)map of bestand vinden|Ga naar de doelmap]]
Selecteer de map waar je je repo in wilt maken en open die in een terminalvenster

```Powershell
PS C:\Users\gebruiker\Downloads>
```

## Opstarten repo
Met één enkel commando maken we een nieuwe git repo aan.

```Powershell
git init
```

```Output
Initialized empty Git repository in C:/Users/gebruiker/Downloads/git-test/.git/
```

## Aanmaken branch
Je maakt best een branch aan direct wanneer je begint. Wij noemen de hoofdtak `main`

```Powershell
git branch -M main
```

#documentatie   #afgerond
 
🗂️ Onderwerp:  [[🧠 Ontwikkelen van OpenBrein]]
🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)


>[!warning] Knowhow
> Vooraleer je Quartz kan hosten op Github Pages moet je eerst Quartz installeren
> [[Quartz installatie]]

>[!info] Bronnen
>[How to publish your notes for free with Quartz - Nicole van der Hoeven](https://youtu.be/6s6DT1yN4dw)
>[Quartz documentatie](https://quartz.jzhao.xyz/)

---
## Inleiding
### Wat zijn we nu eigenlijk aan het doen?
We hebben Quartz lokaal geïnstalleerd. Ze heeft als doel om markdown bestanden om te zetten in html. Nu moeten we een manier vinden om dit online te krijgen. Wij zullen dit doen met Github Pages, maar om dit te gebruiken moet onze installatie op Github terecht komen. Gelukkig hebben de makers van Quartz hier al aan gedacht en is het niet veel werk.

We zullen dus via Git onze lokale installatie synchroniseren met de bestandservers van Github door ze in een repository te zetten. Daarna voegen we een configuratiebestand toe zodat Github de vertaalde HTML via hun gratis service online kan zwieren. 
## Aanmaken Github repo
### Inloggen
Log in op [GitHub](https://www.github.com) en ga naar jouw repositories pagina

![[Pasted image 20240518163759.png]]

### Repository aanmaken
In de repo pagina, klik op 'New' of 'Nieuw'

![[Pasted image 20240518163823.png]]
### Repository configureren
Geef je repo een naam en zet hem op 'public'. De rest laat je uit staan. We voegen dus geen repo, '.gitignore' of license toe! - Je klikt hierna op 'Create repository'

![[Pasted image 20240518204457.png]]
## Synchroniseren met Github
### Lokale Quartz folder 
Open een terminal in je lokale quartz folder die je tijdens [[Quartz installatie]] hebt gebruikt. In ons geval is dit `C:\Users\jelle\testvault>`

### Repo toevoegen
Nu je een terminal in je folder hebt open staan gaan we de link leggen tussen de lokale folder met Quartz en de Github repository die we net hebben aangemaakt. We doen dit met het `git remote` commando.
``` PowerShell
git remote set-url origin jouw-repo
```

Je vervangt `jouw-repo` met de HTTPS URL die je van git krijgt na het aanmaken van je repository.

![[Pasted image 20240518205302.png]]

### Synchroniseren
Nu voeren we een commando uit om via onze computer met Github te synchroniseren via Git

``` PowerShell
npx quartz sync --no-pull
```

Oké, nu staan de bestanden op Github maar waar is onze website?

## Github Pages
### Pages optie aanzetten
Open je repo en ga naar `Settings > Pages > Source` en zet de selectie naar 'Github Actions'

![[Pasted image 20240518210905.png]]

### Aanmaken van configuratiebestand
Ga naar `naam-quartz\.github\workflows` en maak een nieuw tekstbestand met de naam 'deploy.yml'

![[Pasted image 20240518210509.png]]

### Inhoud `deploy.yml`
Open het configuratiebestand en voeg deze inhoud exact toe zonder iets te veranderen

``` YML
name: Deploy Quartz site to GitHub Pages
 
on:
  push:
    branches:
      - v4
 
permissions:
  contents: read
  pages: write
  id-token: write
 
concurrency:
  group: "pages"
  cancel-in-progress: false
 
jobs:
  build:
    runs-on: ubuntu-22.04
    steps:
      - uses: actions/checkout@v3
        with:
          fetch-depth: 0 # Fetch all history for git info
      - uses: actions/setup-node@v3
        with:
          node-version: 18.14
      - name: Install Dependencies
        run: npm ci
      - name: Build Quartz
        run: npx quartz build
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v2
        with:
          path: public
 
  deploy:
    needs: build
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v2
```

### Synchroniseer de configuratie
Nu moeten we al deze configuratie naar Github kopiëren door alweer ons sync commando uit te voeren.

``` Powershell
npx quartz sync 
```

## Bekijken site
Nu je je site hebt gepubliceerd kan je hem bekijken via Github Pages op de URL met structuur `jouw-gebruikersnaam.github.io/quartz-repo-naam`

---


#project  #bezig 

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 28-05-2024

---
# Inleiding
## Bronnen
* https://stackoverflow.com/questions/45833358/underline-active-navbar-links-in-bootstrap-4 

## Stappen om website te maken

1. Basis site
	1. Start met een doel: "Waarvoor maak ik deze website?"
	2. Bepaal je publiek
	3. Bepaal a.d.h.v. je publiek welke content je op de website plaatst om je doel toe te lichten
	4. Maak een basis website met enkel ingebouwde elementen van bootstrap
	5. Schrijf (indien nodig) welke moeilijkere elementen je nog wilt toevoegen (bv. een contacteer formulier, video achtergrond, members gedeelte)
2. Stijlen site
	1. Maak een Mock-up voor hoe je elke pagina er wil laten uitzien
	2. Pas de stijl toe op je website
3. Verfijnen
	1. Voeg je moeilijkere elementen toe
	2. Verfijn waar nodig

## Nodige kennis
* [[Installatie bootstrap]]

# Basis site
## Voorbereiding
### Doel van website
Mensen informeren over mijn GIP en hoe ik te werk ben gegaan.

### Wat is mijn publiek?
Om te beginnen moeten we bepalen wat ons publiek is. Wij gaan onze site bestemmen voor makers en mensen die ons project volgen. Op de thuispagina niet te technisch en redelijk oppervlakkig maar wel met pagina's die het wat meer uitleggen.

### Pagina's
We gaan eerst eens bekijken welke pagina's dat we nodig hebben, ik heb deze:
* Homepagina - De thuispagina voor de 'GoBike' website
	* (Link naar 'Bike 001' *Geen pagina)
* Missie - Wat we willen bereiken met 'GoBike'
* Bike 001 - Hoe we onze eerste fiets maakten.
	* Verslag - Weergave van verslag (pdf) en bijbehorende documenten
	* Portfolio - Foto's van het maakproces
* (Praktisch - *Geen pagina)
	* Contact - Pagina met contactinformatie
	* Over - Over GoBike
	* Licentie - Meer uitleg over hoe je ons project mag gebruiken


## Elementen
### Navbar
Van boven de pagina staat er telkens een `navbar` om de site te navigeren. Die staat op elke pagina en heeft per item een `active` configuratie om te tonen dat de pagina actief staat. 

```HTML
<nav class="navbar navbar-expand-lg bg-body-tertiary">
	<div class="container-fluid">
	  <a class="navbar-brand" href="#">
		<img src="src\img\short-icon.png" width="35" alt="Gobike logo, green, shortened">
	  </a>
	  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav me-auto mb-2 mb-lg-0">
		  <li class="nav-item">
			<a class="nav-link active" aria-current="page" href="#">Home</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" aria-current="page" href="pages\missie.html">Missie</a>
		  </li>
		  <li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
			  Bike-001
			</a>
			<ul class="dropdown-menu">
			  <li><a class="dropdown-item" href="pages\bike-001\info.html">Onze eerste fiets</a></li>
			  <li><hr class="dropdown-divider"></li>
			  <li><a class="dropdown-item" href="pages\bike-001\verslag.html">Verslag</a></li>
			  <li><a class="dropdown-item" href="pages\bike-001\portfolio.html">Portfolio</a></li>
			</ul>
		  </li>
		  <li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
			  Praktisch
			</a>
			<ul class="dropdown-menu">
			  <li><a class="dropdown-item" href="pages\praktisch\contact.html">Contact</a></li>
			  <li><a class="dropdown-item" href="pages\praktisch\over.html">Over</a></li>
			  <li><a class="dropdown-item" href="pages\praktisch\licentie.html">Licentie</a></li>
			</ul>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" aria-current="page" href="#">Sitemap</a>
		  </li>
		</ul>
	  </div>
	</div>
  </nav>
```

De navbar behandelt elk element als een lijst waarin men pagina links kan toevoegen. We nemen het voorbeeld:

```HTML
<a class="nav-link" aria-current="page" href="#">Sitemap</a>
```

* De `class` wordt verklaart als een "nav-link" zodat bootstrap weet hoe ze moet gestijld / gescript worden.
* Daarna vult men in de `href` de link naar de pagina, bij een huidige pagina "#"

### Footer
Voet tekst van je website, hier zet je links naar je sociale media, een sitemap, je logo en slogan en/of wat informatieve tekst.

```HTML
  <footer class="bg-dark text-center text-white">
    <div class="container p-4">
      <!-- Tekst -->
      <section class="mb-4">
        <p>
          Een geïntegreerde proef voor de richting Informatica & Computertechnieken op het GO! Erasmusatheneum (VH) Deinze.
        </p>
      </section>
    </div>
    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
      © 2024 Copyright:
      <a class="text-white" href="https://www.pointless.company/">www.pointless.company</a>
    </div>
  </footer>
```

### Bestanden linken
Bij het linken van bestanden in mappen onder de huidige map kan je het de `../` syntax gebruiken.

```
\ (root directory)
  ├── src\
  │    └── css\
  │         └── bootstrap.css
  └── pages\
       └── bike-001\
            └── info.html

```

* Zo kan je je pagina in `/pages/bike-001/info.html` nog steeds linken naar `/src/css/bootstrap.css`

### Portfolio
mdbootstrap.com

# Stijlen

# Verfijnen
## Te doen:
- [x] Uitzoeken hoe je een mooie /bike-001/verslag krijgt i.p.v. gewoon verslag.html
- [x] Sitemap
- [ ] Uitzoeken Bootstrap variablen overschrijven (voor up te daten naar nieuwe versie)
- [x] Fredoka One H1s
- [ ] Commentaar toevoegen
- [x] Uitzoeken hoe ik footer op de onderkant van de pagina hou.
- [ ] **Verslag maken en opdracht invullen**


# Doelstellingen
---
- Logische indeling
- Tekst markeren
- Lijsten
- Links
- Afbeeldingen
- Validatie

# Notities
--- 
>[!info]
>- Mozilla Developer Network: ([link](https://developer.mozilla.org/en-US/docs/Web/HTML)) Hulpbron met alle HTML en CSS onderdelen opgelijst.
>- HTML (& CSS) validators: ([link](https://validator.w3.org/)) Hulpbron om te checken of er fouten staan in je code die je IDE soms niet weergeeft.

## Lijsten
Er bestaan drie verschillende soorten lijsten.

### Ordered list
Een gerangschikte lijst.
- Ze bestaat uit het hoofdelement `<ol></ol>`;
- en haar onderdelen `<li></li>` (= list items, nl. lijst onderdelen)

```HTML
<ol>
	<li>Eerste</li>
	<li>Tweede</li>
	<li>Derde</li>
</ol>
```

Deze code zou resulteren in:
1. Eerste
2. Tweede
3. Derde

Je kan een aantal attributen toekennen
- `start`: waar de lijst start, bv. 2 i.p.v. 1
- `type`: welke symbolen gebruikt, bv. a i.p.v. 1
- `reversed`: of de lijst moet op- of aftellen.

### Unordered list
Een ongeranschikte lijst
- Ze bestaat uit het hoofdelement `<ul></ul>`;
- en haar onderdelen `<li></li>` (= list items, nl. lijst onderdelen)

```HTML
<ul>
	<li>Pannenkoeken</li>
	<li>Koffie</li>
	<li>Suiker</li>
</ul>
```

Deze code zou uitkomen:
- Pannenkoeken
- Koffie
- Suiker

### Description / Definition List
Een lijst met definities en beschrijvingen
- Ze bestaat uit het hoofdelement `<dl></dl>`;
- en haar onderdelen;
	- `<dt></dt>`: Description Term (Definitie)
	- `<dd></dd>`: Description Details (Uitleg definitie)

```HTML
<ul>
	<dt>Pannenkoeken</dt>
	<dd>
		Pannenkoeken zijn dunne, luchtige deegflappen, 
		gebakken in een pan.
	</dd>
	<dt>Suiker</dd>
	<dd>
		Suiker is een zoete, kristallijne 
		stof afkomstig van planten.
	</dd>
</ul>
```

>[!info]
>Je mag je tekst altijd over meerdere regels zetten tijdens het coderen. Enkel een `<br>` element zal de tekst over meerdere lijnen verdelen op de effectieve site.



#### Lijsten nesten
Je kan meerdere lijsten door elkaar gebruiken.

```HTML
<ol>
	<li>Eerste onderdeel</li>
	<li>Tweede onderdeel <!-- ^1 -->
		<ul> 
			<li>Subonderdeel één</li>
			<li>Subonderdeel twee</li>
			<li>Subonderdeel drie</li>
		</ul>
	</li>
	<li>Derde onderdeel</li>
</ol>
```

Dit zal resulteren in:
1. Eerste onderdeel
2. Tweede onderdeel
	- Subonderdeel één
	- Subonderdeel twee
	- Subonderdeel drie
3. Derde onderdeel

>[!info]
>We zullen de tweede (geneste) lijst in een onderdeel (`li`) van het eerste lijst steken. Wil men nog een beschrijving geven aan dit onderdeel, dan sluit men de lijst nog steeds aan het einde. (Zie ^1)

## Inline v.s. blokelementen
### Blok element
Start altijd op een nieuwe regel en neemt de volledige beschikbare breedte in op de webpagina.
- bv. een titel (`<h1>`), een paragraaf (`<p>`)

### Inline element
Nemen maar zoveel breedte in als nodig en zitten meestal in blok elementen verwerkt.
- bv. een foto (`<img>`), een link (`<a>`), ...

## Semantiek
Verwijst naar het gebruik van tags die de betekenis en structuur van content aangeven.
- bv. een titel, tekst, ...

### Non-semantische elementen
Een non-semantisch element in HTML is een tag die geen specifieke betekenis of structuur aangeeft.

```HTML
<div class="grote-tekst">
  <h1>Welkom op mijn website!</h1>
  <p>Dit is een <span class="markeer">belangrijk</span> bericht.</p>
</div>
```

#### DIV
Een groepering van blok elementen samen gestoken voor lay-out doeleinden (stijlen met CSS) 
- Zie voorbeeld `<div>`, `grote-tekst`

#### SPAN
Hetzelfde als de div maar dan met inline elementen.
- Zie voorbeeld, `<span>`, `markeer`

## Text blok of alles i.v.m. tekstblokken
### Blockquote
Wordt gebruikt om een tekstblok te markeren dat een citaat van een andere bron is.

```HTML
<p>Normale tekst</p>
<blockquote>
  "Heineken smaakt naar pis" – Normale mensen
</blockquote>
```

![[Pasted image 20241006141947.png]]

### Figure
Groepeert een 'figuur' (afbeelding, grafiek, tabel, citaat) met een bijschrift.

```HTML
<figure>
	<img src="openbrein.png">
	<figcaption>
		Logo van openbrein in 'light-mode'
	</figcaption>
</figure>
```

![[Pasted image 20241006142414.png]]
### Address
Markeren van contactinformatie.

```
<address>
  E-mail: jelle@openbrein.org <br>
  Naam: Jelle
</address>
```

![[Pasted image 20241006142748.png]]
### Pre
Behoudt tabs, witruimte, ... vanuit html code. (= pre-formatted)

```HTML
<pre>
	Ik doe   wat ik wil en het blijft
	allemaal exact zo staan! - zot      jes
</pre>
```

![[Pasted image 20241006143204.png]]
### Hr
Een horizontale lijn tussen tekst.

```HTML
<hr>
```


**Voorbeeld**

<hr>

## Text inline of alles i.v.m. tekstelementen
### Strong
Vetgredrukt zetten, nadruk leggen.

```HTML
<p>Dit is<strong>vetgedrukte tekst</strong>!</p>
```

**Voorbeeld**
<p>Dit is<strong>vetgedrukte tekst</strong>!</p>

### Em
Legt de klemtoon op een deel tekst. (Cursief, italic)

```HTML
<p>Dit is <em>beklemtoonde tekst</em>!</p>
```

**Voorbeeld**
<p>Dit is <em>beklemtoonde tekst</em>!</p>

**Voorbeeld**
Zet de tekst in het klein.

```HTML
<p><small>Kleine tekst!</small></p>
```

**Voorbeeld**
<p><small>Kleine tekst!</small></p>

### Cite & Quote
Markeren van de naam van een auteur of bronwerk.

```HTML
<p><q>Deze man is dood</q> <cite>1:23 Medische fiche</cite></p>
```

**Voorbeeld**
<p><q>Deze man is dood</q> <cite>1:23 Medische fiche</cite></p>
### Abbr & Dfn 

```HTML
<p>
  <dfn id="html"><abbr title="HyperText Markup Language">HTML</abbr> </dfn> is a
  markup language used to create the semantics and structure of a web page.
</p>
```

<p>
  <dfn id="html"><abbr title="HyperText Markup Language">HTML</abbr> </dfn> is a
  markup language used to create the semantics and structure of a web page.
</p>

### Code
```HTML
<p><code>ls</code> is een voorbeeld van een commando in Linux.</p>
```

<p><code>ls</code> is een voorbeeld van een commando in Linux.</p>
### Time
Om een tijdstip of datum aan te duiden.
```HTML
<p>Dit artikel werd gepubliceerd op <time datetime="2024-09-25">25 september 2024</time>.</p>
```

<p>Dit artikel werd gepubliceerd op <time datetime="2024-09-25">25 september 2024</time>.</p>

### Samp
Wordt gebruikt om voorbeeldoutput van een computerprogramma of een systeemweergave weer te geven.

```HTML
<p>Het programma gaf de volgende uitvoer:</p> <pre><samp>Welkom bij het programma! Verwerk gegevens...</samp></pre>
```

<p>Het programma gaf de volgende uitvoer:</p><pre><samp>Welkom bij het programma! Verwerk gegevens...</samp></pre>

### Kbd
Wordt gebruikt om gebruikersinvoer te markeren, oftewel de tekst die door een gebruiker via een toetsenbord of ander invoerapparaat is ingevoerd

```HTML
<p>Typ <kbd>ls</kbd> om de bestanden in de huidige directory te zien.</p>
```

<p>Typ <kbd>ls</kbd> om de bestanden in de huidige directory te zien.</p>
### S
Wordt gebruikt om **doorgehaalde tekst** of **doorgehaalde inhoud** weer te geven

```HTML
<p>De prijs van de oude smartphone was <s>€799</s>, maar nu is de prijs verlaagd naar €599.</p>
```

<p>De prijs van de oude smartphone was <s>€799</s>, maar nu is de prijs verlaagd naar €599.</p>
### Sub & Sup
```HTML
<p>De formule voor water is H<sub>2</sub>O en 2<sup>3</sup> = 8.</p>
```

<p>De formule voor water is H<sub>2</sub>O en 2<sup>3</sup> = 8.</p>
### Mark
Markeren van tekst.

```HTML
<p>Ik <mark>markeer</mark> enkel nuttige informatie</p>
```

<p>Ik <mark>markeer</mark> enkel nuttige informatie</p>
### Del & Ins
Overschrijven en invoeren van nieuwe dingen.

```HTML
<p>De originele prijs was <del>€799</del>, maar de nieuwe prijs is <ins>€599</ins>.</p>
```

<p>De originele prijs was <del>€799</del>, maar de nieuwe prijs is <ins>€599</ins>.</p>

## Hyperlinks
Een hyperlink heeft als elementnaam 'a'. In de 'href' attribuut zet je de link, in de content zetten we wat de gebruiker te zien krijgt. Bv:

```HTML
<a href="https://www.hogent.be">Website HoGent</a>
```

**Voorbeeld**
<a href="https://www.hogent.be">Website HoGent</a>

De hyperlinks kunnen naar verschillende plaatsen op het web leiden. 

### Een pagina binnen dezelfde website
Om een navigatiemenu te maken zullen we naar pagina's binnen onze website willen browsen. We maken  de `href` gewoon de bestandsnaam van de pagina i.p.v. de link.

```HTML
<ul>
<li><a>Home</a> </li>
<li><a href="pictures.html">Foto's</a></li>
<li><a href="projects.html">Mijn projecten</a></li>
<li><a href="social.html">Socials</a></li>
</ul>
```

### Een pagina van een andere website
We zullen nu onze navigatie-bar uitbreiden om de website van HoGent te linken.

```HTML
<ul>
<li><a>Home</a> </li>
<li><a href="pictures.html">Foto's</a></li>
<li><a href="projects.html">Mijn projecten</a></li>
<li><a href="social.html">Socials</a></li>
<li><a href="https://www.hogent.org">Onze school</a></li>
</ul>
```

### Een plaats binnen een pagina
Je kan ook naar specifieke koppen in een pagina linken. Dit doen we door een `id` te geven aan een kop en dan een hashtag plaatsen met die id.

**Op de pagina** `contact.html`
```HTML 
<h1>Contactinformatie</h1>
<h2 id="telefoon">Bel ons!<h2>
```

**Link naar die kop**
```HTML
<a href="#telefoon">Ons telefoonnummer</a><
```

>[!warning]
>Als je van een andere pagina (bv. `home.html`) naar die kop wilt linken (in `contact.html`) zal je dit ook duidelijk moeten maken.
>```HTML
><a href="contact.html#telefoon">Ons telefoonnummer</a><
>```

### Een link voor een externe app (email, gsm, ...)
- Een e-mail: `<a href="mailto:jelle@openbrein.org">Mail me</a>`
- Bellen: ` <a href="tel:+320000000000">Bel me</a>`
- Bericht:  `<a href="sms:+320000000000">Bel de webmaster</a>`

### Een link via een een nieuw tabblad openen
Je voegt de attribuut `target="_blank"` toe om een nieuw tabblad te openen.

```HTML
<a href="http://www.openbrein.org" target="_blank">Mijn site</a>
```

### Een pdf downloaden of weergeven
- Weergeven (in browser): ` <a href="locatie/van/pdf.pdf" >Zie pdf</a>`
- Downloaden: ` <a href="locatie/van/pdf.pdf" download="mijn pdf"> >Zie pdf</a>` 
	- De content van het attribuut `download=` wordt de naam van de gedownloade PDF.

## Paden
Je bestanden staan op verschillende plaatsen in de folder van je website. Om ze te bereiken gebruiken we de paden naar de bestanden. 
- bv. `pages/contact.html`, `src/css/main.css`, ...

![[Pasted image 20241007091433.png]]

Maar wat als je bv. van index.html (in de [[Root (bestanden)|root]] -> `/index.html`) wilt linken naar contact.html (in `/pages/contact.html`) kan je dit niet doen door gewoon `href="contact.html"` in te geven.
- Je zal moeten linken naar het effectieve pad.

We kunnen dit op twee manieren.

### Relatief pad
Opgebouwd relatief tot de locatie van het bestand. We nemen 'sprongetjes' naar boven of beneden.

**Voorbeeld (vanuit `index.html` -> zie foto [[#Paden]])**
```HTML
<a href="pages/contact.html">Contacteer ons!</a>
```

**Voorbeeld (vanuit `contact.html`)**
```HTML
<a href="../index.html">Thuis!</a>
```

- De `..` staat voor een folder naar beneden.

### Absolute pad
We volgen de volledige aftakking vanaf de 'root' door de link te beginnen met `/`. 
- We starten altijd vanaf nul (de root), dus of het bestand nu drie folders boven ons staat of vijf onder het maakt niet uit. We schrijven het pad altijd vanaf de hoofdmap.

**Voorbeeld (vanuit `index.html`)**
```HTML
<a href="/pages/contact.html">Contacteer ons!</a>
```

**Voorbeeld (vanuit `contact.html`)**
```HTML
<a href="/index.html">Thuis!</a>
```


## Richtlijnen
1. Een link een duidelijke betekenis hebben
2. Een link is best geïntegreerd in een tekst
	1. Niet bv. Een hond is een zoogdier ([link]())
	2. Wel bv. Een hond is een [zoogdier ]()
3. Geen tekst onderlijnen die geen link is

## Paginaopbouw
In HTML 5 krijgen we nieuwe logische blokken om onze website op te bouwen.
- `<header>`: De hoofding van onze pagina, hier zet men meestal het logo, de tagline, de naam, ... voor onze site.
- `<nav>`: Navigatie-bar voor de website, hier staan je pagina's die je bekend wilt maken aan de bezoeker. (Soms ingewerkt in de header)
- `<section>`: Een sectie met grotendeels dezelfde inhoud 
- `<article>` : Een onderdeel van de sectie
- `<aside>`: Een onderdeel die naast een sectie staat.
- `<footer>`: De voettekst

![[Pasted image 20241007140958.png]]

>[!info]
>Vroeger (voor HTML ) deed men dit enkel met `div` elementen die men dan ging stijlen om de huidige hang van zaken te bekomen. 

## Favicon
Het icoon die je naast je tabblad ziet in de browser. Je kan ze toevoegen door:

```HTML
<link rel="icon" href="favicon.png">
```

# Bronnen
---
- [Slides - Github](https://web-development-i.github.io/overview/docs/02slHTMLBasisDeel2.pdf)
# Doelstellingen
---
- CSS verwerking door browsers
- Cascading
- Inheritance
- Developers Tools 
- CSS values and units
- Browser reset / normalize.css
- Web fonts

# Notities
--- 
## CSS verwerking door browsers
### Standaardwaarden
Ookal pas je geen stijl doe zal je zien dat bv. de achtergrondkleur basis wit is, de tekst zwart en koppen groter zijn dan de tekst. 
- Deze ingebouwde standaardwaarden komen van de `user-agent-stylesheet` en hangt af van browser tot browser.

**Voorbeeld `h2` op een website zonder CSS** (zie ==Developer tools==)
![[Pasted image 20241103144452.png]]

### Browser `reset.css` / `normalize.css`
Vroeger zaten deze standaardwaarden niet altijd ingebakken in de browser of waren ze van browser tot browser gigantisch verschillend. 
- Nu zijn die verschillen wat kleiner, maar om ze volledig te elimineren gebruiken ontwikkelaars soms:
	- (Ouder) [`reset.css`](https://meyerweb.com/eric/tools/css/reset/)
	- (Nieuwer) [`noramlize.css`](https://necolas.github.io/normalize.css/)

#### Importeren van een extra CSS bestand
Je kan een extra CSS bestand importeren a.d.h.v. html door ze boven jouw eigen stijlbestand te zetten

- Dit zal ervoor zorgen dat indien iets niet in de `main.css` gevonden word er naar de `normalize.css` gekeken wordt (zie ==cascading==)

```HTML
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/main.css">
```

Maar dit is niet de beste optie aangezien je dit aan elk html bestand zal moeten toevoegen. Met de `@import` instructie in ons (vb.) `main.css` bestand kunnen we dit veel gemakkelijker doen.

```CSS
@import url("normalize.css");
```

- Je moet het enkel vanboven in je hoofd CSS bestand te zetten en dan ben je klaar voor elke pagina!

### Verwerking & DOM tree
Nadat de browser een HTML document geladen heeft, wordt een
boomstructuur (DOM tree) van alle elementen gemaakt.

![[Pasted image 20241103152622.png]]

- Deze DOM tree heeft 'nodes' waarop de stijl wordt toegepast (hokjes in het diagram)

**Voorbeeld**
```HTML
<html>
	<head>
		<link rel="stylesheet" href="main.css" />
	</head>
	<body>
		<p>
		Lorem <em> ipsum </em> dolor sit
		amet, consectetur adipiscing elit.
		</p>
	</body>
</html>
```

![[Pasted image 20241103152812.png]]


### Developer tools
In (bijna) elke browser zitten er ontwikkellaarstools. Ze zorgen ervoor dat je de achterliggende HTML, CSS, requests en bestanden van eender welke website bloot kan leggen en manipuleren. 

#### Gebruik
Ga naar eender welke website en klik met de rechtermuisknop op de pagina. Selecteer `inspecteren` of `inspect`

**Voorbeeld (Chrome)**
![[Pasted image 20241103150440.png]]

#### Basis onderdelen
Voor nu houden we het gemakkelijk, je beperkt jezelf tot de pagina `Elements`. 

Ze bevat:
- Aan de linkerkant: Alle html code in inklapbare blokken (klik op het pijltje om ze uit te klappen)
- Aan de rechterbovenkant: De CSS stijlen toegepast op het element die aangeklikt staat in de html code
- Aan de rechteronderkant: Het boxmodel (zie later) met de margin, border en padding visueel getoont

![[Pasted image 20241103150650.png]]

![[Pasted image 20241103150650.png]]




## Cascade
De cascade is het mechanisme waarbij een browser alle declaraties die op
een element betrekking hebben een bepaalde prioriteit toekent en zo de
uiteindelijke waarde bepaalt voor een eigenschap (intern zal de browser
de declaraties hiervoor sorteren op prioriteit)

### Origin
De CSS stijlen in moderne browsers zijn afkomstig 3 types stylesheets:
- `User-agent stylesheets`:  De basis stylesheet van de browser
- `User stylesheets` (wordt bijna niet gebruikt): Door de gebruiker gebrachte stylesheet voor toegankelijkheid
- `Author stylesheets`: De stylesheet die je zelf invoert

### Belang
#### Manueel belang toevoegen
De prioriteit van een stijl kan verhoogd worden door `!important` toe te voegen na de property.

```CSS
h1 {
	text-decoration: none !important;
}
```

#### Voorrangsregels
1. Important user agent declarations
2. Important user declarations
3. Important author declarations
4. Normal author declarations
5. Normal user declarations
6. Normal user agent declarations

Normal author declarations overschrijven dus Normal user agent
declarations. (logisch aangezien de stijlen van de browser overschreven worden door jou stijlen zonder dat je telkens `!important` moet zetten)

### Specificity
De specificity bepaald welke van de stijlregels wordt toegepast a.d.h.v. rang. De stijlregel met de hoogste specificity wordt toegepast

- IDs (`#elias`)zijn het specifiekst, en dus het hoogst.
- Klassen (`.vetter`) en attribuut selectoren (`a[href^="http"]`)  waarop pseudo-klassen (`:hover`, `:first-of-type`, ...) worden toegevoegd zijn minder specifiek maar specifieker dan:
- Type selectoren (`p`) en pseudo-elementen (`::first-letter`)

![[Pasted image 20241103225622.png]]

>[!warning]
>De universal selector (`*`) wordt niet meegeteld bij het berekenen van de specificity en heeft specificity 0.

**Voorbeeld**
De regel `article > p.notes`  krijgt specificity `0, 1, 2`

![[Pasted image 20241103225832.png]]

#### Meerdere stijlen
Wanneer er op één element meerdere stijlen wordt toegepast wint diegene met de hoogste specificity (beduidendere)

**Voorbeeld**

```CSS
/* specificity: 0,0,0 */
* {color: green;}
/* specificity: 0,0,1 */
li {color: aqua;}
/* specificity: 0,0,2 */
ul>li {color: orange;}
/* specificity: 0,1,1 */
li.red {color: red;}
/* specificity: 1,0,0 */
#content {color: blue;}
```

```HTML
<h1>Specificity</h1>
	<ul>
		<li>Item One</li>
		<li id="content" class="red">
		Item Two
		<ol>
				<li class="red">2.1</li>
				<li>2.2</li>
			</ol>	
		</li>
	</ul>
```

![[Pasted image 20241103230358.png]]

#### Zelfde specificity
Indien dezelfde specificity twee- of meermaals wordt toegepast zal degene die het laagst in de CSS staan worden gebruiken.

```CSS
p {
	color: green;
}

p {
	color: grey;;
}
```

- De tekst zal dus grijs (`grey`) zijn.

## Inheritance
Indien er geen waarde opgegeven werd in de cascade wordt er gekeken of de eigenschap van de parent (bovenstaande element) overerfbaar is. Indien ja wordt de property ook op het element toegepast.

```HTML
<p><em>Deze woorden</em> staan lekker scheef</p>
```

```
p {
	color: red;
}
```

**Voorbeeld**
<p style="color: red;"><em>Deze woorden</em> staan lekker scheef</p>
#### Overerfbaarheid
Niet alle stijlen worden overerft. Voorbeelden die wel overerft worden:
- (bv.) Tekst: `color, font-family, font-size, font-style, text-align, text-transform, ...`

Indien de property niet overerfbaar is maar je dit wel wilt doen erven kan men de eigenschap toch doorgeven door de globale  `inherit` te gebruiken waar men normaal gezien de waarde invoert (value)

**Voorbeeld**

```CSS
background-color: inherit;
```

>[!info]
>Je kan zien of een property overerfbaar is of niet op de MDN docs. 

## CSS value (of data) types
CSS waardes, niet te verwarren met CSS properties, zijn types die definiëren welke waarden er kunnen ingegeven worden als value voor een property 
- bv. Je kan voord de property `width` geen `rgb(234, 231, 242)` (RGB kleur) invullen, maar wel ...
- bv. `<length>`: Een numerieke waarde gevolgd door een eenheid 
	- `1rem`, `24cm` `102px`, ... 


>[!info]
>CSS data types net verwarren met html omdat ze de `<>` bevatten. Ze hebben niks te doen met de semantiek van de website.

## Web fonts
Fonts op een website kunnen enkel worden geladen indien ze beschikbaar zijn voor de browser, dit kan door bv:
- Het font staat op de bezoeker's computer
- Het zit standaard in de browser
- Het font wordt door de website afgeleverd aan de browser van de bezoeker
	- Direct via de webserver waarop de website draait (je zet het in de bestanden van je webserver, bv. `/src/fonts/eenfont.ttf`)
	- Of via een externe C'

# Bronnen
---
- [Slides - Github](https://web-development-i.github.io/overview/)
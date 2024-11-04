# Doelstellingen
---
- Stijlregel
- Soorten stylesheets
- Kleuren
- Tekst - typografie
- Opmaak lijsten
- Selectors

# Notities
--- 
## Wat is CSS
CSS is een verzameling van stijlregels (style rules) om
webpagina’s op te maken.
- CSS staat voor 'Cascading Style Sheets'

Op deze manier kunnen we een website opdelen in semantische (de tekst, koppen, afbeeldingen, ...) en stijl onderdelen (lettertype tekst, grote kop, waar staat afbeelding, ...)
## Elementen CSS
![[Pasted image 20241019141746.png]]

Een stijlregel in CSS is opgebouwd 4 delen:
- De selector: Hetgene dat je wilt stijlen (bv. 'h1')
- De declaration: Hoe men wilt gaan stijlen, ze bestaat zelf uit twee componenten:
	- Property: wat men van de selector wil gaan stijlen (bv. kleur)
	- Value: De waarde die de property bezit (bv. groen)

## CSS invoegen
We hebben drie verschillende mogelijkheden om CSS toe te passen op een HTML bestand. We overlopen wat ze zijn en hoe we ze toepassen. 

## Inline CSS
Bij inline CSS gaan we de stijl info letterlijk in de HTML elementen zetten.
* We starten met de ‘stijl’ attribuut zodat onze browser weet dat er nu CSS komt om de paragraaf te stijlen.
- Nu gaan we de eigenschap ‘color’ of kleur aanpassen.
- We geven de waarde waarmee we de ‘color’ eigenschap willen aanpassen, in dit geval ‘orange’ ofwel oranje.

```HTML
<p style=’color: orange;'>Ik ben oranje</p>
```

### Meerdere eigenschappen
We zetten op het einde van de eigenschap een puntkomma (;). Dit zorgt ervoor dat we erna nog een attribuut kunnen toekennen, bv. het font!

```
<p style=’color: orange; font-family: Arial;'>Ik ben oranje</p>
```

## Interne CSS
Bij interne CSS zetten we onze styling niet meer in de elementen maar wel nog steeds in ons HTML document. 
* We doen dit a.d.h.v. het html element ‘style’.
* Daarna gebruiken we de selector, in dit geval ‘p’ voor paragraaf, gevolgd door ‘{}’ haakjes.
* Ten slotte gevolgd door de eigenschap en waarde.
* Opnieuw eindigen we elke eigenschap met ‘;’ zodat we meerdere kunnen 

```HTML
<style>
  p {
    color: orange;
  }
</style>

<p>Ik ben oranje</p>
<p>Ik ben ook oranje</p>
```

## Externe CSS
Externe CSS is een andere vorm om CSS toe te passen. We gebruiken een extra bestand met de ‘.css’-extensie om een stijl toe te passen.

Je maakt een html bestand aan met wat inhoud en kijkt wat je wilt veranderen.

```HTML
<p>Ik ben oranje</p>
<p>Ik ben ook oranje</p>
```

En daarna maak je een `.css` bestand aan en pas je het element aan met een selector.

```CSS
p {
  color: orange;
}
```

### Linken van bestanden
Om je HTML aan te passen a.d.h.v. een extern CSS bestand moet je die eerst linken. We doen dit letterlijk a.d.h.v. het ‘link’. Dit zetten we in de '[[Web Development I#Head|head]]'-sectie van het HTML bestand.
1. We starten natuurlijk met ‘link’ om een extern bestand (internet of opgeslagen op pc) te linken.
2. Daarna zetten we het type van het bestand dat we willen linken, in ons is dit een CSS bestand ofwel een 'stylesheet'.
3. Ten slotte zetten we de bestandsnaam van het css bestand, in ons geval is dit ‘styles.css’.

```HTML
<head>
  <link rel=”stylesheet” href=”styles.css”>
<head>

<body>
  <p>Ik ben oranje</p>
</body>
```

```CSS
p {
  color: orange;
}
```

## CSS properties

>[!warning]
>Soms tonen we enkel een fragment met de property, niet de bijbehorende selector (bv. body). We tonen ook enkel de CSS en niet altijd de HTML.
>```
>body {
>	background-color: red;
>}
>```
>wordt
>```
>background-color: red;
>```


### Achtergrondkleur
De kleur van de achtergrond kan je veranderen met `background-color` gevolgd door de kleur.

```CSS
background-color: red;
```

### Achtergrondafbeelding
Als we een afbeelding willen toepassen op de achtergrond van onze website kunnen we `background-image` toepassen.

#### Herhaling
Een achtergrondafbeelding herhaalt basis. Door `background-repeat` op `no-repeat` zetten kunnen we dit stoppen. Andere vormen van herhaling zijn:
- `repeat-x;`: Herhaalt de afbeelding enkel horizontaal
- `repeat-y;`: Herhaalt de afbeelding enkel verticaal
- `round;`: Herhaalt de afbeelding zonder dat hij afgesneden wordt door hem te stretchen.

```CSS
body {
  background-image: url(../images/bush.png);
  background-repeat: no-repeat;
}
```

**Voorbeeld**
![[Pasted image 20241102112311.png]]

#### Vastzetten
Aan de hand van `background-attachment` kunnen we de achtergrondafbeelding op een bepaalde manier vastzetten.
- `fixed`: Vast t.o.v. venster, inhoud scrollt over afbeelding.
- `scroll`: (Standaard) Scrolt mee met de inhoud
- `local`: Schuift enkel mee met de inhoud van het element 

#### Positie
Met `background-position` kunnen we de positie van de afbeelding aanpassen. Dit kunnen we op verschillende manieren.

```CSS
/* Sleutelwoorden */
background-position: top;
background-position: bottom;
background-position: left;
background-position: right;
background-position: center;

/* Vaste lengtes */
background-position: 0 0;
background-position: 1cm 2cm;
background-position: 10ch 8em;

/* Percentages t.o.v. element */
background-position: 25% 75%;

/* Verschuiving t.o.v. zijkanten  */
background-position: bottom 10px right 20px;
background-position: right 3em bottom 10px;
background-position: bottom 10px right;
background-position: top right 10px;
```

Enkele speciale zijn de 'globale' properties.
- `inherit`: Neemt de positie over van het bovenliggende html element (ouder)
- `initial`: Neemt de initiële waarde aan (0,0) (Linkerbovenhoek.)
- `revert`: Negeert de huidige CSS stylesheet en gebruikt die van de browser of indien aanwezig de onderliggende stylesheet (hiërarchisch)
- `unset`: Neemt de positie van het bovenliggende element over of indien niet mogelijk de initiële waarde.

#### Uitrekken en afknippen
Met `background-clip` kunnen we bepalen tot waar de achtergrond uitloopt of hoe het uitgeknipt wordt.
- `border-box`: (standaard) De achtergrond rekt tot de rand van het element
- `padding-box`: De achtergrond stopt bij de binnenkant van de padding. De rand (border) wordt niet bedekt.
- `content-box` De achtergrond beperkt rekt tot de content. De padding EN de border worden niet bedekt.
- `text`: Achtergrond wordt toegepast op de tekst. (Hiervoor is `color: transparent` wel nodig ander overschrijft de kleur de achtergrond.)

```CSS
h1 {
  background-image: url(../images/bush.png);
  background-attachment: local;
  background-clip: text;
  color: transparent;
}
```

**Voorbeeld**
![[Pasted image 20241102120315.png]]
#### Vertrekpunt
`background-origin` bepaalt van waaruit de achtergrond start. 
- `border-box`: (standaard) De achtergrond begint bij de rand (border) van het element.
- `padding-box`: De achtergrond begint bij de binnenkant van de padding.
- `content-box` De achtergrond begint bij de rand van de content.

#### Schaling
Met `background-size` bepalen we de schaling van de foto
- `contain`: De afbeelding wordt geschaald zodat deze volledig binnen het element past zonder de verhoudingen te verliezen, maar kan ruimte overhouden.  ![[Pasted image 20241102131212.png]]
- `cover`: De afbeelding wordt zo geschaald dat deze het hele element bedekt zonder de verhouding te verliezen. Het kan de afbeelding bijsnijden om te passen. ![[Pasted image 20241102131247.png]]
- `auto`: De afbeelding behoudt zijn oorspronkelijke grootte.
- Waarden: Je kan ook waarden ingeven zoals `50%`, `1cm`, .`5rem`, ... om de afbeelding te schalen.

### Kleurverloop
We kunnen kleurverlopen (gradients) toepassen op de achtergrond van onze elementen. Er zijn drie (niet herhalende) types:
- `linear-gradient`:  Een kleurverloop a.d.h.v. een lijn
  <div style="width: 100px; height:100px; background: linear-gradient(#f69d3c, #3f87a6);"></div>
- `radial-gradient`: Een kleurverloop a.d.h.v. een enkel punt
<div style="width: 100px; height:100px; background: radial-gradient(#f69d3c, #3f87a6);"></div>
- `conic-gradient`: Een kleurverloop a.d.h.v. een lijn eindigend in een punt
<div style="width: 100px; height:100px; background: conic-gradient(#f69d3c, #3f87a6);"></div>

#### Syntax (Niet overal toepasbaar)
```CSS
background: [TYPE]-gradient([VORM] at [LOCATIE], [KLEUR1], [KLEUR2], ..., [KLEUR_X] [PERCENTAGE])
```

**Voorbeeld**
```CSS
background: radial-gradient(ellipse at bottom, #e66465, transparent)
```

<div style="width: 100px; height:100px; background: radial-gradient(ellipse at bottom, #e66465, transparent)"></div>

### Lijsten
#### Opsommingsteken
Met `list-style-type` kunnen we het type opsommingsteken aanpassen.
```CSS
list-style-type: upper-alpha;
```

**Voorbeeld**
![[Pasted image 20241102135722.png]]

#### Afbeelding
Met `list-style-image` kunnen we een afbeelding gebruiken als opsommingsteken.

```
list-style-image: url('../images/star.png');
```

**Voorbeeld**
![[Pasted image 20241102135853.png]]

#### Plaatsing
Je kan de plaatsing van het opsommingsteken veranderen, binnenin `inside` of apart `outside` (basis).

**Voorbeeld `inside`**
![[Pasted image 20241102140049.png]]

### Tekst
#### Familie
`font-family` geeft een geprioritiseerde lijst van lettertypes die gebruikt moet worden.

```CSS
font-family: Arial, Helvetica, sans-serif;
```

- Indien `Arial` niet kan geladen worden (niet geïnstalleerd op pc, niet beschikbaar meer, foutje in configuratie ...) zal hij `Helvetica` laden, enzv ...

#### Grootte
De grootte van het lettertype veranderen we met `font-size`. Je doet dit via
- Numerieke waarden: centimer (cm), pixels (px), em, root em (rem), ...
- Absolute waarden: `xx-small`, `x-small`, `small`, `medium`, `large`, `x-large`, `xx-large`, `xxx-large`
- Globale waarde: `inherit`, `initial`, `revert`, (`revert-layer`), `unset`

#### Regelafstand
Met `line-height` regelen we de regelafstand (witruimte tussen regels)

```CSS
p {
  line-height: 50px;
}
```

**Voorbeeld**
<div><p style="line-height: 50px; font-family:'Times New Roman';">ik hou van regels die ver van elkaar staan</p><p style="line-height: 50px; font-family:'Times New Roman';">ik ook!</p></div>

### Vetheid
Met `font-weight` kunnen we de vetheid van tekst aanpassen. We gaan van 100 tot 900
```CSS
font-weight: 500;
```

**Voorbeeld**
<div>
<ul>
<li style="font-weight: 100">100: Thin</li>
<li style="font-weight: 200">200: Light</li>
<li style="font-weight: 400">400: Normaal</li>
<li style="font-weight: 600">600: Semi bold</li>
<li style="font-weight: 700">700: Bold</li>
<li style="font-weight: 800">800 Extra bold</li>
<li style="font-weight: 900">900: Black</li>
</ul>
</div>

#### Weergave tekst
`font-style` bepaalt of tekst normaal italiek of schuin wordt gezet.

```CSS
font-style: italic;
```

**Voorbeeld**
<p style="font-style: italic; font-family:'Times New Roman';">a</p>

#### Uitrekken & indrukken
Met `font-stretch` kunnen we exact dat doen.
- Waarden: a.d.h.v. percentages (<100 indrukken, >100 uitrekken)
- Sleutelwoorden: `semi-condensed`, `condensed`, `extra-condensed`, `ultra-condensed`, `semi-expanded`, `expanded`, `extra-expanded`, `ultra-expanded`
- Globale waarden

```CSS
font-stretch: 50%;
```

**Voorbeeld**
![[Pasted image 20241102151438.png]]
#### Uitlijnen
a.d.h.v. `text-align` kunnen we tekst op een specifieke manier uitlijnen, waaronder:
- `left`, `right`, `center`: Links, rechts of in het midden
- `start`, `end`: Hangt ervan af wat er ingesteld staat, indien links naar rechts start hij bij links en eindigt hij bij rechts.
- `justify`: Creëert witruimte om de regels mooi over het element te verdelen

```CSS
text-align: justify;
```

**Voorbeeld**
<div><p style="text-align: justify;">Integer elementum massa at nulla placerat varius. Suspendisse in libero risus,
  in interdum massa. Vestibulum ac leo vitae metus faucibus gravida ac in neque.
  Nullam est eros, suscipit sed dictum quis, accumsan a ligula.</p></div>
>[!info]
>Je kan dit ook enkel toepassen op de laatste regel (`text-align-last`), syntax blijft hetzelfde.

#### Decoratieve lijnen
We kunnen met `text-decoration` (`text-decoration-line`, `text-decoration-style`, `text-decoration-color`) lijneffecten toepassen op een tekst.

```CSS
text-decoration-color: green;
text-decoration-line: underline;
text-decoration-style: wavy;
```

of

```CSS
text-decoration: green wavy underline;
```

**Voorbeeld**
<div><p style="text-decoration: green wavy underline;">Integer elementum massa at nulla placerat varius.</p></div>

#### Inspringen
Met `text-indent` kunnen we tekst laten inspringen a.d.h.v. de normale waarden (percentages, px, rem, em, ...)

```CSS
text-indent: 30%;
```

<div><p style="text-indent: 3em;">Dees stoan geundenteürd</p></div>

#### Verticale tekst
Om te wisselen tussen verticale en horizontale tekst gebruiken we `text-orientation` en moet `writing-mode` verschillen van `horizontal-tb`. Er zijn verschillende vormen van draaien.

- `mixed`:  Draait de karakters op hun zijkant (90°)
- `upright`: Zet de karakters boven elkaar
- `sideways`: Volledige lijn wordt gedraait i.p.v. per individueel karakter
- `sideways-right`: Zelfde als `sideways` maar bestaat nog voor compatibaliteit redenen
- `use-glyph-orientation`:

```CSS
writing-mode: vertical-rl;
text-orientation: mixed;
```

<div><p style="writing-mode: vertical-rl;
text-orientation: mixed;">zijwaarts.</p></div>

#### Overlopende tekst
Wanneer er tekst is die verstopt wordt (gebruiker kan niet meer zien) door het overflowen van karakters gebruiken we de `text-overflow` property om gedrag te definiëren

```CSS
text-overflow: ellipsis;
```

- `clip`: knipt gewoon de tekst af waar het er niet meer op kan
- `ellipsis`: toont `...` 

#### Schaduw
Met `text-shadow` kunnen we schaduw toepassen op onze tekst

**Syntax**
```CSS
text-shadow: [HORIZONTALE VERSCHUIVING] [VERTICALE VERSCHUIVING] [DIAMETER VERVAGING] [KLEUR];
```

```CSS
text-shadow: 1px 1px 2px black;
```

**Voorbeeld**
<div><p style="text-shadow: 1px 1px 2px red, 0 0 1em blue, 0 0 0.2em blue;">wauw!<p></div>
#### Grote <-> Kleine letters
Aan de hand van `text-transform` kunnen we eender welke tekst in hoofdletters, kleine letters of elke eerste letter in hoofdletters

- `uppercase`: ALLEMAAL GROTE LETTERS
- `lowercase`: allemaal kleine letters
- `capitalize`: Start Met Hoofdletter

```CSS
text-transform: uppercase;
```

```HTML
<p>kleine jongens worden groot</p>
```

<p style="text-transform: uppercase;">kleine jongens worden groot</p>

#### Witruimte toepassen
`white-space` verandert het gedrag van waar witruimte wordt toegepast en wanneer er door wordt gegaan naar de volgende regels

- `normal` (basis): Lijn (`<p>` element) past zich aan op de ruimte die gegeven wordt
- `nowrap`: Lijn wordt op één lange lijn gezet, instructies voor nieuwe regel (bv. `<br>`) worden genegeerd
- `pre`: Lijn  wordt op één lange lijn gezet, instructies voor nieuwe regel worden wel gerespecteerd
- `pre-wrap`: Er wordt witruimte toegevoegd voor elke nieuwe 'wrap' (regel wordt onderbroken door `<br>`) 
- `pre-line`: Voor elke lijn wordt er witruimte toegepast, instructies voor nieuwe regel worden wel gerespecteerd
- `break-spaces`: Zelfde als `pre-wrap` maar witruimte wordt beperkt voor elke wrap zodat er nog zo veel mogelijk woorden op de laatste regel kan.

```CSS
white-space: nowrap;
text-overflow: ellipsis;
```

```HTML
<p>Integer elementum massa at nulla placerat varius. Suspendisse in libero risus, in interdum massa. Vestibulum ac leo vitae <br>metus faucibus gravida ac in neque. Nullam est eros, suscipit sed dictum quis, accumsan a ligula.</p>
```

**Voorbeeld**
<p style="white-space: nowrap; text-overflow: ellipsis;">Integer elementum massa at nulla placerat varius. Suspendisse in libero risus, in interdum massa. Vestibulum ac leo vitae <br>metus faucibus gravida ac in neque. Nullam est eros, suscipit sed dictum quis, accumsan a ligula.</p>
#### Letter ruimte
Met `letter-spacing` kunnen we de ruimte tussen letters uitrekken of indrukken.

- `normal`: Zet terug naar normale waarde voor font
- Waardes: Alles groter dan 0 rekt uit, alles kleiner dan 0 drukt in

```CSS
letter-spacing: .2rem;
```

**Voorbeeld**
<p style="letter-spacing: .2rem;">ik ben wijd</p>
#### Woord ruimte
`word-spacing` werkt op dezelfde manier als `letter-spacing` maar dan met woorden.

- `normal`: Zet terug naar normale waarde voor font
- Waardes: Alles groter dan 0 rekt uit, alles kleiner dan 0 drukt in

```CSS
word-spacing: .2rem;
```

**Voorbeeld**
<p style="word-spacing: .2rem;">deze zin is wijd</p>
#### Afbreken woorden
Indien woorden te lang zijn kunnen we `word-break` gebruiken om ze af te breken in verschillende manieren.

- `normal`: Zal de woorden zoals normaal afbreken sommige uitzonderingen blijven waar 
	- **Uitzondering**: Chinees, Japanees, Koreaans in fonetische (Taumatawhakatangihangakoauauotamateaturipukakapikimaungahoronukupokaiwhenuakitanatahu) vorm wordt niet afgebroken maar symbool vorm wel. (グレートブリテンおよび北アイルランド連合王国という言葉は本当に長い言葉) 
- `break-all`: Breekt de woorden af zonder uitzonderingen inclusief CJK en zet ze achter elkaar
- `break-all`: Woorden kunnen op elk punt worden gebroken als ze niet passen binnen de container, zelfs als dat betekent dat het midden in een woord wordt afgebroken.

```CSS
word-break: break-all;
```

**Voorbeeld**
<div style="width: 200px; height: 100px; word-break: break-all;"><p>Honorificabilitudinitatibus califragilisticexpialidocious</p></div>

#### Overflow wrap
`overflow-wrap` doet hetzelfde als `word-break` maar zal in logischere plekken het woord breken zodat het leesbaar blijft.

- `normal`: Breekt enkel bij spaties
- `anywhere`: Het woord breekt op een logische plek
	- **Speciaaligheid**: De min-content berekeningen worden gemaakt met dit in gedacht en kan zorgen voor verticale overflow
	   ![[Pasted image 20241103115725.png]]
- `break-word`: Zelfde als `anywhere` maar er wordt geen aandacht gegeven aan de berekeningen van de min-content
   ![[Pasted image 20241103115741.png]]

```CSS
overflow-wrap: anywhere;
```

**Voorbeeld**
<div style="width: 200px; height: 100px; overflow-wrap: anywhere;"><p>Honorificabilitudinitatibus califragilisticexpialidocious</p></div>

>[!info]
>`overflow-wrap` zal ook gewoon witruimte gebruiken i.p.v. de rest op te vullen met tekst.

## CSS selectors
Zie [[|boomstructuur CSS]] voor meer info.

### Universele selector
De universele selector (of wildcard) `*` past een CSS regel op elk element toe.

```
* { 
	color: red;
}
```

**Voorbeeld**
![[Pasted image 20241103121643.png]]

### Type selector
Alle elementen van eenzelfde type stijlen.

```CSS
h2 {
	color: red;
}
```

**Voorbeeld**
![[Pasted image 20241103121905.png]]

### Class en IDs
Klassen en IDs liggen redelijk dicht qua functionaliteit. Je past een naam toe op een element en stijlt ze a.d.h.v. die naam. Enkel is er een groot verschil:
- Een `id` is uniek en past men maar één keer toe. 
- Een `class` kan meerdere keren gebruikt worden

#### Class
We gaan naast type selectors bijna altijd gebruik maken van classes om onze elementen en/of groepen te stijlen. 
- Je kan ook meerdere classes toepassen op één element. Dit zorgt ervoor dat je je eigen structuur in je stijling kan steken.

Om deze stijling te kunnen gebruiken moeten we iets gaan veranderen in onze html. Namelijks de `class` attribute gevolg door de namen van de klassen die we willen gebruiken / aanmaken.

```HTML
<h1 class="eerst vetter">Groen leven</h1>
<p class="eerst">Niet iedereen heeft groen leven in zijn woning. Soms kan het gewoonweg niet, op apartement of huis zonder tuin is het moeilijker om planten te kweken. <a href="...">Elias<a> ging tegen alle verwachtingen in en bekladde zijn balkon in groen ...</p>
```

`eerst` en `vetter` zijn twee aparte klassen die we via CSS nu kunnen gaan aanpassen:

```CSS
.eerst {
	color: green;
}

.vetter {
	font-weight: 700;
}
```

- Klassen beginnen telkens met een punt (`.`)

Door een type selector voor de klasse te plaatsen kunnen we ook enkel een specifiek element met die klasse selecteren om te stijlen.

```CSS
h1.eerst {
	color: green;
}

.vetter {
	font-weight: 700;
}
```

- Nu worden enkel de titels (`h1`) in de klasse `eerst` gestijld.

>[!warning]
>Elk andere element met klasse `eerst` in onze aangepaste CSS worden niet meer gestijld, enkel de h1's. Indien je toch `eerst` wilt stijlen naast de h1 moet je terug een `.eerst` toevoegen.
>```CSS
>h1.eerst {
>	color: green;
>}
>
>.eerst {
>	color: lightgreen;
>}
>
>.vetter {
>	font-weight: 700;
>}
>```

#### Id
Als we iets volledig uniek willen toepassen op een element kunnen we een id gaan gebruiken voor enkel dat specifiek element te stijlen.
- bv. Je wilt enkel deze link in het groen en vet zetten omdat hij belangrijk is.

```HTML
<h1 class="eerst vetter">Groen leven</h1>
<p>Niet iedereen heeft groen leven in zijn woning. Soms kan het gewoonweg niet, op apartement of huis zonder tuin is het moeilijker om planten te kweken. <a href="..." id="elias">Elias<a> ging tegen alle verwachtingen in en bekladde zijn balkon in groen ...</p>
```

We kunnen nu specifiek de link voor `Elias` veranderen met stijlen.

```CSS
#elias {
	color: green;
	font-weight: 700;
}
```

- IDs beginnen met een hekkentje (`#`)

### Selector list
Als we meerdere elementen dezelfde opmaak willen geven maken we gebruik van een selector list.

```CSS
h1, #elias, .vetter {
	font-family: "Open Sans";
}
```

Alle h1, de unieke ID `elias` en alles met de klasse `vetter` krijgt het font type `Open Sans`

- We scheiden elementen van de selector list met een komma (`,`)

### Descendant combinator
Om alle afstammelingen van een element te selecteren gebruiken we de descendant combinator.

```
		┌────────┐                          
		│  html  │ 1                         
		└────────┘                          
			 │                              
			 │                              
		┌────────┐                          
   ┌────│  body  │───┐    2                    
   │    └────────┘   │                      
   │                 │                      
   │                 │                      
┌───────┐       ┌───────┐                   
│article│ 5     │article│ 3                 
└───────┘       └───────┘                   
   │                 │                      
   │                 │                      
┌───────┐       ┌───────┐                   
│  h1   │ 6     │   p   │ 4                  
└───────┘       └───────┘                   
   │                                        
   │                                        
┌───────┐                                   
│   p   │ 7                                 
└───────┘                                    
```



```CSS
article p {
	color: red;
}
```

- Een descendant combinator maken we aan door twee selectoren na elkaar te zetten. Hier is voor elke `p`  in een `article` element de stijl `color: red;` 
	- Dit omvat in de diagram de elementen 4 & 7.

De elementen moeten niet direct afstammen van het element. Ze mogen verder in de vertakking staan, ze moet enkel in dezelfde tak staan.

- Je leest van links naar rechts waarbij het uiterst rechtse element hetgene is die we gaan stijlen.

### Child combinator
Gelijk aan de descendant comb. enkel moet de afstammeling direct (onder) het element staan.

```CSS
article > p {
	color: red;
}
```

- We gebruiken `>` om dit toe te passen.
	- Dit omvat enkel element 4 in het diagram.

### Sibling combinators
Alle elementen die hetzelfde element (ergens) boven hun staan hebben (de parent)

```
		┌────────┐                          
		│  html  │ 1                         
		└────────┘                          
			 │                              
			 │                              
		┌────────┐                          
   ┌────│  body  │───┐    2                    
   │    └────────┘   │                      
   │                 │                      
   │                 │                      
┌───────┐       ┌───────┐                   
│article│ 5     │article│ 3                 
└───────┘       └───────┘                   
   │                 │                      
   │                 │                      
┌───────┐       ┌───────┐                   
│  h1   │ 6     │   p   │ 4                  
└───────┘       └───────┘                   
   │                                        
   │                                        
┌───────┐                                   
│   p   │ 7                                 
└───────┘                                    
```

#### Adjacent sibling combinator
Bij een adjacent sibling combinator moet de afstammeling direct onder de parent staan.

```CSS
article + p {
	font-weight: bold;
}
```

- We gebruiken hiervoor het plus  (`+`) symbool

Alle elementen `p` direct na `article` worden vetgedrukt gezet 
- In ons diagram wordt enkel element 4 gestijld.

#### General sibling combinator
Een general sibling combinator omvat alle afstammeling van een type na een parent.

```CSS
article ~ p {
	font-weight: bold;
}
```

- We gebruiken de tilde (`~`)

Alle elementen `p` doe na een `article` komen worden gestijld
- In ons diagram is dit beide 7 en 4!

### Attribute selectors
We gaan elementen stijlen die een bepaald attribuut hebben.
- We selecteren de attribuut a.d.h.v. de (`[]`) vierkante haakjes gevolgd door de naam van een bestaande attribuut
	- We kunnen ook enkel attributen met een bepaalde waarde selecteren
		- `[attr==waarde]`: Enkel attributen met exact deze waarde
		- `[attr*=waarde]`: Attributen die deze waarde bevatten
		- `[attr[^=value]`: Attributen die starten met die waarde



```CSS
a[href^="http"] {
	background-color: red;
}
```

- Dit voorbeeld stijlt alle links die starten met "http" in het rood.

### Pseudo klassen
We stijlen elementen indien ze een bepaalde toestand ondergaan. Hier zijn enkele voorbeelden (zie https://developer.mozilla.org/en-US/docs/Web/CSS/Pseudo-classes)
- `:visited`: Een link die al bezocht is (bv. bij een link)
- `:hover`: Wanneer de muis over een element hangt
- `:disabled`: Een formulierveld die uitgeschakeld staat

```CSS
a {
	text-decoration: none;
}

a:hover {
	text-decoration: blue dotted underline;
}
```

### Boom-pseudoklassen
Met structurele boom pseudoklassen kunnen we het (zoveelste) van een type selecteren. Er zijn enorm veel manieren:
-  `:first-child`: een element dat het eerste child is van zijn parent-element,
-  `:last-child`: een element dat het laatste child is van zijn parent-element
- `:only-child`: een element waarvan de ouder geen andere child-elementen heeft
- `:first-of-type`: het eerste element van dat type
- `:last-of-type` : het laatste element van dat type
- `:only-of-type` : het enige element van dat type
- `:nth-child(n)`: elk zoveelste child-element
- `:nth-last-child(n)`: nu gerekend vanaf het laatste child
- `:nth-of-type(n)`: elk zoveelste element van een type
- `:nth-last-of-type(n)`: nu gerekend vanaf laatste element
- `:empty`: leeg element

#### Pseudo-element selectors
Om een bepaald deel van een geselecteerd element op te maken.
- `::first-line` : de eerste regel opgemaakte tekst van een element
- `::first-letter` : de eerste letter
- `::before`: voor de inhoud van een element
- `::after`: na de inhoud van een element

Syntaxis is met twee dubbele punten. (`:`)


# Bronnen
---
- https://developer.mozilla.org/en-US/docs/Web/CSS/
- https://web-development-i.github.io/overview/docs/04slCSSBasisDeel1.pdf
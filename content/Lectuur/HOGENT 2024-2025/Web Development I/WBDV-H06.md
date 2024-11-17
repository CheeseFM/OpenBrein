# Doelstellingen
---
- Weergave elementen
- Boxmodel: ruimte verdeling
- Extra opmaak

# Notities
--- 
## Inline vs. block & display
Om te beginnen herhalen we het verschil tussen inline en blok elementen

### Block
Een block element neemt de maximale breedte in (van de parent) en hoogte wordt bepaald door  de hoogte van haar elementen. Bij het aanmaken van dit type element zal er automatisch een nieuwe regel aangemaakt worden.
- Bv. `header`, `footer`, `nav`, `article`, `h1`, `p`, `div`, ...

```HTML
<div>
  <p>
    Dit is de eerste alinea. De achtergrondkleur van deze alinea's is gekleurd om
    ze te onderscheiden van hun bovenliggende element.
  </p>
  <p>Dit is de tweede alinea.</p>
</div>
```

**Voorbeeld**
<div>
  <p>
    Dit is de eerste alinea. De achtergrondkleur van deze alinea's is gekleurd om
    ze te onderscheiden van hun bovenliggende element.
  </p>
  <p>Dit is de tweede alinea.</p>
</div>


### Inline
Een inline element deelt dezelfde regel met andere elementen en maximum de ruimte opnemen die ze nodig hebben.
- Bv. `<a>`, `<img>`, `<em>`, `<strong>`, `<label>`, ...

```html
<p>
  Deze span is een <span style="background-color: yellow;">inline-element</span>; de achtergrond
  is gekleurd om zowel het begin als het einde van de invloed van het element te
  tonen. Invoerelementen, zoals <input type="radio" /> en
  <input type="checkbox" />, zijn ook inline-inhoud.
</p>
```

**Voorbeeld**
<p>
  Deze span is een <span style="background-color: yellow;">inline-element</span>; de achtergrond
  is gekleurd om zowel het begin als het einde van de invloed van het element te
  tonen. Invoerelementen, zoals <input type="radio" /> en
  <input type="checkbox" />, zijn ook inline-inhoud.
</p>

### Display
Van een inline element een block element maken of een variant hiervan kan met de `display` property.
- `inline`:  Zet eender wat element om in een inline element.
- `block`: Zet eender wat element om in een block element.
- `inline-block`: Behoud de breedte van het block element maar zet ze naast elkaar zoals een inline element
- `none`: Element wordt niet weergegeven.


**Voorbeeld 1**

```CSS
p {
	display: inline;
}
```

![[Pasted image 20241109160616.png]]

**Voorbeeld 2**

```CSS
div {
	display: block;
}
```

![[Pasted image 20241109160631.png]]

#### None v.s. hidden
Naast `display: hidden;` heb je ook `visibility: hidden;`. Ze zal het element onzichtbaar maken, maar de plek die het origineel inpakte behouden.

## Boxmodel
Alle elementen van een webpagina hebben eigenschappen i.v.m. de plaats die ze innemen.
- Content: De inhoud, bv. tekst, afbeelding, tabel, ...
- Padding: De ruimte rond de content binnen het element (Duwt de border verder weg en vergroot de voetafdruk van het element)
- Border: De rand rond het element (en haar padding)
- Margin: Ruimte rond het volledige element (rond de border)

>[!info]
>Achtergrondkleur beïnvloed enkel alles binnen de border en dus niet de margins.

![[Pasted image 20241114131837.png]]

### Ingenomen ruimte
De ingenomen breedte en hoogte wordt dus beïnvloed door alle elementen van het boxmodel: Content, padding, border en margin!
- Je kan dit ook vaste waarden geven a.d.h.v. de property `height` en `width`.

```CSS
article {
	height: 100px;
	width: 30rem;
}
```

>[!warning]
>Stel bij voorkeur hoogte niet in aangezien de content de hoogte kan overschrijden
> ![[Pasted image 20241114135254.png]]

### Gebruik margins en padding

| Code                                | Uitleg                                                                                                          |
| ----------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `margin`<br>`padding`<br>           | Algemene margin of padding aanpassen, kan beide positief of negatief zijn, uitgedrukt in pixels of percentages. |
| `margin-top`<br>`padding-top`       | Margin of padding voor boven het element aanpassen.                                                             |
| `margin-bottom`<br>`padding-bottom` | Margin of padding  voor onder het element aanpassen.                                                            |
| `margin-left`<br>`padding-left`     | Margin of padding voor rechts van het element aanpassen.                                                        |
| `margin-right`<br>`padding-right`   | Margin of padding voor links van het element aanpassen.                                                         |
#### Verschillende margins of padding
```CSS
p {
    margin-top: 10px;
    margin-right: 8px;
    margin-bottom: 2px;
    margin-left: 6px;
}
```

wordt

```CSS
p {
    margin: 10px 8px 2px 6px
}
```

#### Zelfde bodem en zelfde zij margins of padding
```CSS
p {
    padding-top: 10px;
    padding-bottom: 10px;
    padding-left: 8px;
    padding-right: 8px;
}
```

wordt

```CSS
p {
    padding: 10px 8px
}
```

>[!info]
>Dit is voor beide margins en padding allebei toepasselijk. 

#### Percentages
Je kan ook percentages instellen voor margins, dit wordt dan berekend t.o.v. het parent element.

```HTML
<!-- De browser is 750px breed-->
<body> 
	<p>...</p>
</body>
```

```CSS
p {
	margin-top: 10%;
	padding-left: 20%;
}
```


- Indien het parent element 750px breed is zal een `padding-left` van 20% een padding bevatten van 150px.
- Maar als een `margin-top` wordt ingesteld van 10% zal de margin 75px bevatten.

>[!warning]
>Niet alleen `left` en `right` wordt bereken op de breedte, ook de `top` en `bottom`. Er wordt niks berekend met de hoogte.

#### Margins tussen elementen
Wanneer margins worden gebruikt op beide de parent en de child en er geen `border` of `padding` wordt toegepast zal enkel de grootste margin gebruikt worden.

```CSS
div {
	margin-top: 40px;
	margin-bottom: 25px;
	background: green;
}

p {
	margin-top: 20px; 
	background-color: red;
}
```

```HTML
<div>The next element</div>
<div>
	<p>The child element</p>
</div>
```

![[Pasted image 20241114144736.png]]

#### Negatieve waarden
Je kan ook negatieve waarden instellen voor margin.

```HTML
<h2>De eerste échte belgische seriemoordenaar</h2>
<h1>Bart van Jokzele: het verhaal</h1>
```

```CSS
h2 {
	font-size: 18px;
	margin-bottom: -5px;
	border: 1px solid black;
	text-align: center;
}
h1 {
	font-size: 24px;
	text-align: center;
	margin-top: 0;
}
```


<p style="font-size: 18px; margin-bottom: -5px; border: 1px solid black; text-align: center;">De eerste échte belgische seriemoordenaar</p>
<p style="font-size: 24px; text-align: center; margin-top: 0;">Bart van Jokzele: het verhaal</p>


#### Horizontale centrering
Om op een simpele manier iets te centreren kunnen we de marge (margins) op auto zetten.

```CSS
div {
	width: 80%;
	margin: 0 auto;
}
```

- `Auto` zal (in dit geval alle `div`) elementen centreren t.o.v. hun parent element.


### Gebruik border
```CSS
.blok {
	border-width: 1px;
	border-style: dotted;
	border-color: black;
}
```

of

```CSS
.blok {
	border: 1px dotted black;
}
```

**Voorbeeld**
<div style="width: 100px; height: 100px; border: 1px dotted black;"></div>


### Begrenzen
Met de properties `min-width`, `max-width`, `min-height` en `max-width` kunnen we de grootte van een element begrenzen.

**Voorbeeld: Onbegrensd**
```HTML
<p>Lorem ipsum odor amet, consectetuer adipiscing elit. Commodo in torquent, purus augue montes pellentesque mi proin. Nullam enim bibendum lectus libero volutpat sodales nascetur. Interdum lacinia habitant risus consectetur non curae elit inceptos euismod. </p>
```

```CSS
p {
	border: 1px solid blue;
}
```

<p style="border: 1px solid blue;">Lorem ipsum odor amet, consectetuer adipiscing elit. Commodo in torquent, purus augue montes pellentesque mi proin. Nullam enim bibendum lectus libero volutpat sodales nascetur. Interdum lacinia habitant risus consectetur non curae elit inceptos euismod. </p>
**Voorbeeld: Begrensd (max. 500px, min 100px)**
```CSS
p {
	border: 1px solid blue;
	max-height: 500px;
	min-height: 100px;
}
```

*Heeft genoeg plek*
<p style="border: 1px solid blue; max-height: 500px; min-height: 100px;">Lorem ipsum odor amet, consectetuer adipiscing elit. Commodo in torquent, purus augue montes pellentesque mi proin. Nullam enim bibendum lectus libero volutpat sodales nascetur. Interdum lacinia habitant risus consectetur non curae elit inceptos euismod. </p>
*Browser klein, heeft niet genoeg plek*
<div style="height: 50px"><p style="border: 1px solid blue; max-height: 500px; min-height: 100px;">Lorem ipsum odor amet, consectetuer adipiscing elit. Commodo in torquent, purus augue montes pellentesque mi proin. Nullam enim bibendum lectus libero volutpat sodales nascetur. Interdum lacinia habitant risus consectetur non curae elit inceptos euismod. </p></div>
<div></div>

- Er gebeurt overflow, je kan niet alles zien (staat achter ander element) of het staat over volgende elementen
![[Pasted image 20241114152705.png]]

#### Overflow bij begrenzing
In normale gevallen wordt de inhoud van de overflow over alles gezet bij begrenzing. Je kan dit gedrag aanpassen met `overflow`.
- `auto`: scrol bar indien nodig
- `scroll`: altijd scrol bar
- `hidden`: afgesneden
- `visible`: (standaard) overschrijdt de begrenzing

```CSS
p {
	overflow: auto;
}
```

**Voorbeeld (auto)**
<div style="height: 50px; overflow:auto;"><p style="border: 1px solid blue; max-height: 500px; min-height: 100px;">Lorem ipsum odor amet, consectetuer adipiscing elit. Commodo in torquent, purus augue montes pellentesque mi proin. Nullam enim bibendum lectus libero volutpat sodales nascetur. Interdum lacinia habitant risus consectetur non curae elit inceptos euismod. </p></div>

### Border radius
Om de rand rond elementen af te ronden kunnen we  `border-radius` gebruiken

```CSS
border-radius: 20px;
border: 2px solid black;
```

**Voorbeeld**
<div style="width: 100px; height: 100px; border: 2px solid black; border-radius: 20px"></div>


**Voorbeeld samengesteld 1**
```CSS
border-radius: 20px 30px;
```

![[Pasted image 20241116134806.png]]

**Voorbeeld samengesteld 2**
```CSS
border-radius: 1px 2px / 3px 4px;
```

![[Pasted image 20241116135551.png]]

#### Aparte properties

| Shorthand                    | Effect                                |
| ---------------------------- | ------------------------------------- |
| `border-top-left-radius`     | Border bovenkant links krijgt radius  |
| `border-bottom-left-radius`  | Border onderkant links krijgt radius  |
| `border-top-right-radius`    | Border bovenkant rechts krijgt radius |
| `border-bottom-right-radius` | Border onderkant rechts krijgt radius |

### Box sizing
Met `box-sizing` kunnen we het gedrag van `height` & `width` aanpassen. Er zijn twee types:

| content-box                                                                                                  | border-box                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------ |
| padding: 20px                                                                                                | padding: 20px                                                                                                                  |
| border: 8px                                                                                                  | border: 8px                                                                                                                    |
| width: 160px                                                                                                 | width: 160px                                                                                                                   |
| height: 80px                                                                                                 | height: 80px                                                                                                                   |
| ![[Pasted image 20241116132515.png]]                                                                         | ![[Pasted image 20241116132742.png]]                                                                                           |
| De breedte en hoogte worden toegepast op de content. Alle bijgevoegde border & padding worden er rond gezet. | De breedte en hoogte worden toegepast op het element zelf. Alle bijgevoegde border & padding bevinden zich binnen het element. |
| Omtrek element: 216 x 136 px                                                                                 | Omtrek element: 160 x 80 px                                                                                                    |
| Omtrek content: 160 x 80 px                                                                                  | Omtrek content: 104 x 24 px                                                                                                    |

### Box & text shadow
Een schaduw toevoegen langs het raamwerk van een element kunnen we doen met `box-shadow`.

```CSS
box-shadow: 10px 5px 5px red;
```

**Voorbeeld**
<div>
<div style="box-shadow: 10px 5px 5px red; width: 100px;"><p>Hallo!</p></div>
</div>

**Syntax**
In gebruik nemen van `box-shadow` is niet gemakkelijk als beginner. We nemen het voorbeeld:

```CSS
box-shadow: ([inset]) [X] [Y] [BLUR] [KLEUR];
```

- `inset`: Indien je het woord `inset` toevoegt zal de schaduw langst de binnenkant staan.
- `X`: Een lengte of percentage, positief of negatief (geel op diagram) die de horizontale verschuiving bepaald
- `Y`: Een lengte of percentage, positief of negatief (rood op diagram) die de verticale verschuiving bepaald
- `BLUR`: Een lengte die de vervagingsstraal van de schaduw bepaald. (Schaduw neemt vorm van element)
- `KLEUR`: Kleurwaarde van schaduw

![[Pasted image 20241116144115.png]]
>[!info]
>Idem voor `text-shadow` maar dan op de effectieve tekst toegepast.



## Calc functie
Met de `calc()` functie kunnen we met de waarden van de data types `<length>`, `<time>`, `<angle>`, ... spelen
- `-`: trekt twee waarden van elkaar af
- `+`: telt twee waarden met elkaar op
- `*`: vermenigvuldigt twee waarden met elkaar
- `/`: deelt twee waarden door elkaar

```CSS
div {
	width: calc(10px + 100px);
}
```

>[!info]
>Voor een expressie te doen met `calc()` moet er voor en achter de operator (`-`, `+`, `*` & `/`) witruimte staan. Dit is niet optioneel.

## Cursors
Bij het zweven boven elementen (hover) kan een verschillende cursor toegepast worden om de gebruiker te informeren van de mogelijkheden.
```CSS
cursor: help;
```

<div style="width:200px; background-color: blue; cursor: help; display: flex; padding: 10px"><p style="color: white; text-align: center;">De cursor 'help' wordt weergegeven boven dit element</p></div>

# Bronnen
---
- https://developer.mozilla.org/
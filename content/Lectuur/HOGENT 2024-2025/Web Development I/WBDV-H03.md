# Doelstellingen
---
- Tabellen
- Rijen en cellen
- Cellen samenvoegen
- Formulieren
- Werking formulieren
- Form controls
- Toegankelijkheid

​

# Notities
--- 
## Tabellen

**Voorbeeld factuur**

```
<table>
	<tr>
		<th>Item</th>
		<th>Availability</th>
		<th>Qty</th>
		<th>Price</th>
	</tr>
	<tr>
		<td>Don't Make Me Think by Steve Krug</td>
		<td>In Stock</td>
		<td>1</td>
		<td>$30.02</td>
	</tr>
	<tr>
		<td>A Project Guide to UX Design by Russ Unger & Carolyn Chandler</td>
		<td>In Stock</td>
		<td>2</td>
		<td>$52.94 ($26.47 × 2)</td>
	</tr>
	<tr>
		<td>Introducing HTML5 by Bruce Lawson & Remy Sharp</td>
		<td>Out of Stock</td>
		<td>1</td>
		<td>$22.23</td>
	</tr>
	<tr>
		<td>Bulletproof Web Design by Dan Cederholm</td>
		<td>In Stock</td>
		<td>1</td>
		<td>$30.17</td>
	</tr>
</table>
```


<table>
	<tr>
		<th>Item</th>
		<th>Availability</th>
		<th>Qty</th>
		<th>Price</th>
	</tr>
	<tr>
		<td>Don't Make Me Think by Steve Krug</td>
		<td>In Stock</td>
		<td>1</td>
		<td>$30.02</td>
	</tr>
	<tr>
		<td>A Project Guide to UX Design by Russ Unger & Carolyn Chandler</td>
		<td>In Stock</td>
		<td>2</td>
		<td>$52.94 ($26.47 × 2)</td>
	</tr>
	<tr>
		<td>Introducing HTML5 by Bruce Lawson & Remy Sharp</td>
		<td>Out of Stock</td>
		<td>1</td>
		<td>$22.23</td>
	</tr>
	<tr>
		<td>Bulletproof Web Design by Dan Cederholm</td>
		<td>In Stock</td>
		<td>1</td>
		<td>$30.17</td>
	</tr>
</table>

- We gaan de tabellen per rij opbouwen. Je declareert ze met `tr`

### Elementen
- De hoofding van de tabel (header) `th`
- Gewone cellen a.d.h.v;`td`

### Span
#### Colspan
Om meerdere cellen horizontaal samen te voegen gebruiken we 'colspan'

**Voorbeeld factuur (fragment)**

```HTML
<table>
		<tr>
			<th>Item</th>
			<th>Availability</th>
			<th>Qty</th>
			<th>Price</th>
		</tr>
		<tr>
			<td>Don't Make Me Think by Steve Krug</td>
			<td>In Stock</td>
			<td>1</td>
			<td>$30.02</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align:right;">Subtotal</td>
			<td>$30.02</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align:right;">Tax</td>
			<td>$30.02</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align:right;"><strong>Total</strong></td>
			<td><strong>$30.02</strong></td>
		</tr>
</table>
```

<table>
		<tr>
			<th>Item</th>
			<th>Availability</th>
			<th>Qty</th>
			<th>Price</th>
		</tr>
		<tr>
			<td>Don't Make Me Think by Steve Krug</td>
			<td>In Stock</td>
			<td>1</td>
			<td>$30.02</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align:right;">Subtotal</td>
			<td>$30.02</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align:right;">Tax</td>
			<td>$30.02</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align:right;"><strong>Total</strong></td>
			<td><strong>$30.02</strong></td>
		</tr>
</table>

#### Rowspan
Om hetzelfde te doen maar dan over verschillende verticale cellen doen we `rowspan`

**Voorbeeld menu**

```HTML
<table>
		<tr>
			<td rowspan="4">Pastas</td>
			<td>Spaghetti bolognaise</td>
			<td>6,80 €</td>
			<td rowspan="4">
				Geleverd met 2 witte <br />broodjes en een botertje
			</td>
		</tr>
		<tr>
			<td>Lasagne</td>
			<td>7,50 €</td>
		</tr>
		<tr>
			<td>Pasta pesto</td>
			<td rowspan="2">6,30 €</td>
		</tr>
		<tr>
			<td>Koude Pasta</td>
		</tr>
</table>
```

<table>
	<tr>
		<td rowspan="4">Pastas</td>
		<td>Spaghetti bolognaise</td>
		<td>6,80 €</td>
		<td rowspan="4">
			Geleverd met 2 witte <br />broodjes en een botertje
		</td>
	</tr>
	<tr>
		<td>Lasagne</td>
		<td>7,50 €</td>
	</tr>
	<tr>
		<td>Pasta pesto</td>
		<td rowspan="2">6,30 €</td>
	</tr>
	<tr>
		<td>Koude Pasta</td>
	</tr>
</table>

### Structuur
Een goede praktijk is om tabellen in te delen in een head, body en footer. Dit heeft met voordeel dat:
- Toegankelijker is voor schermlezers (blinden)
- Het gemakkelijker is om later te stijlen in CSS

**Geüpdate voorbeeld factuur**

```HTML
<table>
	<caption>Design and Front-End Development Books</caption>
	<colgroup>
		<col span="3"></col>
		<!-- <col></col>
		<col></col> -->
		<col class="last"></col>
	</colgroup>
	<thead>
		<tr>
			<th>Item</th>
			<th>Availability</th>
			<th>Qty</th>
			<th>Price</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Don't Make Me Think by Steve Krug</td>
			<td>In Stock</td>
			<td>1</td>
			<td>$30.02</td>
		</tr>
		<tr>
			<td>A Project Guide to UX Design by Russ Unger & Carolyn Chandler</td>
			<td>In Stock</td>
			<td>2</td>
			<td>$52.94 ($26.47 × 2)</td>
		</tr>
		<tr>
			<td>Introducing HTML5 by Bruce Lawson & Remy Sharp</td>
			<td>Out of Stock</td>
			<td>1</td>
			<td>$22.23</td>
		</tr>
		<tr>
			<td>Bulletproof Web Design by Dan Cederholm</td>
			<td>In Stock</td>
			<td>1</td>
			<td>$30.17</td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="3" style="text-align:right;">Subtotal</td>
			<td>$135.36</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align:right;">Tax</td>
			<td>$13.54</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align:right;"><strong>Total</strong></td>
			<td><strong>$148.90</strong></td>
		</tr>
	</tfoot>
</table>
```

- Het toepassen van deze elementen is volledig semantisch (heeft dus geen fysieke veranderen op uitvoer, enkel in code)

### Label
We kunnen (voor toegankelijkheid) ook een bijschrift toepassen op onze tabellen a.d.h.v. `<caption>`

**Voorbeeld factuur (fragment)**
```
<table>
	<caption>Design and Front-End Development Books</caption>
	
	<thead>
	...
	</thead>
	<tbody>
	...
	</tbody>
	<tfoot>
	...
	</tfoot>
</table>
```

<table>
	<caption>Design and Front-End Development Books</caption>
	
	<thead>
		<tr>
			<th>Item</th>
			<th>Availability</th>
			<th>Qty</th>
			<th>Price</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Don't Make Me Think by Steve Krug</td>
			<td>In Stock</td>
			<td>1</td>
			<td>$30.02</td>
		</tr>
		<tr>
			<td>A Project Guide to UX Design by Russ Unger & Carolyn Chandler</td>
			<td>In Stock</td>
			<td>2</td>
			<td>$52.94 ($26.47 × 2)</td>
		</tr>
		<tr>
			<td>Introducing HTML5 by Bruce Lawson & Remy Sharp</td>
			<td>Out of Stock</td>
			<td>1</td>
			<td>$22.23</td>
		</tr>
		<tr>
			<td>Bulletproof Web Design by Dan Cederholm</td>
			<td>In Stock</td>
			<td>1</td>
			<td>$30.17</td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="3" style="text-align:right;">Subtotal</td>
			<td>$135.36</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align:right;">Tax</td>
			<td>$13.54</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align:right;"><strong>Total</strong></td>
			<td><strong>$148.90</strong></td>
		</tr>
	</tfoot>
</table>

>[!info]
>Je kan a.d.h.v. `caption-side` het bijschrift ook aan de onderkant zetten.
>```
>caption {
>    caption-side: bottom;
>}
>```

### Colgroup
We kunnen a.d.h.v. het element `<colgroup>`  aparte kolommen gaan stijlen

**Voorbeeld factuur (fragment)**
```HTML
<table>
	<caption></caption>
	
	<colgroup>
            <col span="3"></col>
            <!-- <col></col>
            <col></col> -->
            <col class="last"></col>
    </colgroup>
    
	<thead>
	...
	</thead>
	<tbody>
	...
	</tbody>
	<tfoot>
	...
	</tfoot>
</table>
```

```CSS
.last {
    background-color: yellow;
}
```

<table>
	<caption>Design and Front-End Development Books</caption>
	<colgroup>
		<col span="3"></col>
		<!-- <col></col>
		<col></col> -->
		<col style="background-color: yellow;"></col>
	</colgroup>
	<thead>
		<tr>
			<th>Item</th>
			<th>Availability</th>
			<th>Qty</th>
			<th>Price</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Don't Make Me Think by Steve Krug</td>
			<td>In Stock</td>
			<td>1</td>
			<td>$30.02</td>
		</tr>
		<tr>
			<td>A Project Guide to UX Design by Russ Unger & Carolyn Chandler</td>
			<td>In Stock</td>
			<td>2</td>
			<td>$52.94 ($26.47 × 2)</td>
		</tr>
		<tr>
			<td>Introducing HTML5 by Bruce Lawson & Remy Sharp</td>
			<td>Out of Stock</td>
			<td>1</td>
			<td>$22.23</td>
		</tr>
		<tr>
			<td>Bulletproof Web Design by Dan Cederholm</td>
			<td>In Stock</td>
			<td>1</td>
			<td>$30.17</td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="3" style="text-align:right;">Subtotal</td>
			<td>$135.36</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align:right;">Tax</td>
			<td>$13.54</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align:right;"><strong>Total</strong></td>
			<td><strong>$148.90</strong></td>
		</tr>
	</tfoot>
</table>

## Formulieren

**Voorbeeld Aanmelden via e-mail**
```HTML
<form action="mailto:jelle@openbrein.org?subject=HIHI" method="post" enctype="text/plain">
	<div>
		<label>E-mail: 
			<input type="email" name="email"  required />
		</label>
	</div>
	<div>
		<label>Wachtwoord: 
			<input type="password" name="password" required>
		</label>
	</div>
	<div>
		<label>Aangemeld blijven:
			<input type="checkbox" name="permanent" checked>
		</label>
	</div>
	<div><input type="submit" value="Meld je aan"></div>
</form>
```

<form action="mailto:jelle@openbrein.org?subject=HIHI" method="post" enctype="text/plain">
	<div>
		<label>E-mail: 
			<input type="email" name="email"  required />
		</label>
	</div>
	<div>
		<label>Wachtwoord: 
			<input type="password" name="password" required>
		</label>
	</div>
	<div>
		<label>Aangemeld blijven:
			<input type="checkbox" name="permanent" checked>
		</label>
	</div>
	<div><input type="submit" value="Meld je aan"></div>
</form>

### Basis
Een formulier bestaat uit 
- Het `form` element 
- En natuurlijk haat onderdelen (bv. knoppen, paswoordvakken, ...), ze hebben
	- Een naam (zoals een variabele in een programmeertaal)
	- Een value (= een toegekende waarde door de gebruiker)

### Form attributen
Een form heeft verschillende eigenschappen a.d.h.v. wat je wilt doen met de ingevoerde gegevens, hoe je het wilt verwerken, ...

#### Action
Waar de ingevoerde gegeven worden verstuurt. 
- `mailto`: Gegevens worden gemaild naar een bepaald adres
- `/order`: Gegevens worden doorgezonden naar `order` op de webserver.

#### Method
Bepaalt hoe de gegevens worden verzonden
- `get`: Formulierdata wordt gewoonweg in de adresbalk gezet. ![[Pasted image 20241010200237.png]]
- `post`: Formulierdata wordt verwerkt in de onzichtbare `header` van de pagina.

#### Andere
- `enctype`: Type encryptie die gebruikt wordt op de ingegeven data.
- `autocomplete`: Of er automatisch mag ingevuld worden

### Form elementen
Een form bestaat uit één of meer form elementen. Ze hebben allemaal:
- Een `type`: Text, paswoord, datum, ... (zie volgende)
- Een naam (`name`): Een unieke naam die meerdere elementen samen kan groeperen.

#### Tekst
Gewoon tekstveld zonder iet-of-wat.

```HTML
<form action="" method="post" enctype="text/plain">
	<label>Tekst 
		<input type="text" name="generiek"/>
	</label>
</form>
```

<form action="" method="post" enctype="text/plain">
	<label>Tekst 
		<input type="text" name="generiek"/>
	</label>
</form>

#### Wachtwoord
Tekstveld met automatische vertoning in bolletjes.

```HTML
<form action="" method="post" enctype="text/plain">
	<label>Passwoord 
		<input type="password" name="paswoord"/>
	</label>
</form>
```

<form action="" method="post" enctype="text/plain">
	<label>Passwoord 
		<input type="password" name="paswoord"/>
	</label>
</form>

#### Datum
Datummenu met uitklapbare kalender.

```HTML
<form action="" method="post" enctype="text/plain">
	<label>Datum 
		<input type="date" name="datum"/>
	</label>
</form>
```

<form action="" method="post" enctype="text/plain">
	<label>Datum 
		<input type="date" name="datum"/>
	</label>
</form>

#### E-mail
Tekstveld met check voor e-mail syntax (`naam@domein.be`)

```HTML
<form action="" method="post" enctype="text/plain">
	<label>E-mail 
		<input type="email" name="e-mail"/>
	</label>
</form>
```

<form action="" method="post" enctype="text/plain">
	<label>E-mail 
		<input type="email" name="e-mail"/>
	</label>
</form>

#### Nummer
Invoerveld met pijltjes en uitzonderlijke nummer ingave.

```HTML
<form action="" method="post" enctype="text/plain">
	<label>Nummer
		<input type="number" name="nummer"/>
	</label>
</form>
```

<form action="" method="post" enctype="text/plain">
	<label>Nummer
		<input type="number" name="nummer"/>
	</label>
</form>

>[!info]
>Je kan enkel ook de letter `e` invoeren aangezien dit een wiskundige notatie is.

#### Zoekbalk
Een tekstvalk  om te zoeken. (meestal samen met `submit`)

```HTML
<form action="" method="post" enctype="text/plain">
	<label>Nummer
		<input type="search"/>
		<input type="submit" value="search">
	</label>
</form>
```

<form action="" method="post" enctype="text/plain">
	<label>Nummer
		<input type="search"/>
		<input type="submit" value="search">
	</label>
</form>

### Checkbox
Selectievakjes, Ze hebben deze attributen:
- `name`: Naam moet bij elke radio button (van hetzelfde soort) hetzelfde zijn, anders linken ze niet aan elkaar.
- `value`: De waarde die doorgestuurd wordt als je op de knop klikt
- `checked`: Of er een knop op voorhand moet worden aangevinkt (optioneel)

```HTML
<form action="" method="post" enctype="text/plain">
	Extra's
	<input type="checkbox" name="uur" value="1618" /> kaas
	<input type="checkbox" name="uur" value="1820" /> Hesp
	<input type="checkbox" name="uur" value="2022" checked/> Tomaten  
</form>
```

<form action="" method="post" enctype="text/plain">
	Extra's
	<input type="checkbox" name="uur" value="1618" /> kaas
	<input type="checkbox" name="uur" value="1820" checked/> Hesp
	<input type="checkbox" name="uur" value="2022" checked/> Tomaten  
</form>


#### Radio
Radioknopjes zijn selectievakken waar maar één optie tegelijk mogelijk is. 
- Zelfde attributen als checkboxes maar
- - `name`: Naam moet bij elke radio button hetzelfde zijn anders linken ze niet aan elkaar en zal je meerdere kunnen aanvinken

```HTML
<form action="" method="post" enctype="text/plain">
	Uur 
	<input type="radio" name="extras" value="1618" /> 16u - 18u
	<input type="radio" name="extras" value="1820" /> 18u - 20u
	<input type="radio" name="extras" value="2022" /> 20u - 22u           
</form>
```

<form action="" method="post" enctype="text/plain">
	Uur 
	<input type="radio" name="extras" value="1618" /> 16u - 18u
	<input type="radio" name="extras" value="1820" /> 18u - 20u
	<input type="radio" name="extras" value="2022" /> 20u - 22u           
</form>

#### Uploads
Vak om bestanden up te loaden.
```HTML
<form action="" method="post" enctype="text/plain">          Bestand <input type="file" name="bestand">
</form>
```

<form action="" method="post" enctype="text/plain">          Bestand <input type="file" name="bestand">
</form>

#### Keuzelijsten
Bestaan uit `<select>` en `<option>` en kunnen de volgende attributen hebben:
- `multiple`: Meerdere keuzes mogelijk maken
- `size`: Grootte van selectievak

```HTML
<form action="" method="post" enctype="text/plain">      
	<select name="Pizza" size="3" multiple>
		<option value="napolitano">Napolitano</option>
		<option value="4formaggi">Quattro formaggi</option>
		<option value="mozarella">Mozarella</option>
		<option value="speciale">Speciale</option>
		<option value="bolognese">Bolognese</option>
	</select>
</form>
```

<form action="" method="post" enctype="text/plain">      
	<select name="Pizza" size="3" multiple>
		<option value="napolitano">Napolitano</option>
		<option value="4formaggi">Quattro formaggi</option>
		<option value="mozarella">Mozarella</option>
		<option value="speciale">Speciale</option>
		<option value="bolognese">Bolognese</option>
	</select>
</form>

#### Datalist
We kunnen ook een zoekbare lijst aan de gebruiker weergeven a.d.h.v. `<datalist>` en `<option>`.

```HTML
<form action="" method="post" enctype="text/plain">             
	Bezorger?
		<input list="bezorgers" name="bezorger" />
		<datalist id="bezorgers">
			<option value="Steffie"></option>
			<option value="Stephanie"></option>
			<option value="Stef"></option>
			<option value="Stefaan"></option>
		</datalist>
</form>
```

<form action="" method="post" enctype="text/plain">             
	Bezorger?
		<input list="bezorgers" name="bezorger" />
		<datalist id="bezorgers">
			<option value="Steffie"></option>
			<option value="Stephanie"></option>
			<option value="Stef"></option>
			<option value="Stefaan"></option>
		</datalist>
</form>

#### Textarea
Grote blokken tekst (aanpasbaar in CSS).

```HTML
<form action="" method="post" enctype="text/plain">          Extra informatie <textarea name="info"></textarea>
</form>
```

<form action="" method="post" enctype="text/plain">          Extra informatie <textarea name="info"></textarea>
</form>

#### (!) Submit
Form indienen a.d.h.v. knop, kan op twee manieren:
- a.d.h.v. het basiselement `<button>` 
- Met input `type="submit"`

```HTML
<form action="" method="post" enctype="text/plain">         <input type="submit" value="bestel 1: jumanji" />
	<button type="submit">bestel 2: Jumanji wordt wakker</button>
</form>
```

<form action="" method="post" enctype="text/plain">         <input type="submit" value="bestel 1: jumanji" />
	<button type="submit">bestel 2: Jumanji wordt wakker</button>
</form>

### Placeholders
Bij elementen kan je soms `placeholder` invullen, het toont je wat je moet in typen.

```HTML
<form action="" method="post" enctype="text/plain">
	<label>Tekst 
		<input type="text" name="generiek" placeholder="vul je naam hier in"/>
	</label>
</form>
```

<form action="" method="post" enctype="text/plain">
	<label>Tekst 
		<input type="text" name="generiek" placeholder="vul je naam hier in"/>
	</label>
</form>

### Fieldset en legende
Je kan je formulier (visueel) opdelen in aparte deeltjes (of rond het volledige formulier) a.d.h.v. de fieldset.
- Ze tekent een kader rond het (deel van het) formulier.
- a.d.h.v. `legend` geef je ze een naam

```HTML
<form action="" method="post" enctype="text/plain">
	<fieldset>
		<legend>Mijn voorbeeld</legend>
		
		<label>Tekst 
			<input type="text" name="generiek" placeholder="vul je naam hier in"/>
		</label>
	</fieldset>
</form>
```

<form action="" method="post" enctype="text/plain">
	<fieldset>
		<legend>Mijn voorbeeld</legend>
		
		<label>Tekst 
			<input type="text" name="generiek" placeholder="vul je naam hier in"/>
		</label>
	</fieldset>
</form>

### Validatie
#### Ingevuld of niet?
Je kan met `required` velden verplicht maken vooraleer je het formulier indient.

```HTML
<form action="" method="post" enctype="text/plain">
	<label>Tekst 
		<input type="text" name="generiek" placeholder="vul je naam hier in" required/>
	</label>
</form>
```

<form action="" method="post" enctype="text/plain">
	<label>Tekst 
		<input type="text" name="generiek" placeholder="vul je naam hier in" required/>
	</label>
</form>

#### Waarde
Bij velden met een waarde kan je een maximum en minimum instellen.

```HTML
<form action="" method="post" enctype="text/plain">
	<label>Nummer
		<input type="number" name="nummer" min="1" max="10" required/>
	</label>
</form>
```

<form action="" method="post" enctype="text/plain">
	<label>Nummer
		<input type="number" name="nummer" min="1" max="10" required/>
	</label>
</form>

### Label
Voor toegankelijkheid plaatsen we een `label` zodat schermlezers weten wat ze moeten zeggen, in dit geval "Nummer".

```HTML
<form action="" method="post" enctype="text/plain">
	<label>Nummer
		<input type="number" name="nummer" min="1" max="10" required/>
	</label>
</form>
```



# Bronnen
---
- [Slides - Github](https://web-development-i.github.io/overview/docs/03slTabellenFormulieren.pdf)
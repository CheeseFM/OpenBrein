#uitgewerkt

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 17-06-2024

---
# Introductie
## Wat is CSS?
CSS staat voor Cascading Style Sheets. Het is de manier om HTML te stijlen. 
* We gaan kort over de taal die in de CSS wordt gebruikt met enkel voorbeelden. 

### Selectors
Met selectors selecteren we letterlijk welk html element we willen stijlen. Het is de naam zonder syntaxis van een html-element.

In het geval van het HTML element `<p></p>` is de selector ‘p’

```HTML
<p></p>
```

```CSS
p {
}
```


### Eigenschappen en waarden
Eigenschappen zijn letterlijk wat je denkt. Je neemt de eigenschap van een stuk HTML en past die aan. We nemen het voorbeeld van de kleur van een paragraaf.
* De eigenschap in dit geval is ‘color’.
* De waarde van de eigenschap ‘color’ is nu ‘orange’ ofwel oranje in het Nederlands.

```HTML
<p>Ik ben oranje</p>
```

```CSS
p {
  color: orange;
}
```

# Types CSS
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

## Verschillen
Om te illustreren wanneer we welk type CSS gebruiken zet ik hier een tabel neer met hun eigenschappen. 

| Inline CSS          | Interne CSS                | Externe CSS                           |
| ------------------- | -------------------------- | ------------------------------------- |
| In HTML bestand     | In HTML bestand            | Buiten HTML bestand (in .css bestand) |
| Per element stijlen | Meerdere elementen stijlen | Meerdere HTML pagina’s stijlen        |

* Inline CSS is niet handig als je meer dan eenzelfde element moet stylen. Je gebruikt het enkel als je iets wilt testen, voorbeelden, debuggen of in tijdelijke aanpassingen.
* Interne CSS is de middenweg. Je gebruikt ze als je vlug een document wilt opmaken en uittesten, een voorbeeld te tonen of in tijdelijke toepassingen bij grote documenten.
* We kunnen dus concluderen dat externe CSS het handigste is in gebruik en de beste praktijk is om toe te passen. 

>[!warning]
>Inline en interne CSS zijn uitzonderingen op de wet, je gebruikt ze zo min mogelijk en nooit in productieomgevingen.
>- Wanneer je een professionele website maakt voor een project of opdracht in de klas gaat men dus externe CSS gebruiken.

# CSS en styling
## Stylen met `classes`
Naast specifieke HTML elementen aanpassen kunnen we ook een klasse aanmaken om dezelfde stijl op verschillende elementen repetitief toe te passen. 

### Structuur
Om een klasse te definiëren en linken ga je:
- In CSS een willekeurige (logische) naam typen die je aan je klasse wilt geven met een punt ervoor.
- In HTML link je hem door bij je element het attribuut ‘class’ te gebruiken gevolgd door de naam van je klasse. 

```HTML
<p class=’mijnklasse’></p>
```

```CSS
.mijnklasse {

}
```

## Stylen met `ids`
Nadat je je elementen gestyled hebt met klassen of selecteren kan je unieke elementen nog eens apart aanpassen.
- Stel je hebt een paragraaf die je een in het vet wilt zetten, dan kan je dit doen met IDs

```HTML
<p id=”uniekparagraaf”></p>
```

```CSS
#uniekparagraaf {
}

```

# Boxmodel
Een layout van een webpagina bestaat uit html-objecten en hun positie tegenover elkaar. Eén manier om deze positie aan te passen is margins en padding. 
- Ze lijken gelijkaardig in functie, witruimte toevoegen tussen bepaalde elementen, maar hebben andere eigenschappen.

![[Pasted image 20240930205407.png]]

We starten met de paragraaf ‘Dit is een paragraaf’. Hier rond zetten we een zwarte border om straks duidelijk te maken wat margins en padding doen. 

>[!warning]
>De rand (border) is niet de padding of margins. We hebben het over de witruimte die wordt gecreëerd. Ze is enkel demonstratief.

```HTML
<p>Dit is een paragraaf</p>
```

```CSS
p {

    border: 1px solid black;

}
```

![[Pasted image 20240930205515.png]]

## Padding
Met padding gaan we de rand rond de content witruimte toevoegen. 
- Dit kunnen we in het algemeen rond het element doen, maar ook individueel boven, onder, rechts of links doen.

### Voorbeeld 1: Tekst
In dit geval gaan we aan ons paragraaf witruimte toevoegen.

```CSS
p {
    border: 1px solid black;
    padding: 4px;
}
```


| Voor styling                         | Na styling                           |
| ------------------------------------ | ------------------------------------ |
| ![[Pasted image 20240930205515.png]] | ![[Pasted image 20240930205629.png]] |


### Voorbeeld 2: Afbeelding
Nu gebruiken we het voorbeeld van een foto om te tonen hoe padding daar werkt.

```CSS
p {
    border: 1px solid black;
    padding: 4px;
}
```

| Voor styling                         | Na styling                           |
| ------------------------------------ | ------------------------------------ |
| ![[Pasted image 20240930205756.png]] | ![[Pasted image 20240930205819.png]] |
## Margins
Met margins gaan we de rand tussen dit element en de rondliggende elementen veranderen. 
- Alweer kunnen we dit algemeen rond het element doen, maar ook individueel boven, onder, rechts of links.


```HTML
<div>
  <p>Ik wou dat ik margins had.(</p>
  <p class="margins">Ik heb margins!</p>
</div>

```

```CSS
p {
    border: 1px solid black;
}

.margins {
    margin: 5px;
}

div {
    border: 2px solid red;
}

```

![[Pasted image 20240930210007.png]]

## Syntax
Je kan op verschillende manieren padding en margins in HTML toepassen. Hieronder vind je verschillende manieren om ze toe te passen.

### Lange notatie

| Code                                | Uitleg                                                                                                          |
| ----------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `margin`<br>`padding`<br>           | Algemene margin of padding aanpassen, kan beide positief of negatief zijn, uitgedrukt in pixels of percentages. |
| `margin-top`<br>`padding-top`       | Margin of padding voor boven het element aanpassen.                                                             |
| `margin-bottom`<br>`padding-bottom` | Margin of padding  voor onder het element aanpassen.                                                            |
| `margin-left`<br>`padding-left`     | Margin of padding voor rechts van het element aanpassen.                                                        |
| `margin-right`<br>`padding-right`   | Margin of padding voor links van het element aanpassen.                                                         |
### Korte notatie
Om niet voor elke kleine verandering een nieuw CSS stukje aan te maken kunnen we allemaal in één stuk zetten.

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
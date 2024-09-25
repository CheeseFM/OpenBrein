#kladversie 

📅 Aangemaakt: 25-09-2024

---
#onderwerpen 

---
# Introductie
## Wat is HTML?
HTML staat voor HyperText Markup Language. Het is een opmaaktaal die wordt gebruikt om
webpagina's te creëren. 
* We gaan kort over de taal die in de HTML wordt gebruikt met enkel voorbeelden. Je moet nog niet verstaan hoe ze werken, wel wat de vakjargon (Tags, elementen, attributen) betekent.

### Tags
HTML is opgebouwd uit elementen. Ze hebben opening- en closingtags om de verschillende onderdelen van een webpagina aan te maken.
* Openingstag (<>)
* Closingtag (</>)

```HTML
<p>Hallo dit is een paragraaf</p>
```

![[@ Assets/Foto's/HTML/4.png]]

### Elementen
Een element is een onderdeel van de opbouw van onze HTML, zoals een paragraaf of header

```HTML
<h1> Dit is een koptekst </h1>
<p> Dit is een paragraaf </p>
```

![[@ Assets/Foto's/HTML/6.png]]

### Attributen
Een element kan ook attributen hebben. Dit zijn eigenschappen van dat specifieke element.
* In dit voorbeeld gaan we de tekstkleur oranje maken, dit is het attribuut.

```HTML
<p style="color:orange;"> Dit is een paragraaf </p>
```

![[@ Assets/Foto's/HTML/7.png]]

## Basisstructuur HTML
Wanneer we een HTML pagina maken zit er een bepaalde basisstructuur in. We moeten de browser laten weten wat ze moet tonen en hoe.
* We gaan stukje per stukje gaan uitleggen wat, hoe en waarom we deze onderdelen gebruiken

```
<!DOCTYPE html>
<html>

<head>
    <title> Mijn website </title>
</head>

<body>
    <h1> Dit is een koptekst. </h1>
    <p> Dit is een paragraaf</p>
</body>

</html>
```

### Documenttype
Om ervoor te zorgen dat elke browser, hoe oud of nieuw dan ook, je document ze weet te lezen, specificeren we dat het over een specifieke versie van HTML gaat. Als we gewoon ‘HTML’ zetten dan gaat het over HTML 5, de nieuwste versie. Anders kan je dit anders specificeren.
* Om een voorbeeld te geven nemen we een oudere versie van HTML, HTML 4.01

```HTML
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
```

>[!info]
>Het is niet noodzakelijk, maar wel een goede praktijk om het <!DOCTYPE> element toe te voegen.

### HTML
Specificeert het begin en einde van het document. 

```HTML
<html>

. . .

</html>
```

>[!info]
>Je kan hierin ook attributen toevoegen, bv. de taal waarin de webpagina zich voordoet
>```HTML
><html lang="nl"></html>
>```

### Head
In de `<head>` van een pagina zetten we belangrijke elementen voor opmaak, metadata en functionaliteit van de webpagina.

#### Titel
Met het 'title'-element geef je de titel weer die aan het tabblad wordt toegekend. 
* Als je naar google.com browst krijg je van boven geen google.com maar gewoon ‘Google’, zo doen ze dit.

```HTML
<title>Mijn website</title>
```


| Geen titel                      | Wel titel                       |
| ------------------------------- | ------------------------------- |
| ![[@ Assets/Foto's/HTML/8.png]] | ![[@ Assets/Foto's/HTML/9.png]] |

#### Metadata
Metadata is data die niet zichtbaar is voor de gebruiker maar wel in de achtergrond meer info heeft over het (html) document, hoe ze moet getoond worden en 
* Met metadata kan je veel, bv. de auteur van de pagina kenbaar maken, trefwoorden invoeren voor SEO, je pagina om de zoveel tijd laten vernieuwen, hem laten aanpassen aan het type apparaat, …

We nemen het voorbeeld van een beschrijving aan de pagina toe te voegen.

```HTML
<meta name="description" content="Leuke zelfgemaakte website">
```

#### Stijl
In de head kan men ook verwijzen naar de [[CSS]] stijl die men wil toepassen op de pagina. 

```HTML
<style></style>
```

#### Links
A.d.h.v. links kan men een relatie tussen onze html pagina en een externe bron leggen. 
* Dit wordt gebruikt om bv. een algemeen stijlblad te hebben voor al je pagina’s of om een nieuw lettertype, …

```
<link>
```

### Body
In de body zetten we alles dat we op de pagina zelf willen laten komen. Zoals tekst, koppen, links, … we zien later hoe we dit doen.

```HTML
<body>
    <h1> Dit is een koptekst. </h1>
    <p> Dit is een paragraaf</p>
</body>
```

# HTML als opmaaktaal
Nu gaan we er voor het écht over hoe we nu een HTML document gaan opmaken, welke onderdelen er bestaan, hoe je ze toepast en waar je voor moet uitkijken.
* We gaan niet over elk element dus bekijk zeker onze bron ‘https://www.w3schools.com’ voor meer elementen en al hun attributen

## Tekst
### Commentaar
We beginnen met commentaar, in html doen we dit zo.

```HTML
<!-- Commentaar komt hier -->
```

### Een paragraaf
Het meest basic stukje tekst. Het makkelijkste maar krachtigste element van onze HTML. Ze wordt gedefinieerd met ‘p’.

```HTML
<p>Mijn eerste paragraaf</p>
```

#### Tekst benadrukken
Tekst zetten we in het vet door het ‘strong’ element

```HTML
<p>Mijn <strong>eerste</strong> paragraaf</p>
```

#### Tekst schuin benadrukken
Tekst zetten we schuin door het ‘em’ element

```HTML
<p>Mijn <em>eerste</em> paragraaf</p>
```

### Een kop of titel
Een kop of titel maken we door het ‘h1’, ‘h2’, ‘h3’ element.

```HTML
<h1>Ik ben een titel</h1>
<h2>Ik een kop van h1</h2>
<h3>Ik een kop van h2</h3>
<p>Mijn eerste paragraaf</p>
```

### Een nieuwe lijn
Wanneer je op een volgende lijn wilt verder doen dan gebruiken we het ‘br’ element

```HTML
<p>Hier is</p>
<br>
<p>Een spatie</p> 

```

## Verwijzingen
### Een link
Als je een link wilt toevoegen doen we dit met het ‘a’ element.

```HTML
<a href="https://www.google.com">Google</a>
```

### Een afbeelding
Als je een afbeelding wilt toevoegen doen we dit met het ‘img’ element.
* Hierin kan je ook alt-tekst schrijven voor mensen met visuele handicap

```HTML
<img src="https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png" alt=”Logo van YouTube”>
```

## Lijsten
### Een lijst met opsommingstekens
Een lijst met opsommingstekens starten we met ‘ul’ en elk onderdeel met ‘li’
* ‘ul’ staat voor ‘unordered list’ of ongeordende lijst
* ‘li’ staat voor list item of een onderdeel

```HTML
<ul>
	<li>Een</li>
	<li>Lijst</li>
	<li>Met</li>
	<li>Bollen</li>
</ul>
```

```Output
° Een
° Lijst
° Met
° Bollen
```

### Een lijst met nummers
Een lijst met opsommingstekens starten we met ‘ol’ en elk onderdeel weer met ‘li’
* ‘ol’ staat voor ‘ordered list’ of geordende lijst

```HTML
<ol>
	<li>Een</li>
	<li>Lijst</li>
	<li>Met</li>
	<li>Nummers</li>
</ol>
```

```Output
1. Een
2. Lijst
3. Met
4. Bollen
```

### Een tabel
Een tabel wordt gestart met ‘table’ en heeft drie grote elementen
- ‘tr’ staat voor table rows of rijen
- ‘th’ staat voor table header of tabel hoofdtekst
- ‘td’ staat voor table data of tabel data (cel)

```
<table border="1px">
    <tr>
        <th>Titel</th>
        <th>Van</th>
        <th>Tabel</th>
    </tr>
    <tr>
        <td>Dit is een</td>
        <td>cel op</td>
        <td>rij 1</td>
    </tr>
</table>
```

| Titel      | Van    | Tabel |
| ---------- | ------ | ----- |
| Dit is een | cel op | rij 1 |

>[!info]
>We gebruiken bij de tabel het attribuut ‘border=”1px” om de grenzen te tonen, anders hebben we geen grenzen.
>
>![[@ Assets/Foto's/HTML/12.png]]
>

## Opdelen
### DIV
Met het ‘div’ element kunnen we onze website opdelen in meerdere stukken.
* Visueel zien we niks anders.

```HTML
<div style='background-color: orange;'>
  <h1>Hallo!</h1>
  <p>Welkom op onze website</p>
</div>

<div style='background-color: blue;'>
  <h2>Links</h2>
  <p>Hieronder vind je belangrijke links</p>
  <a href=”https://www.example.com>Voorbeeld</a>
</div>
```

![[Pasted image 20240617110408.png]]

# Onderwerpen van HTML
%% Begin Waypoint %%
- [[CSS]]
- [[Pagina openen in nieuw tablad]]
- [[Spacing]]
- [[Veilige websites]]
- [[Website maken]]

%% End Waypoint %%
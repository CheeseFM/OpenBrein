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
### Achtergronden
#### Kleur
Uitleg

```
blok code
```

	
## CSS selectors
# Bronnen
---
- 
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
Om je HTML aan te passen a.d.h.v. een extern CSS bestand moet je die eerst linken. We doen dit letterlijk a.d.h.v. het ‘link’. Dit zetten we in de '[[HTML#Head|head]]'-sectie van het HTML bestand.
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

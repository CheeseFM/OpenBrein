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


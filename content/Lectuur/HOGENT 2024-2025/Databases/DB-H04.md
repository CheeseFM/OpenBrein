# Doelstellingen
---
- Specialisatie
- Generalisatie

# Notities
--- 
## Specialisatie & Generalisatie
### Subtypes
Het maken van subentiteittypes voor een gegeven entiteittype
- Subentiteittypes hebben geen sleutelattributen
- Subentiteittypes kunnen oook subentiteittypes hebben

![[Pasted image 20241011104114.png]]

We maken subentiteittypes aan om specifieke attributen toe te kennen (bv. regisseur gaat niet naar een toneelschool gegaan zijn, bediende mag geen overuren draaien t.o.v. arbeider, ...)

### Specialisatie
Heel generiek, we gaan van abstract naar minder abstract (crewmember -> regisseur)

### Generalisatie
Omgekeerde van specialisatie, van minder abstract naar abstract.

## Constraints
### Participatie constraint
- Totale participatie: Het is verplicht om als crewmember een subtype te zijn (bv. regisseur) **(mandatory)**
- Partiële participatie: Je mag en kan een subtype hebben maar je hoeft niet (enkel supertype) **(optional)**

### Disjoint constraint
- Overlappende subtypes: Je kan tot meer dan één subtype behoren. **(and)**
- Disjuncte subtypes: Je mag maar tot één entiteit behoren. **(or)**

Je noteert het als volgt:
![[Pasted image 20241011104805.png]]
## Beperkingen van ERD
Het ERD is een zeer goede tool om databases te modelleren, enkel heeft ze een aantal beperkingen.

### Tijdelijke items
Beperkingen die gelden in een bepaald tijdsinterval kunnen niet worden gemodeleerd
- bv. een project moet binnen een maand toegewezen worden aan een specifiek departement

### Consistentie tussen verschillende relatietypes
Soms kunnen bepaalde (reële) situaties niet worden geschetst
- bv. een werknemer kan enkel werken aan projecten die toegewezen zijn aan het departement waar hij werkt

### Domeinregels worden niet weergegeven
Attributen hebben soms bepaalde regels maar die kunnen we niet in ons ERD zetten.
- bv. Een project moet gelijk aan of meer dan 0 uren aan gewerkt zijn.

### Functies worden niet weergegeven
We zullen nooit bv. de gewerkte uren opslaan, maar wel een historiek van het startuur en einduur.
- De functie om de gewerkte uren (start- tot einduur) te vinden kunnen we niet weergeven met de ERD

## Valkuilen ERD
ERD kan pas correct zijn als alle vragen van de gebruiker kunnen worden beantwoord.
- Er zijn echter een aantal valkuilen 

### Fan trap
Wanneer één entiteitstype (bv. Departement) de relatie "1...N" met twee andere entiteitstypes (bv. Werknemer & Project). Dit zorgt ervoor dat de twee andere entiteitstypes (Werkn. & Proj.) geen duidelijke relatie hebben op het ERD, wat wel de intentie is.
#### Foute weergave
We kunnen nu niet zien welke werknemer er werkt aan een project.

![[Pasted image 20241012112224.png]]

#### Correcte weergave
We gaan de juiste associaties tussen entiteiten leggen. Een departement heeft projecten waaraan werknemers deelnemen.
![[Pasted image 20241012112637.png]]

### Chasm trap
Dit probleem treedt op wanneer er een ontbrekende verbinding of relatie is in een ERD, waardoor bepaalde gegevens niet toegankelijk zijn, zelfs als deze gegevens wel bestaan.

#### Foute weergave
Een departement heeft werknemers die een project overzien, maar tot welk departement is het project toegekend?
![[Pasted image 20241012112818.png]]

### Correcte weergave
We voegen een extra relatie toe om ons probleem weg te werken.
![[Pasted image 20241012112928.png]]

# Bronnen
---
- [Slides - Chamilo](https://chamilo.hogent.be/index.php?go=CourseViewer&application=Chamilo%5CApplication%5CWeblcms&course=59117&tool=Document&publication_category=335960&browser=Table&tool_action=Viewer&publication=2421608)
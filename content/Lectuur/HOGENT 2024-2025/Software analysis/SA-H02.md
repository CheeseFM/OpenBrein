# Doelstellingen
---
- Software ontwikkelingsproces
- Watervalmethode
- Agile
- Iteratief / Incrementeel
- UML

# Notities
--- 
## Software ontwikkelingsproces
De nadruk die men legt op een bepaald domein hangt zwaar af van het belang van de klant.
- De klant kan bv. kwaliteit meer waarderen dan kost en tijd, of juist iets simpels maar snel en goedkoop.
![[Pasted image 20240930212840.png]]
### Verloop project
Je splitste je project op in vijf onderdelen
- Analyse: Wat zijn de behoeftes van de klant (rekening houdend met de wisselwerkingsdriehoek)
	- Backlog: Een (taken)lijst met functionaliteiten die de klant wilt (en meestal ook de tijd die dat onderdeel waarschijnlijk zal innemen
- Ontwerp: Een simpele abstracte vertoning voor de klant om te zien hoe jij het project gaat aanpakken.
- Implementatie: Bij software gaan we bij deze stap beginnen met programmeren.
- Testen: Test of je programma (goed) werkt
- Integratie: Het invoeren van je project bij de klant
- Onderhoud: (Indien nodig) je product onderhouden op lange termijn (bugs, updates, ...)

## Methodes
### (Inleiding voorbeeld)
Een bedrijf wil een mobiele fitness-app, ze vragen voor de volgende functionaliteit (backlog):
- Registeren en inloggen
- Trainingsschema maken
- Doelen stellen
- Statistiek bijhouden

### Waterval
Je zal de [[#Verloop project|vijf onderdelen]] opeenvolgend in één keer uitvoeren. Na het afwerken van een fase kan er niet terug worden gegaan.
- Alles moet op voorhand heel duidelijk zijn of project zal in de soep vallen

![[Pasted image 20240930215714.png]]

#### Voorbeeld
We volgen de [[#Verloop project|vijf onderdelen]] exact in fasen. Op het einde gaan we naar de opdrachtgever met het volledige product op basis van de analyse.
- Bij het vragen voor toevoegen van functionaliteit (na afgave product) moeten we helemaal weer opnieuw beginnen met onze vijf fasen.

### Agile (Iteratief-incrementeel)
Het project wordt in incrementen opgedeeld (kleinere deeltjes) waarin we de [[#Verloop project|vijf onderdelen]] toepassen om telkens ons project op te bouwen. Dit doen we over een paar iteraties (herhalingen) om een volledig product te krijgen.

![[Pasted image 20240930214430.png]]

#### Voorbeeld
Eerste week:
- Doel: Basisfunctionaliteit voor registratie en inloggen.
- Vijf onderdelen:
	- Analyse: Elke dag komt het team kort bijeen om te bespreken wat er gedaan is.
	- Ontwikkeling: Programmeurs bouwen de inlog- en registratiefunctionaliteit.
	- Testen: Na ontwikkeling wordt de functionaliteit getest door het team om bugs te vinden.
	- Review aan het einde van de sprint: Aan het einde van de sprint toont het team de werkende inlogfunctie aan de stakeholders en vraagt om feedback.

Tweede week:
- Doel: Trainingsschema & functionaliteit toevoegen.
- Vijf onderdelen:
	- Tijdens de review van de vorige sprint bleek dat gebruikers naast e-mail ook met hun telefoonnummer wilden kunnen inloggen. Dit wordt toegevoegd aan de backlog.
	- Ontwikkeling: Het team werkt aan het bouwen van de functionaliteit voor het maken van een trainingsschema.
	- Testen en review: Het schema wordt gedemonstreerd, en feedback van de stakeholders wordt verwerkt.

...

## UML
(= Unified modeling language) Een modelleertaal om objectgeoriënteerde analyses en  ontwerpen voor een informatiesysteem te kunnen maken
- UML zelf is geen methode, maar een notatiewijze die bij verschillende methodes (zoals Iteratief-Incrementeel) kan worden gebruikt.
- Waarom: Gemakkelijker te lezen dan tekst (in de vorm van code)


### Domeinmodel
Toont a.d.h.v. een class en/of object diagram de klassen en objecten van een object-georiënteerd project op een visuele manier. (gelijkaardig aan een ERD)
![[Pasted image 20240930220156.png]]

### Activity diagram
Een diagram dat de stroom van activiteiten of handelingen binnen een systeem beschrijft.

![[Pasted image 20240930220438.png]]

### Use case diagram
Een Use case diagram beschrijft het gedrag van een systeem vanuit het perspectief van de gebruiker.
- Het toont welke functies (use cases) een systeem biedt aan zijn systemen

![[Pasted image 20240930220630.png]]

### Sequence diagram
Een Sequence diagram toont de interacties tussen objecten in een systeem over tijd, vooral gericht op hoe deze objecten berichten naar elkaar sturen om een specifieke functie te voltooien.

![[Pasted image 20240930220710.png]]

# Bronnen
---
- [Slides - Chamilo](https://chamilo.hogent.be/index.php?application=Chamilo%5CApplication%5CWeblcms&go=CourseViewer&course=62361&tool=LearningPath&tool_action=ComplexDisplay&publication=2379863&preview_content_object_id=4839204&learning_path_action=Viewer&child_id=287936)
- [Cursus - Chamilo](https://chamilo.hogent.be/index.php?application=Chamilo%5CApplication%5CWeblcms&go=CourseViewer&course=62361&tool=LearningPath&tool_action=ComplexDisplay&publication=2379863&preview_content_object_id=4839204&learning_path_action=Viewer&child_id=143861)
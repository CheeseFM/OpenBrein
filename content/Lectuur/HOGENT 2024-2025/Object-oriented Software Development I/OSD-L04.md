Debuggen:
![[Pasted image 20241001141831.png]]

Van view veranderen (debug <-> programmeer)
![[Pasted image 20241001141759.png]]

Relationele operatoren:
```
<  Kleiner dan
>  Groter dan
>=  Groter dan of gelijk aan
<=  Kleiner dan of gelijk aan
==  Gelijk aan
!=  Niet
```

````Java
import java.util.Scanner;

  

public class ControleStructuur {

public static void main(String[] args) { // Volgt ene achter andere (Sequentie)

ControleStructuur cs = new ControleStructuur(); // Maakt een object (ControleStructuur) voor de klasse

// 'ControleStructuur'

cs.demonstreerIf(); // Oproep aan 'ControleStructuur' (cs) om methode

// 'demonstreerIf' uit te voeren

// cs.demonstreerIfElse();

// cs.demonstreertGenesteIfElse();

// cs.demonstreerMenuMetSwitch();

// cs.demonstreerTernaireOperator();

}

  

private void demonstreerTernaireOperator() {

int aantalStudenten = 20;

System.out.printf("Er zit%s %d student%s in de klas.", aantalStudenten == 1 ? "" : "ten", aantalStudenten,

aantalStudenten == 1 ? "" : "en"); // 'aantalStudenten == 1' is nog altijd een conditie, maar de

// volledige ternaire operator is een expressie, geen

// controlestructuur

}

  

private void demonstreerMenuMetSwitch() {

Scanner invoer = new Scanner(System.in);

toonMenu();

  

int keuze = invoer.nextInt();

  

// if (keuze == 1) {

// System.out.println("Optelling");

// } else if (keuze == 2) {...

  

switch (keuze) { // Switch case controlestructuur

case 9, 20 -> System.out.println("Easter egg!"); // Meerdere condities

case 1 -> System.out.println("Optellen");

case 2 -> System.out.println("Aftrekken");

case 3 -> {

System.out.println("Vermenigvuldigen");

System.out.println("ttz product");

}

case 4 -> {

System.out.println("Deling");

}

case 5 -> System.out.println("Rest na deling");

default -> System.out.println("Geen geldige keuze!"); // Als geen enkele andere case past

}

}

  

private void toonMenu() {

System.out.println("MENU");

System.out.println("====");

System.out.println("1. Optellen");

System.out.println("2. Aftrekken");

System.out.println("3. Vermenigvuldigen");

System.out.println("4. Deling");

System.out.println("5. Rest na deling");

System.out.print("Maak je keuze > ");

}

  

private void demonstreerIf() {

Scanner invoer = new Scanner(System.in);

System.out.print("Geef het maandsalaris op > ");

int maandSalaris = invoer.nextInt();

boolean positief = maandSalaris >= 0; // is maandSalaris groter of gelijk aan nul? -> Opgeslagen in bool

// 'positief': True of False?

  

if (positief) {

int jaarSalaris = maandSalaris * 12;

double vakantiegeld = jaarSalaris * 0.08;

System.out.printf("\nHet jaarsalaris bedraagt: %d€", jaarSalaris);

System.out.printf("\nHet vakantiegeld bedraagt %.2f€", vakantiegeld);

}

System.out.print("\nSALU!!!!!!!!!!!!!!!!!");

} // Keert terug naar oproep

  

private void demonstreerIfElse() {

Scanner invoer = new Scanner(System.in);

System.out.print("Geef het maandsalaris op > ");

int maandSalaris = invoer.nextInt();

  

if (maandSalaris >= 0) {

int jaarSalaris = maandSalaris * 12;

double vakantiegeld = jaarSalaris * 0.08;

System.out.printf("\nHet jaarsalaris bedraagt: %d€", jaarSalaris);

System.out.printf("\nHet vakantiegeld bedraagt %.2f€", vakantiegeld);

} else {

System.out.print("\nKan niet berekenen voor negatief maandsalaris!");

}

  

System.out.print("\nSALU!!!!!!!!!!!!!!!!!");

} // Keert terug naar oproep

  

private void demonstreertGenesteIfElse() {

int getal1 = 10, getal2 = 7, getal3 = -6;

int grootste;

  

if (getal1 > getal2) {

if (getal1 > getal3) {

grootste = getal1;

} else {

grootste = getal3;

}

} else {

if (getal2 > getal3) {

grootste = getal2;

} else {

grootste = getal3;

}

}

System.out.printf("Grootste getal is %d.", grootste);

} // Keert terug naar oproep

}
```
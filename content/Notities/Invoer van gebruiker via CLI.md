#kladversie 

📅 Aangemaakt: 25-09-2024

---
```Java
package cui;

import java.util.Scanner; // Gebruik maken van scanner object uit .util bibliotheek

public class Calc {

	public static void main(String[] args) {
		// int getal1; -> Variabele declareren in Java
		// getal1 = 26; -> Initialisatie (Eerste toekenning van waarde)
		// int getal2 = 23; -> Declaratie en initialisatie tegelijk

		// Variabelen declareren
		int getal1;
		int getal2;
		int som1;

		// Initialisatie van bibliotheek 'java.util' met object 'scanner' voor invoer
		Scanner input = new Scanner(System.in);

		// Beschrijving programma aan gebruiker
		System.out.println("=={ Rekenmachine die twee gehele getallen optelt }==\n");

		// Waarden voor getal 1 & 2 aanvragen aan gebruiker
		System.out.print("Voer eerste getal in: ");
		getal1 = input.nextInt();

		System.out.print("Voer tweede getal in: ");
		getal2 = input.nextInt();

		// Som van getal 1 & 2 opslaan in var 'som1'
		som1 = getal1 + getal2;
		System.out.printf("\nDe som van %d en %d is %d", getal1, getal2, som1);
	}

}
```
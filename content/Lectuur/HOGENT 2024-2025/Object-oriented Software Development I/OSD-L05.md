Hoofdstuk 2: Controlestructuren

# Iteraties

``` Java
package cui;

import java.util.Scanner;

public class Iteratie {

	public static void main(String[] args) {
		Iteratie it = new Iteratie();
//		it.demonstreerSimpeleFor();
		it.toonKlasGemiddelde();
	}

	private void toonKlasGemiddelde() {
		Scanner invoer = new Scanner(System.in);

		System.out.print("Hoeveel studenten zijn er in de klas? > ");
		int aantalStudenten = invoer.nextInt();
		System.out.print("Op hoeveel stond de evaluatie? > ");
		int bovengrens = invoer.nextInt();
		double totaal = 0;

		System.out.print("\n");

		for (int i = 1; i <= aantalStudenten; i++) {
			System.out.printf("Geef het resultaat van student %d > ", i);
			int resultaat = invoer.nextInt();
			totaal += resultaat;
		}

		double gemiddelde = totaal / aantalStudenten;
		System.out.printf("\nHet gemiddelde is %.2f/%d", gemiddelde, bovengrens);
	}

	private void demonstreerSimpeleFor() {
		// teller updaten
		// teller = teller + 1
		// teller += 1
		// teller++
		// ++teller

		int getal = 10;
		System.out.println(++getal); // Levert vier en print vier print (expressie)
		System.out.println(getal);

		getal = 10;
		System.out.println(getal++); // Levert drie maar verandert 'getal' wel na expressie (print)
		System.out.println(getal);

		for (int i = 0; i <= 10; i++) {
			System.out.printf("%d\n", i);
		}
//		for (initialisatie; conditie; update) {
//		    code die herhaald wordt
//		} -> Update en terug herhalen
	}
}
```
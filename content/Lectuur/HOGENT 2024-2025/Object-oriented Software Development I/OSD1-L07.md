**Groot en klein**

```Java
package cui;

import java.util.Scanner;

public class GetallenVerwerker {

	public static void main(String[] args) {
		GetallenVerwerker gw = new GetallenVerwerker();
		gw.bepaalGrootsteEnKleinste();
	}

	private void bepaalGrootsteEnKleinste() {
		int getal = geefGeheelGetal();
		int grootste = Integer.MIN_VALUE;
		int kleinste = Integer.MAX_VALUE;
		while (getal != 0) {
			if (grootste == 0) {
				kleinste = getal;
				grootste = getal;
			} else {
				if (getal > grootste)
					grootste = getal;
				if (getal < kleinste)
					kleinste = getal;
			}
			getal = geefGeheelGetal();
		}
		if (grootste == 0) {
			System.out.println("Er werden geen getallen ingevoerd...");
		} else {
			System.out.printf("Het kleinste getal is %d, het grootste is %d.", kleinste, grootste);
		}

	}

	private int geefGeheelGetal() {
		Scanner invoer = new Scanner(System.in);
		System.out.print("Geef een getal 0 om te stoppen > ");
		int getal = invoer.nextInt();
		return getal;
	}
}
```
**Valideer invoer**
```Java
package cui;

import java.util.Scanner;

public class ValideerInvoer {
	public static void main(String[] args) {
		ValideerInvoer vi = new ValideerInvoer();
		vi.valideerTweeGetallen();
	}

	private void valideerTweeGetallen() {
		int getal1 = geefGetalVerschillendVan1000NietDeelbaarDoor12();
		int getal2 = geefGetalGroterDan(getal1);
		System.out.printf("Getal 1 = %d en getal 2 = %d", getal1, getal2);
	}

	private int geefGetalGroterDan(int ondergrens) {
		Scanner invoer = new Scanner(System.in);
		int getal;
		boolean invoerOK;
		do {
			System.out.printf("Geef een getal groter dan %d > ", ondergrens);
			getal = invoer.nextInt();
			invoerOK = getal > ondergrens;
		} while (!invoerOK);
		return getal;
	}

	private int geefGetalVerschillendVan1000NietDeelbaarDoor12() {
		Scanner invoer = new Scanner(System.in);
		int getal;
		boolean invoerOK;

		do {
			System.out.print("Geef een getal verschillend van 1000 en niet deelbaar door 12 > ");
			getal = invoer.nextInt();
			invoerOK = getal != 1000 && getal % 12 != 0; // Validatie
			if (!invoerOK) {
				System.out.println("Dit is geen geldige invoer, probeer opnieuw ...");
			}
		} while (!invoerOK);

		return getal;
	}
}

```
**Sterren**
```
package cui;

public class Patroon {
	public static void main(String[] args) {
		Patroon p = new Patroon();
		p.toonPatroonC();
	}

	private void toonPatroonC() {
		for (int aantalSterretjes = 10; aantalSterretjes >= 1; aantalSterretjes--) {
			tekenLijntjeMetSterren(aantalSterretjes);
			System.out.println();
		}
	}

	private void tekenLijntjeMetSterren(int aantalSteren) {
		for (int ster = 1; ster <= aantalSteren; ster++) {
			System.out.print("*");
		}
	}
}

```

#kladversie 

📅 Aangemaakt: 23-09-2024

---

```Java
package cui;

import java.util.Scanner;

public class Tabel {

	public static void main(String[] args) {
		Scanner invoer = new Scanner(System.in);

		// Invoer
		System.out.print("Geef een positief getal in: ");
		int getal = invoer.nextInt();

		System.out.printf("%15d%15d%15d%15d%15d%15d", 1, 10, 100, 1000, 10000, 100000);
		System.out.printf("\n%15d%15d%15d%15d%15d%15d", getal, getal * 10, getal * 100, getal * 1000, getal * 10000,
				getal * 100000);
	}
}
```


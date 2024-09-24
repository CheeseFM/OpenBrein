#kladversie 

📅 Aangemaakt: 24-09-2024

---
``` Java
package cui;

public class Wereld {
	public static void main(String[] args) {
		// Druk hallo wereld af op console
		System.out.println("hallo wereld hoi hoi!!!!!");
		// Druk iets af op het scherm tussen de haakjes

		System.out.printf("%-10s%10s%n", "Jan", "Jansens");
		System.out.printf("%-10s%10s%n", "Piet", "Pieters");
		System.out.printf("%d", 2 + 3);

		// Geformateerde tekst (%s = string) chronologisch gevonden na de komma
		// %n is de 'format specifier' voor naar een nieuwe lijn te gaan
		// %d is een decimaal getal
		// %s -> String %S -> Hoofdletter string
		// %f -> floating point nummer
		// %NUMMERformatspecifier: zet n aantal karakters voor het gegeven (kan
		// witruimte of vorige karakters zijn)
		// Door een negatief nummer te gebruiken zal de compiler 'n' karakters erna
		// zetten
	}
}
```

```Console
hallo wereld hoi hoi!!!!!
Jan          Jansens
Piet         Pieters
5
```
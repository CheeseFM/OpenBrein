**For lus (Oefening 9)**

``` Java
package cui;

import java.util.Scanner;

public class ToepassingForLus {

	public static void main(String[] args) {
		ToepassingForLus tfl = new ToepassingForLus();

		tfl.toonGetallenEvenEnDeelbaarDoor3();
	}

	private void toonGetallenEvenEnDeelbaarDoor3() {
		Scanner invoer = new Scanner(System.in);
		int aantalEvenGetallen = 0;
		int aantalDeelbaarDoorDrie = 0;
		System.out.println("de oplossing voor die oefening");
		for (int i = 1; i <= 5; i++) {
			System.out.printf("Geef getal %d in > ", i);
			int getal = invoer.nextInt();
			if ((getal % 2) == 0)
				aantalEvenGetallen++;
			if ((getal % 3) == 0)
				aantalDeelbaarDoorDrie++;

		}
		System.out.printf("Je gaf %d even getal%s en %d getal%s deelbaar door 3 in.", aantalEvenGetallen,
				aantalEvenGetallen == 1 ? "" : "len", aantalDeelbaarDoorDrie, aantalDeelbaarDoorDrie == 1 ? "" : "len");
	}

}
```

**While loop**

**Nieuwe shortcut maken**
Window > Preferences

![[Pasted image 20241008151704.png]]


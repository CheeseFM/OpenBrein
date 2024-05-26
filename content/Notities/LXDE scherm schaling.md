#documentatie  #afgerond

🗂️ Onderwerp: [[De ultieme headless Pi]]
🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)

>[!warning] Knowhow
>[[💻 Basis informatica]]

---
Op een computer heb je ook de schaal van een scherm, zo kun je een scherm met een gigantische resolutie hebben die ook nog leesbare tekst heeft. 

> [!info] Voorbeeld in windows
  ![[Pasted image 20240526183447.png]]

De LXDE omgeving waarop de Raspberry Pi is gebouwd doet dit niet standaard. Je moet een bestandje aanmaken met een configuratie.

```Bash
sudo nano ~/.Xresources
```

In dit bestand zet je het volgende:

```Bash
Xft.dpi: 150
```

* `150` is het percentage waarmee er geschaald wordt, je kan dit verhogen of verlagen naar gelang je het ervaart.

---

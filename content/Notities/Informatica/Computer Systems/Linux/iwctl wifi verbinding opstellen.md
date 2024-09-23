#kladversie  #uitgewerkt  #volwassen

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 07-07-2024

---
# Opstarten iwctl
Je start het programma door in je command prompt `iwctl` te typen, je krijgt een nieuwe lijn met `[iwd]#` waar je de volgende commando's moet typen

# Zoeken naar je adapter
Typ `station list` om alle adapters verbonden met je apparaat op te lijsten.

# Scannen
Nu gaan we de wifi netwerken scannen met de gekozen adapter, vul die dan ook in, in de plaats van `ADAPTER`. Meestal is dit `wlan0` of staat er ergens een `w` in.

```
station ADAPTER scan
```

# Oplijsten netwerken
Nu de adapter de netwerken heeft gescand moeten we die nu nog eens oplijsten met `station ADAPTER get-networks` en vind je wifi naam. Deze staat onder `SSID`, bv. "mijn wifi netwerk"

# Verbinden
Gebruik het commando `station ADAPTER connect 'mijn wifi netwerk'` en pas natuurlijk `ADAPTER` en `mijn wifi netwerk` aan, gevolgd door je wachtwoord in te vullen.
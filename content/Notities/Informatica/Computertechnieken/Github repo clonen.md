#kladversie

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 17-06-2024

---
https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository

Om een repo af te halen van Github om zelf iets te compileren of zelfs om later die terug te pushen als je bijdrager of eigenaar van die repo bent moet je die clonen naar je pc.

# Stappenplan
## Ga naar de repo die je wilt afhalen
Ik ga bv. naar `github.com/CheeseFM/test-git`.

![[Pasted image 20240617204912.png]]
## Download via HTTPS
Klik op code en daarna op de kopieer knop bij `HTTPS`

![[Pasted image 20240617205356.png]]

## Zoek je [[Een (doel)map of bestand vinden|doelmap]] 
Ik zal mijn repo clonen naar Downloads bv. `C:\Users\gebruiker\Downloads`

## Open een terminal 
Ga naar je doelmap in de terminal of open de terminal via Windows Verkenner en clone de repo

```Powershell
git clone https://github.com/CheeseFM/test-git
```

```Output
Cloning into 'test-git'...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 3 (delta 0), pack-reused 0
Receiving objects: 100% (3/3), done.
```

## Gekloond! 
Je repository staat nu op je PC!

![[Pasted image 20240617205721.png]]
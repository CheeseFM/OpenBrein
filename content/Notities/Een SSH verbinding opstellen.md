#documentatie  #afgerond

🗂️ Onderwerp: [[🖥️ Computertechnieken]]
🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)

>[!warning] Knowhow
>[[💻 Basis informatica]]

---
# Inleiding
## Wat is SSH?
SSH ofwel 'Secure Shell' is een manier om met UNIX gebaseerde systemen te interfacen over het netwerk. 

![[Drawing 2024-05-26 22.18.36.excalidraw]]
## Vereisten SSH
Om SSH te gebruiken moet op jouw PC een SSH client staan en op de server of PC die je wilt bereiken een SSH server. In meeste besturingssystemen zit al een SSH client ingebouwd, maar een SSH server is zeker niet even frappant. 

# Gebruiken SSH
## Configuratie op doelsysteem
Op jouw server ga je de SSH server installeren of aanzetten, we gaan er van uit dat je een Ubuntu of Debian gebaseerd systeem hebt.

```Bash
sudo apt install openssh-server && sudo systemctl enable sshd.service
```

## Gebruik op gastsysteem
In je terminal (bv. PowerShell, CMD, Bash, ZSH, ...) typ je het volgende:

```Bash
ssh gebruikersnaam@ipadres
```

* `gebruikersnaam` wordt vervangen door je Linux gebruikersnaam
* `ipadres` wordt vervangen door je doelsysteem IP adres

Je zal uiteindelijk een passwoord moeten invoeren - Dit passwoord is het passwoord ingesteld voor de gebruiker waarmee je probeert in te loggen.

# SSH zonder paswoord
Je kan ook SSH configureren om geen passwoord te gaan gebruiken - Maar dit betekent niet dat er geen beveiliging gebeurt! We maken gebruik van een versleutelde verbinding.

## Sleutels genereren
Om een versleutelde verbinding op te zetten hebben we natuurlijk sleutels nodig! We genereren ze met het `ssh-keygen` commando:

```Bash
ssh-keygen
```

Je zal bij het uitvoeren gevraagd worden om een passcode in te voeren, als je dit doet zal je de sleutels encrypteren en bij elk gebruik moeten decrypteren met het passwoord. Voor meeste mensen is deze passcode niet nodig en doe je het best niet.

```Output
ssh-keygen

Generating public/private rsa key pair.
Enter file in which to save the key (C:\Users\jelle/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in C:\Users\jelle/.ssh/id_rsa
Your public key has been saved in C:\Users\jelle/.ssh/id_rsa.pub
The key fingerprint is:
SHA256:gbndltU7JRv5cyKZVeA6rmQKJGR+aTJHkWJAeuDElnA gebruiker@computer
```

>[!info]
>Je doet deze `ssh-keygen` op jouw gastsysteem waarmee je met de server wil verbinden, niet op de server zelf!

## Sleutels overbrengen
Nu moeten we onze sleutel delen met de server waarvan we de verbinding in stand willen brengen. 
### Je computer draait ook Linux of macOS
Als je gastsysteem ook Linux draait kunnen dit met een gemakkelijke tool doen, genaamd `ssh-copy-id`.

```Bash
ssh-copy-id gebruikersnaam@ipadres
```

* `gebruikersnaam` wordt vervangen door je Linux gebruikersnaam
* `ipadres` wordt vervangen door je doelsysteem IP adres

### Je computer draait Windows
Voor windows is het een tikkeltje anders. We gebruiken een ander commando met ongeveer dezelfde structuur.

```
type $env:USERPROFILE\.ssh\id_rsa.pub | ssh gebruikersnaam@ipadres "cat >> .ssh/authorized_keys"
```

* `gebruikersnaam` wordt vervangen door je Linux gebruikersnaam
* `ipadres` wordt vervangen door je doelsysteem IP adres 

---
#### **⛓️ Verwijzingen:**
* [[Versleuteling]]
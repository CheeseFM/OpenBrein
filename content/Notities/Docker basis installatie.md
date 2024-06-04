#kladversie

🗂️ Onderwerp: [[🐋 Docker]]
🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 22-05-2024

---
# Installatie Docker
## Repo toevoegen
Het programma ‘docker’ en al haar componenten zijn niet te vinden in de servers van ubuntu. We moeten dus een extra repo toevoegen zodat de computer weet wat en waar hij iets moet afhalen.
* Dit doen we a.d.h.v. enkele commando’s in docker documentatie (zie link hierboven) je opent een terminal en plakt wat hieronder staat één voor één 

### Update

``` Bash
sudo apt-get update
```

### Afhankelijkheden

``` Bash
sudo apt-get install ca-certificates curl gnupg
```

### Keyrings initialiseren

``` Bash
sudo install -m 0755 -d /etc/apt/keyrings
```

### Keyrings downloaden

``` Bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

### Rechten keyring

``` Bash
sudo chmod a+r /etc/apt/keyrings/docker.gpg
```

### Repolijst updaten

``` Bash
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

### Updaten

``` Basj
sudo apt-get update
```

## Pakketten afhalen
Docker heeft enkele programma’s nodig om te werken, ze bestaat dan ook uit meerdere modules. Je download alle benodigde componenten voor onze toepassing a.d.h.v. dit commando:

``` Bash
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

* Dit installeert het dockerprogramma, de nodige virtualisatiecomponenten, de module om via terminalvenster te communiceren, …

## Na installatie
### Testen
Om uit te testen of het programma correct werkt kunnen we een voorbeeldprogramma van docker draaien. - Deze test of docker automatisch opstart met de computer, virtualisatie werkt en of je een container kan starten.

``` Bash
sudo docker run hello-world
```

### Toevoegen aan docker groep
Om commando’s uit te voeren zonder administrator rechten moeten we onze gebruiker toevoegen aan de docker groep. - We starten hierna ook de installatie opnieuw op, dit is nodig voor het herkennen van de verandering van gebruikers in de groep.

``` Bash
sudo usermod -aG docker $USER && sudo systemctl reboot
```

### Checken docker groep
Om te kijken of je gebruiker is toegevoegd aan de groep log je in als die gebruiker en voer je het ‘groups’ commando uit:

``` Bash
groups
```

``` Output
kaas adm cdrom sudo dip plugdev lpadmin lxd sambashare docker
```

> [!info]
> De groepen verschillen van systeem tot systeem en a.d.h.v. geïnstalleerde software, updates, … - Je moet alleen kijken of ‘docker’ hier staat.

# Configuratie swarm
## [[Docker swarm]]
Docker Swarm is als een dirigent voor containers. Stel je voor dat containers kleine pakketjes zijn waarin apps zitten. Swarm regelt hoeveel van deze pakketjes waar moeten draaien op verschillende computers. Het zorgt ervoor dat alles soepel samenwerkt, dat er genoeg pakketjes draaien, en als er een computer uitvalt, neemt een andere het over zodat je app blijft werken.

### Activeren swarm
Nu gaan we een swarm activeren, je zal `IPVANJOUWSYSTEEM` moeten veranderen naar het IP adres toegekend via DHCP of de statische IP in jouw netplan. Je vind dit met ‘ip a’

``` Bash
docker swarm init --advertise-addr IPVANJOUWSYSTEEM
```

## Netwerk
We zullen een virtueel netwerk in Docker aanmaken om alle containers met elkaar te kunnen verbinden.

``` Bash
docker network create -d overlay proxy
```

>[!warning]
>Je moet dan ook bij elke `docker-compose.yml` het netwerk `proxy` toevoegen aan je configuratie. Zoals bv bij [[NGINX op docker]]:
>
>![[NGINX op docker#Configuratiebestand]]
#documentatie  #bezig 

🗂️ Onderwerp: [[Ontwikkelen van OpenBrein]]
🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)

---
# Mijn probleem
Ik wil wel alles synchroniseren met Github, voor mij totaal geen probleem. Maar het gebruiken van foto's en andere documenten in mijn notities en documentatie is cruciaal. Alhoewel Github dit graag wel allemaal opslaat kan je tot 1 GB per repo vooraleer je waarschuwingen krijgt en [50 MB per bestand ](https://backrightup.com/blog/github-storage-limits/#:~:text=GitHub%20limits%20the%20maximum%20file,minimize%20performance%20impact%20on%20GitHub.).

# De oplossing
Ik wil mijn eigen server thuis gebruiken om de Quartz docker image te hosten.
-> Maar mijn iCloud data moet ook gesynchroniseerd worden met die server.

### Huidige opstelling
![[Pasted image 20240520230809.png]]

## Droom opstelling
![[Pasted image 20240520224229.png]]

## Benodigdheden
* https://hub.docker.com/r/mandarons/icloud-drive
* https://quartz.jzhao.xyz/hosting#self-hosting
* https://hub.docker.com/r/linuxserver/syncthing
* [[NGINX op docker]]

---

# Quartz installeren > [[Quartz installatie]]
## Nodige pakketen installeren

```
sudo apt install nodejs npm git
```

>[!warning] 
>Op moment van schrijven moet ik via een commando van npm een nieuwere versie installeren om te kunnen werken met Quartz op mijn Ubuntu LTS server.
>https://github.com/nodesource/distributions

## Bestandstructuur aanmaken
Nu dat je quartz hebt afgehaald moeten we ons nog in de map begeven, we doen dit met `cd` of grafisch door op de map te klikken

``` Bash
mkdir -p ~/data/ && cd ~/data/
```

## Afhalen via Git
Voer het git clone commando uit in jouw doelmap, ze maakt automatisch een mapje 'quartz' aan met alles dat in de huidige Quartz 4.0 repository staat.

``` PowerShell
git clone https://github.com/jackyzha0/quartz.git
```

``` Output
PS C:\Users\jelle> git clone https://github.com/jackyzha0/quartz.git
Cloning into 'quartz'...
remote: Enumerating objects: 8843, done.
remote: Counting objects: 100% (21/21), done.
remote: Compressing objects: 100% (21/21), done.
remote: Total 8843 (delta 7), reused 9 (delta 0), pack-reused 8822
Receiving objects: 100% (8843/8843), 6.80 MiB | 6.77 MiB/s, done.
Resolving deltas: 100% (5465/5465), done.
```

## Initialiseren en aanmaken Quartz
Quartz is gebouwd en afhankelijk van NodeJS en npm, hierdoor moeten we onze omgeving initialiseren en 'creëren' zodat ze alle afhankelijkheden afhaalt. Dit doen we a.d.h.v. de volgende commando's.

``` Bash
npm i
```

``` Output
PS C:\Users\jelle\testvault> npm i

added 514 packages, and audited 516 packages in 14s

178 packages are looking for funding
  run `npm fund` for details
```

En nu maken we onze Quartz installatie aan:

``` Bash
npx quartz create
```

## Configureren Quartz
Na het vorige commando te runnen zal hij vragen voor enkele opties te selecteren, kijk wat voor jou toepasselijk is. - Meestal laat je het best gewoon op de default opties. (Je navigeert met pijltjes en selecteert met enter)

``` Output
PS C:\Users\jelle\testvault> npx quartz create

T   Quartz v4.2.3
|
*  Choose how to initialize the content in `C:\Users\jelle\testvault\content`
|  > Empty Quartz
|    Copy an existing folder
|    Symlink an existing folder
```

``` Output
T   Quartz v4.2.3
|
o  Choose how to initialize the content in `C:\Users\jelle\testvault\content`
|  Empty Quartz
|
*  Choose how Quartz should resolve links in your content. This should match Obsidian's link format. You can change this
later in `quartz.config.ts`.
|  > Treat links as shortest path ((default))
|    Treat links as absolute path
|    Treat links as relative paths
```

``` Output
T   Quartz v4.2.3
|
o  Choose how to initialize the content in `C:\Users\jelle\testvault\content`
|  Empty Quartz
|
o  Choose how Quartz should resolve links in your content. This should match Obsidian's link format. You can change this
later in `quartz.config.ts`.
|  Treat links as shortest path
|
—  You're all set! Not sure what to do next? Try:
  • Customizing Quartz a bit more by editing `quartz.config.ts`
  • Running `npx quartz build --serve` to preview your Quartz locally
  • Hosting your Quartz online (see: https://quartz.jzhao.xyz/hosting)

```

## HTML pagina's aanmaken
Voer een eerste conversie uit om je `public` map aan te maken. Je zou normaal gezien automatisch een index.html en bijhorende web componenten moeten genereren.

``` PowerShell
npx quartz build
```

![[Pasted image 20240522002006.png]]

# NGINX installeren > [[NGINX op docker]]
## Aanmaken bestandstructuur
We gaan onze bestandsstructuur aanmaken! Om enkele configuratie door te voeren om de website volledig te kunnen laten werken met Quartz moeten we een `nginx.conf` later aanmaken. Hiervoor maken we de map `conf` onder de datamap van nginx.

``` Bash
mkdir -p ~/data/config/nginx/ && mkdir -p ~/data/nginx/conf
```

```
.
└─data
       ├─ config
       │      └─ nginx
       │               └─ conf
       
       └─ nginx
```

> [!info]
> In deze installatie hebben we de 'html map' niet nodig aangezien we gewoon de public map van Quartz door gaan geven aan nginx.

## Aanmaken configuratie nginx
[Opbouw nginx.conf - Stack overflow](https://stackoverflow.com/questions/41766195/nginx-emerg-server-directive-is-not-allowed-here) [Mime types  - Stack overflow](https://stackoverflow.com/questions/10075304/nginx-fails-to-load-css-files)
Dit is het configuratiebestand voor NGINX om de juiste bestanden op de juiste manieren te gebruiken.

* Je moet enkel de `server_name` nog aanpassen naar de je domeinnaam als je ze op het web gaat zetten.


``` Bash
nano ~/data/nginx/conf/nginx.conf
```

``` perl
events {
}
http {

    include /etc/nginx/mime.types;
    sendfile on;

    server {
        listen 80;

        server_name localhost;
        
        root /usr/share/nginx/html;
        index index.html;
        error_page 404 /404.html;

        location ~ \.css {
            add_header  Content-Type    text/css;
        }
        location ~ \.js {
            add_header  Content-Type    application/x-javascript;
        }

        location / {
            try_files $uri $uri.html $uri/ =404;
        }
    }
}
```

## Aanmaken configuratiebestand
[NGINX documentatie](https://docs.nginx.com/nginx/admin-guide/installing-nginx/installing-nginx-docker/#:~:text=Maintaining%20Content%20and%20Configuration%20Files%20on%20the%20Docker%20Host&text=Any%20change%20made%20to%20the,etc%2Fnginx%20in%20the%20container.)
Nu moeten we de `docker-compose.yml` aanmaken in de `config` folder van onze server. Hier leggen we niet de link met de gewoonlijke HTML folder, maar met de `public` folder van onze 

``` Bash
nano ~/data/config/nginx/docker-compose.yml
```

``` YAML
version: "3.3" 

services: 
  nginx-webserver: 
    image: nginx
    volumes:
      - /home/GEBRUIKERSNAAM/data/quartz/public:/usr/share/nginx/html
      - /home/GEBRUIKERSNAAM/data/nginx/conf/nginx.conf:/etc/nginx/nginx.conf
    ports:
      - "8080:80"
    networks:
      - proxy
    deploy:
      replicas: 1
      restart_policy:
        condition: on-failure
        delay: 5s
        max_attempts: 3
        window: 120s

networks:
  proxy:
    external: true
```


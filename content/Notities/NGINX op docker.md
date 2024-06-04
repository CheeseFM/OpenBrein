#kladversie  

🗂️ Onderwerp: [[🐋 Docker]]
🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 21-05-2024

>[!Warning] Knowhow
>Je hebt een [[Docker basis installatie]] nodig.

---
# Aanmaken bestandstructuur
We gaan onze bestandsstructuur aanmaken! 

``` Bash
mkdir -p ~/data/nginx/html && mkdir -p ~/data/config/nginx/
```

```
.
└─data
       ├─ config
       │      └─ nginx
       │               └─ html
       └─ nginx
```

# Configuratiebestand
Om een docker service te configureren doen we dit a.d.h.v. een `docker-compose.yml` bestand.

``` Bash
nano ~/data/config/nginx/docker-compose.yml
```

``` YML
version: "3.3" 

services: 
  nginx-webserver: 
    image: nginx
    volumes:
      - /home/GEBRUIKERSNAAM/data/nginx/html:/usr/share/nginx/html
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

* Verander `GEBRUIKERSNAAM` naar jouw Linux gebruikersnaam.
# Docker service starten

``` Bash
docker stack deploy nginx -c ~/data/config/nginx/docker-compose.yml
```
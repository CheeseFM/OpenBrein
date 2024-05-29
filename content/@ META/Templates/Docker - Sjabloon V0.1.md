#documentatie  #bezig  #wordt-constant-bijgewerkt  #afgerond

🗂️ Onderwerp: 
🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)

>[!Warning] Knowhow
>Je hebt een [[Docker basis installatie]] nodig.

---
# Aanmaken bestandstructuur

``` Bash
mkdir -p ~/data/XXX/YYY && mkdir -p ~/data/config/XXX/
```

# Configuratiebestand

``` Bash
nano ~/data/config/XXX/docker-compose.yml
```

``` YML

networks:
  proxy:
    external: true
```

# Docker service starten

``` Bash
docker stack deploy XXX -c ~/data/config/XXX/docker-compose.yml
```
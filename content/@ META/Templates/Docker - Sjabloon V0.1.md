#documentatie  #bezig  #wordt-constant-bijgewerkt  #afgerond

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)

>[!Warning] Knowhow
>Je hebt een [[Docker basis installatie]] nodig.

---
# Aanma[](Docker%20basis%20installatie.md)tie.md)tie.md)tie.md)sh
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
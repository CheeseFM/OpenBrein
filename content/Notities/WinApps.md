#kladversie 

📅 Aangemaakt: 27-09-2024

---
1. [[Docker basis installatie|Installeer docker]] en nodige afhankelijkheden `sudo dnf install -y dialog freerdp iproute libnotify nmap-ncat`(en herstart)
2. Maak map aan in thuisomgeving (bv. `mkdir ~/.config/winapps)
3. Voeg een `docker-compose.yml` toe aan deze map a.d.h.v. het [gegeven template](https://github.com/winapps-org/winapps/blob/main/compose.yaml) (`nano ~/.config/winapps/compose.yaml)` en verander nodig de versie naar `version: "win10"`
4. Lanceer de applicatie via `docker compose --file ./docker-compose.yml up`
	-> Zorgt dat er geen andere RDP services op poort 3389 draaien of je krijgt een error
5. Wacht tot het gedownload is (zie http://127.0.0.1:8006/)
6. Zet de installatie uit door `docker compose --file ~/.config/winapps/compose.yaml up` en daarna  `- ./oem:/oem` naar `#- ./oem:/oem` te veranderen (`nano ~/.config/winapps/compose.yaml`) en indien nodig `restart-policy: no`
8. Configuratiebestand aanmaken `nano ~/.config/winapps/winapps.conf` (zie [hier](https://github.com/winapps-org/winapps?tab=readme-ov-file#step-3-create-a-winapps-configuration-file)) en gebruikersnaam aan te passen naar `Docker`, `RDP_IP` naar `127.0.0.1`
9. Log uit via http://127.0.0.1:8006
10. Draai de WinApps installer `git clone https://github.com/winapps-org/winapps.git && cd winapps && ./setup.sh`
11. Maak een .desktop bestand in `nano ~/.local/share/applications/windows-docker.desktop`

--- 
# Bronnen:
- https://github.com/winapps-org/winapps?tab=readme-ov-file
- https://github.com/winapps-org/winapps/blob/main/docs/docker.md
- https://github.com/winapps-org/winapps/blob/main/compose.yaml
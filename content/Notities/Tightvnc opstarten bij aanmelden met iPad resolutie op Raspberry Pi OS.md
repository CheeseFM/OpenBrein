#kladversie  #uitgewerkt  #volwassen

🗂️ Onderwerp: [[Raspberry Pi  - iPad of Laptop]]
🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 22-05-2024

---

- https://forums.raspberrypi.com/viewtopic.php?t=62581
- https://incoherentmusings.wordpress.com/2016/04/25/setting-up-vnc-server-on-raspberry-pi-to-autostart-on-reboot/ > Installatie van TightVNC
- https://askubuntu.com/questions/539823/cannot-change-vncserver-default-geometry > Aanpassen van resolutie

# Installatie van een VNC server

``` Bash
sudo apt install realvnc-vnc-server 
```
 
## Testen van de VNC server

```
vncserver :1
```

# Aanzetten bij opstarten
## Aanmaken service

``` Bash
sudo nano /etc/rc.local
```


``` perl
#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# Start a VNC server with custom resolution
sudo -u cheese /usr/bin/vncserver-virtual :1 -geometry 1194x834  -depth 16

exit 0
```

## Herstarten Pi
``` Bash
sudo systemctl reboot
```
  




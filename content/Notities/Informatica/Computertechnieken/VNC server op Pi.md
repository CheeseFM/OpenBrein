#uitgewerkt 

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 22-05-2024

---
# Inleiding
## Bronnen
- https://forums.raspberrypi.com/viewtopic.php?t=62581
- https://incoherentmusings.wordpress.com/2016/04/25/setting-up-vnc-server-on-raspberry-pi-to-autostart-on-reboot/ > Installatie van TightVNC
* https://incoherentmusings.wordpress.com/2016/04/25/setting-up-vnc-server-on-raspberry-pi-to-autostart-on-reboot/

# Installatie van een VNC server

``` Bash
sudo apt install realvnc-vnc-server 
```
 
## Testen van de VNC server
Test de VNC server door hem op te starten en maak een passwoord aan.

```
vncserver :1
```

```
Using password file /home/pi/.vnc/passwd
Password: 
Verify:   
Would you like to enter a view-only password (y/n)? n
```

# Aanzetten bij opstarten
## Aanmaken service

``` Bash
sudo nano /etc/init.d/vncserver
```


``` Bash
#!/bin/sh
### BEGIN INIT INFO
# Provides: vncserver
# Required-Start: $syslog
# Required-Stop: $syslog
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: vnc server
# Description:
#
### END INIT INFO
# /etc/init.d/vncserver
# Set the VNCUSER variable to the name of the user to start tightvncserver under
VNCUSER='pi'
case "$1" in
start)
#Change the display number below. The connection port will be 5900 + display #
su $VNCUSER -c '/usr/bin/vncserver-virtual :1'
echo "Starting RealVNC server for $VNCUSER"
;;
stop)
pkill Xtightvnc
echo "RealVNC server stopped"
;;
*)
echo "Usage: /etc/init.d/vncserver {start|stop}"
exit 1
;;
esac
exit 0
```

## Permissies

```
sudo chmod 755 /etc/init.d/vncserver
sudo update-rc.d vncserver defaults
```

## Testen
```Bash
sudo /etc/init.d/vncserver start
```

```Output
cheese@pi:~ $ sudo /etc/init.d/vncserver start
RealVNC(R) Server 7.11.0 (r18) ARMv8-A (Apr 22 2024 15:17:05)
Copyright (C) RealVNC Ltd.
RealVNC and VNC are trademarks of RealVNC Ltd and are protected by trademark
registrations and/or pending trademark applications in the European Union,
United States of America and other jurisdictions.
Protected by UK patent 2481870; US patent 8760366; EU patent 2652951.
See https://www.realvnc.com for information on VNC.
For third party acknowledgements see:
https://www.realvnc.com/docs/7/foss.html
OS: Debian GNU/Linux 12, Linux 6.6.28+rpt, aarch64

On some distributions (in particular Red Hat), you may get a better experience
by running vncserver-virtual in conjunction with the system Xorg server, rather
than the old version built-in to Xvnc. More desktop environments and
applications will likely be compatible. For more information on this alternative
implementation, please see: https://www.realvnc.com/doclink/kb-546

Running applications in /home/cheese/.vnc/xstartup

VNC Server catchphrase: "Middle regard depend. Target Diego orient."
             signature: 9b-3e-ac-ab-7d-01-cf-51

Log file is /home/cheese/.vnc/pi:1.log
```

## Herstarten Pi
``` Bash
sudo reboot
```
  




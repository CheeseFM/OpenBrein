#onderwerpen 

🗂️ Onderwerp: [[🖥️ Computertechnieken]]
🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 22-05-2024

---
# Inleiding
## Bronnen
* https://www.hardill.me.uk/wordpress/2023/12/23/pi5-usb-c-gadget/#comment-32830
* https://www.youtube.com/watch?v=Zr0WuRBpJyg
* https://help.realvnc.com/hc/en-us/articles/360002249917-RealVNC-Connect-and-Raspberry-Pi#changing-the-raspberry-pi%E2%80%99s-screen-resolution-0-11
* https://www.google.com/search?q=ipad+pro+11+inch+resolution&oq=iPad+pro+11+inch+resolu&sourceid=chrome&ie=UTF-8
* https://unix.stackexchange.com/questions/214502/changing-screen-scale-in-lxde
* https://blues.com/blog/tips-tricks-optimizing-raspberry-pi-power/

## Doel project
Oké wat wil ik bereiken en wat houdt dit project nu weer in? - Ik wil een Raspberry Pi (4) met een enkele kabel verbinden om met VNC & SSH te interfacen zonder scherm of toetsenbord verbonden aan de Pi. Dit betekent:

[[Drawing 2024-05-26 15.53.07.excalidraw]]
![[Pasted image 20240526224729.png]]

* Bij een PC of tablet handelt de Pi als een netwerkkaart verbonden via een USB kabel waarover stroom en netwerkdata wordt vervoerd.
* Bij een telefoon handelt de Pi als een hotspot client waarover netwerkdata wordt vervoerd

## Benodigdheden
* Een Raspberry Pi 
* Een USB-C kabel (en voeding)
* Een Laptop, PC, Smartphone en/of tablet

# [[Raspberry Pi OS installeren]]
## Pi imager downloaden
Ga naar pi https://www.raspberrypi.com/software/ en download de Raspberry Pi imager. Open hem via het startmenu.

![[Pasted image 20240526160405.png]]

![[Pasted image 20240526160601.png]]

## Kies je model van Pi
Op het moment van schrijven hebben we een aantal Pi's, waaronder mijn Raspberry Pi 4. We kiezen voor ons hardware model.

![[Pasted image 20240526160632.png]]

## Kies je image
In ons geval nemen we de desktop versie van Raspberry Pi OS. Dit kan ofwel 32- of 64-bit zijn. In ons geval gebruiken we de 64-bit versie aangezien we een 8GB Model 4B hebben.

![[Pasted image 20240526160822.png]]

## Kies je SD kaart
Plug je SD kaart in de PC en kies voor de juiste.

![[Pasted image 20240526160936.png]]

## Pas de instellingen aan!
Om zonder monitor straks te verbinden met je Pi moet je al een gebruikersnaam, wachtwoord en wifi verbinding instellen. Dit menu komt er automatisch op als je op de `Volgende` knop klikt.

![[Pasted image 20240526161253.png]]

## Vul je gegevens in bij "Algemeen"
Ga door Algemeen en vul de juiste gegevens in. Vergeet niet `Wifi` in te stellen.

![[Pasted image 20240526161544.png]]
## Zet SSH aan
Dit is ook een cruciale stap, ga naar `SERVICES` en zet SSH aan.

![[Pasted image 20240526161800.png]]

## Voer je instellingen door
Klik op `Opslaan` en daarna `Ja`. Als je zeker bent klik de waarschuwing weg door weer op `Ja` te klikken. Je besturingssysteem wordt naar de kaart geschreven.

![[Pasted image 20240526162138.png]]
![[Pasted image 20240526162152.png]]
![[Pasted image 20240526162254.png]]

# Verbinden met Pi
## IP zoeken
Vind je apparaat via je router of installeer [Advanced IP Scanner](https://www.advanced-ip-scanner.com/) en vind je Pi op het netwerk. 

![[Pasted image 20240526162752.png]]
## Verbinden > [[Een SSH verbinding opstellen]]
Verbind met je Pi door via Powershell SSH op te starten, in ons geval:

```PowerShell
PS C:\Users\jelle> ssh cheese@192.168.0.197
Linux pi 6.6.28+rpt-rpi-v8 #1 SMP PREEMPT Debian 1:6.6.28-1+rpt1 (2024-04-22) aarch64

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Last login: Sun May 26 15:57:45 2024
cheese@pi:~ $
```

# One-cable* oplossing opzetten
## One-cable voor PC, tablet en/of Android smartphone
Nu je ingelogd bent op je Pi gaan we enkele configuratiebestanden aanpassen en aanmaken om met één kabel de Pi te voorzien van energie en een netwerkconnectie. Dit doen we met het USB-gadget script van https://www.hardill.me.uk/wordpress/2023/12/23/pi5-usb-c-gadget/#comment-32830.

![[IMG_5874.jpg]]

### Updaten Pi
Update je Pi door deze commando's te runnen.

```
sudo apt update -y && sudo apt upgrade -y
```

### Installatie afhankelijkheden
Installeer dnsmasq via apt, we hebben dit later nodig.

```Bash
sudo apt-get install dnsmasq
```

### Zet OTG aan op de USB-C poort
Om straks de Pi een netwerkkaart te laten emitteren moeten we OTG aanzetten zodat de poort kan doen wat hij wil - We doen dit door `dtoverlay=dwc2` toe te voegen op het einde van je Pi's configuratiebestand.

```Bash
sudo nano /boot/firmware/config.txt
```

In dit voorbeeld zien we hoe dit eruit zou kunnen zien. Dit hangt af van Pi tot software revisie af.

``` Voorbeeld
...

[cm4]
# Enable host mode on the 2711 built-in XHCI USB controller.
# This line should be removed if the legacy DWC2 controller is required
# (e.g. for USB device mode) or if USB support is not required.
otg_mode=1

[all]
dtoverlay=dwc2
```

### Module toevoegen tijdens opstarten
Nu moeten we de module toevoegen aan onze systemd opstarttaken door  `modules-load=dwc2` toe te voegen aan het einde van `/boot/firmware/cmdline.txt`.

``` Bash
sudo nano /boot/firmware/cmdline.txt
```

Hier zien we nog eens een voorbeeld hoe dit er uit kan zien bij jouw Pi - Dit staat normaal allemaal op één lijn.

``` Voorbeeld
console=serial0,115200 console=tty1 root=PARTUUID=1053e720-02 rootfstype=ext4 fsck.repair=yes rootwait quiet splash plymouth.ignore-serial-consoles cfg80211.ieee80211_regdom=GB modules-load=dwc2
```


> [!warning]
> Oudere versies van Raspberry Pi OS gebruiken /boot/config.txt en /boot/cmdline.txt, nu gebruikt men de versie in de firmware map. 
> 
> Pas bij huidige installaties nooit de root versie van de bestanden aan (/boot/config.txt of /boot/cmdline.txt), enkel de /boot/firmware/... versie is juist!

### Afhankelijkheid toevoegen bij het opstarten
Om alles correct te doen verlopen hebben we de afhankelijkheid `libcomposite` tijdens het opstarten. Die is normaal niet direct beschikbaar en we moeten die dus gaan toevoegen aan het `/etc/modules` bestand.

``` Bash
sudo nano /etc/modules
```

``` Voorbeeld
# /etc/modules: kernel modules to load at boot time.
#
# This file contains the names of kernel modules that should be loaded
# at boot time, one per line. Lines beginning with "#" are ignored.
# Parameters can be specified after the module name.

libcomposite
i2c-dev
```

### Aanmaken script
Maak een script aan in de `sbin` die bij het opstarten wordt geladen om de USB gadget modus aan te zetten.

```
sudo nano /usr/local/sbin/usb-gadget.sh
```

Voeg het onderstaande in zonder aanpassingen te maken.

``` SH
#!/bin/bash
 
cd /sys/kernel/config/usb_gadget/
mkdir -p display-pi
cd display-pi
echo 0x1d6b > idVendor # Linux Foundation
echo 0x0104 > idProduct # Multifunction Composite Gadget
echo 0x0103 > bcdDevice # v1.0.3
echo 0x0320 > bcdUSB # USB2
echo 2 > bDeviceClass
mkdir -p strings/0x409
echo "fedcba9876543213" > strings/0x409/serialnumber
echo "Ben Hardill" > strings/0x409/manufacturer
echo "Display-Pi USB Device" > strings/0x409/product
mkdir -p configs/c.1/strings/0x409
echo "CDC" > configs/c.1/strings/0x409/configuration
echo 250 > configs/c.1/MaxPower
echo 0x80 > configs/c.1/bmAttributes
 
#ECM
mkdir -p functions/ecm.usb0
HOST="00:dc:c8:f7:75:15" # "HostPC"
SELF="00:dd:dc:eb:6d:a1" # "BadUSB"
echo $HOST > functions/ecm.usb0/host_addr
echo $SELF > functions/ecm.usb0/dev_addr
ln -s functions/ecm.usb0 configs/c.1/
 
#RNDIS
mkdir -p configs/c.2
echo 0x80 > configs/c.2/bmAttributes
echo 0x250 > configs/c.2/MaxPower
mkdir -p configs/c.2/strings/0x409
echo "RNDIS" > configs/c.2/strings/0x409/configuration
 
echo "1" > os_desc/use
echo "0xcd" > os_desc/b_vendor_code
echo "MSFT100" > os_desc/qw_sign
 
mkdir -p functions/rndis.usb0
HOST_R="00:dc:c8:f7:75:16"
SELF_R="00:dd:dc:eb:6d:a2"
echo $HOST_R > functions/rndis.usb0/dev_addr
echo $SELF_R > functions/rndis.usb0/host_addr
echo "RNDIS" >   functions/rndis.usb0/os_desc/interface.rndis/compatible_id
echo "5162001" > functions/rndis.usb0/os_desc/interface.rndis/sub_compatible_id
 
ln -s functions/rndis.usb0 configs/c.2
ln -s configs/c.2 os_desc
 
udevadm settle -t 5 || :
ls /sys/class/udc > UDC
 
sleep 5
 
nmcli connection up bridge-br0
nmcli connection up bridge-slave-usb0
nmcli connection up bridge-slave-usb1
sleep 5
service dnsmasq restart
```

Pas de permissies aan van het script zodat systemd hem later kan gebruiken bij het opstarten.
```Bash
sudo chmod +rwx /usr/local/sbin/usb-gadget.sh
```

### Aanmaken service
Maak een nieuwe opstarttaak aan via systemd door een bestand aan te maken in `/lib/systemd/system/usbgadget/service`

```
sudo nano /lib/systemd/system/usbgadget.service
```

Voeg de onderstaande configuratie code in.

``` 
[Unit]
Description=My USB gadget
After=network-online.target
Wants=network-online.target
#After=systemd-modules-load.service
  
[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/usr/local/sbin/usb-gadget.sh
  
[Install]
WantedBy=sysinit.target
```

Zet nu de service aan.

```
sudo systemctl enable usbgadget.service
```

## One-cable* oplossing voor iPhone met hotspot
Je kan dit in combinatie met de vorige oplossing maken of individueel. Je moet gewoon maken dat je Pi met stroom gevoed wordt.

![[IMG_5875.jpg]]

### Update je Pi
```
sudo apt update -y && sudo apt upgrade -y
```

### Installeer afhankelijkheden
Installeer `usbmuxd`, een pakket om via USB de netwerkstack beschikbaar te maken.

```
sudo apt install usbmuxd
```

### Configureer je gsm
Plug je GSM in de USB A kabel van de Pi na het installeren van `usbmuxd` en geef de PC toegang met je toegangscode.

## Verbinden met opstelling
### Herstart de Pi
Herstart om de bewerkingen door te voeren.

```
sudo reboot
```

### Vind het IP
Open je vorige SSH verbinding via het wifi netwerk [[#Verbinden met Pi]] en voer het `ip a` commando uit.

``` Bash
ip a
```

![[Pasted image 20240526172124.png]]

## Verbind
Gebruik het IP die je nodig hebt om te verbinden met je opstelling:
* In het geval van [[#One-cable voor PC, tablet en/of Android smartphone]]: br0 (10.55.0.1)
* In het geval van [[#One-cable* oplossing voor iPhone met hotspot]]: eth1 (172.20.10.2)

Nu kan je via SSH verbinden via die kabel zonder internet!

## Windows > [[Statisch IP instellen op Windows]]
Windows snapt niet altijd dat wanneer je naar `10.55.0.1` een verbinding probeert op te stellen ze niet moet kijken naar de netwerkkaart met enkel `192.168.0.X` adressen. Om jouw verbinding betrouwbaar te maken moeten we dit toevoegen aan onze configuratie voor de netwerkkaart die de Raspberry Pi aanmaakt.

### Open configuratiescherm
Open je configuratiescherm via de Windows zoekbalk.

![[Pasted image 20240526174456.png]]

### Ga naar Netwerkcentrum

![[Pasted image 20240526174721.png]]

### Klik op je Pi netwerkkaart
Meestal kan je die herkennen door het `Geen internettoegang` label, anders trek je hem uit en steek je hem weer in om te zien welke verdwijnt - Klik op de blauwe tag (in ons geval `Ethernet 3`).

![[Pasted image 20240526174914.png]]

### Klik op eigenschappen
Klik op eigenschappen, je krijgt dit te zien:

![[Pasted image 20240526174947.png]]

### Open de IPv4 eigenschappen
Klik op `Internet Protocol versie 4` en daarna `Eigenschappen`.

![[Pasted image 20240526175117.png]]

### Voer de juiste configuratie in
Klik op `Het volgende IP-adres gebruiken:` en voer daarna de volgende nummers in:
```
IP-adres: 10.55.0.10
Subnetmasker: 255.255.255.0
```

Daarnaast vul je **niks** in.

![[Pasted image 20240526175219.png]]

# Grafische toegang aanzetten < [[VNC server installeren op Raspberry Pi (OS)]]
Ok we hebben al dat werk gedaan om een desktopversie van Raspberry Pi OS te installeren maar gebruiken de desktop niet! - We gaan een gelijkaardig protocol als SSH gebruiken die gefocust is op het tonen van grafische omgevingen, VNC!

## VNC server configureren
### Installatie RealVNC server
Installeer RealVNC's server component. Dit is normaal al geïnstalleerd op je Pi maar voor het zekerste:

``` Bash
sudo apt install realvnc-vnc-server 
```
 
### Testen van de server
Test de VNC server door hem op te starten - Hij zal je om een passwoord vragen. Je voert hier best gewoon je gebruikerspasswoord in, dat is gemakkelijk te herinneren.

``` Bash
vncserver-virtual :1
```

``` Voorbeeld
Using password file /home/pi/.vnc/passwd
Password: 
Verify:   
Would you like to enter a view-only password (y/n)? n

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
New desktop is pi:1 (172.20.10.2:2)
```

## Opstarttaak aanmaken
Om niet telkens het commando via SSH eerst te moeten invoeren vooraleer we toegang krijgen maken we een opstarttaak aan.

``` Bash
sudo nano /etc/init.d/vncserver
```

We zetten in dit bestand:

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
su $VNCUSER -c '/usr/bin/vncserver-virtual :1 -geometry 1920x1080'
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

* Je kan het lijntje `su $VNCUSER -c '/usr/bin/vncserver-virtual :1 -geometry 1920x1080'` aanpassen naar welke resolutie je ook maar wilt. Voor een iPad 11 inch is dit bv. `2388x1668`.

## Permissie instellen

```
sudo chmod 755 /etc/init.d/vncserver
sudo update-rc.d vncserver defaults
```

## Uittesten

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

### Herstarten Pi

``` Bash
sudo reboot
```

# Verbinden > [[Een VNC verbinding opstellen]]
Verbinden doe je op dezelfde manier als bij SSH maar dan met een VNC client zoals [RealVNC Client](https://www.realvnc.com/en/connect/download/viewer/)

## Met computer
### Open de viewer
Op de VNC viewer gaan we een nieuwe verbinding aanmaken. 

![[Pasted image 20240526175710.png]]

### Connectie configureren
Vul het IP die we daarnet hebben geconfigureerd tijdens [[#One-cable voor PC, tablet en/of Android smartphone]] (10.55.0.1) in gevolgd door het nummer van de virtuele desktop (:1). Geef hem desnoods een naam.

![[Pasted image 20240526180010.png]]

### Verbinden
Klik op `Ok` en klik daarna met rechtermuisknop op je gloednieuwe verbinding en verbind.

![[Pasted image 20240526180219.png]]
### Voer je inloggegeven in
Voer daarna je VNC naam (naam van de gebruiker) en je passwoord in (het passwoord dat je ingesteld hebt bij [[#Testen van de server]])

![[Pasted image 20240526180339.png]]

### Verbinding is tot stand gebracht!
Jouw desktop zal er ietsje anders uitzien maar hier is je Raspberry Pi desktop!

![[Pasted image 20240526180450.png]]

## Op iPhone > [[RealVNC verbinding aanmaken op iOS]]
### Installeer RealVNC Viewer

![[IMG_5877.jpg]]

### Voeg een verbinding toe

![[IMG_5878.jpg]]

### Voer je IP in
In ons geval `172.20.10.2` gevolgd door het nummer van de desktop geconfigureerd in [[#Opstarttaak aanmaken]]. We vonden het IP in [[#IP zoeken]] - Klik daarna op save.

![[IMG_5880.jpg]]

### Klik op `Connect`
![[IMG_5881.jpg]]

### Voer je inloggegevens in
Voer daarna je VNC naam (naam van de gebruiker) en je passwoord in (het passwoord dat je ingesteld hebt bij [[#Testen van de server]])

![[IMG_5882.jpg]]

### Je bent binnen!
![[IMG_5883.png]]

# Optimalisatie
## Schermgrootte
### Resolutie
Zoals eerder vermeld bij [[#Opstarttaak aanmaken]] kan je je resolutie aanpassen door het `-geometry` label aan te vullen met welke resolutie je maar wilt - [[Handige resoluties]]

### Schaling > [[LXDE scherm schaling]]
Op een computer heb je ook de schaal van een scherm, zo kun je een scherm met een gigantische resolutie hebben die ook nog leesbare tekst heeft. 

> [!info] Voorbeeld in windows
  ![[Pasted image 20240526183447.png]]

De LXDE omgeving waarop de Raspberry Pi is gebouwd doet dit niet standaard. Je moet een bestandje aanmaken met een configuratie.

```Bash
sudo nano ~/.Xresources
```

In dit bestand zet je het volgende:

```Bash
Xft.dpi: 150
```

* `150` is het percentage waarmee er geschaald wordt, je kan dit verhogen of verlagen naar gelang je het ervaart.

## Stroom
Een Raspberry Pi vraagt met een lichte desktopomgeving zoals LXDE niet veel stroom, maar het kan altijd minder! - Als je dit wilt toepassen met een iPad of Laptop dan wil je dat je batterij nog even goed meegaat. We gaan enkele veranderingen in de configuratie van de Pi maken om dit te verlagen.

## Radio's uitzetten
Als je ze niet nodig hebt kan je de bluetooth en wifi antennes uitzetten via de grafische omgeving of door ze te blokkeren via `rfkill`. Maak dat je verbinding via kabel dan wel effectief werkt als je niet dichtbij een scherm, kabel en toetsenbord bent.

```Bash
sudo rfkill block wifi && sudo rfkill block bluetooth
```

En om ze weer aan te zetten:

```Bash
sudo rfkill unblock wifi && sudo rfkill unblock bluetooth
```


![[Pasted image 20240526184144.png]]

## CPU limiteren
We kunnen de boost stand van de CPU uitzetten en ze limiteren tot een bepaalde frequentie - Open de `config.txt` alweer.

```Bash
sudo nano /boot/firmware/config.txt
```

Voeg de volgende parameters toe indien ze niet bestaan, anders verander ze naar de volgende waardes:

```Bash
arm_freq=900
arm_freq_max=900
arm_boost=0
```

Hierna moet je weer opnieuw opstarten - Om de limitaties weg te halen verander je `arm_boost` weer naar `1` en verwijder je de frequentie parameters (of zet je ze hoger) 
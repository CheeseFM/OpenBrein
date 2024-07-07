#kladversie

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 05-07-2024

---
Booten via USB

Toetsenbord laden `loadkeys wangbe`

Verbinden met netwerk via `mmcli` na `rfkill unblock wifi` of gewoon een kabel in te steken

Checken of verbinding correct werkt met `ping google.com`

Tijdzone zetten `tzselect` en daarna 8, gevolgd door 5 en 1.

`archinstall`

`pacman -S network-manager-applet && sudo systemctl enable NetworkManager`

https://bbs.archlinux.org/viewtopic.php?id=250490
`sudo pacman -Syu`
`sudo pacman -S haveged`

-Dit fixt lange GDM laadtijden
#kladversie 

📅 Aangemaakt: 04-10-2024

---
Installeer RPM Fusion 
```
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

Wissel huidige ffmpeg met non-free versie
```
sudo dnf swap ffmpeg-free ffmpeg --allowerasing
```

Vewijder cache
```
rm -rf ~/.cache/gstreamer-1.0
```
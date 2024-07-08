#kladversie

🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 23-06-2024

---
Fedora Linux
https://maniacx.github.io/Battery-Health-Charging/


# Light shell
https://gitlab.com/dikasetyaprayogi/light-shell/-/tree/main/release?ref_type=heads

# Switching themes
https://www.reddit.com/r/gnome/comments/1bmf9sf/night_theme_switcher_extension_removes_custom_gtk/

## Light theme

``` Bash
#!/bin/bash

dconf write /org/gnome/shell/extensions/user-theme/name "'light-shell'"
gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
```
## Dark theme
``` Bash
#!/bin/bash

dconf write /org/gnome/shell/extensions/user-theme/name "'Default'"
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
```

# Just perfection
* Werkoverzicht uit

# Desktop icons
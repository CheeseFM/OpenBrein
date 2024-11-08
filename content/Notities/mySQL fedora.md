#kladversie 

📅 Aangemaakt: 08-11-2024

---
Installeer `mySQL Community Server` (-> [RPM Bundle](https://dev.mysql.com/downloads)), `yum` repository en `Workbench` via `sudo dnf localinstall`, gevolgd door `sudo yum install mysql-community-server`  en reboot 

`sudo systemctl enable mysqld && systemctl start mysqld` en vind het paswoord door `sudo grep 'temporary password' /var/log/mysqld.log` uit te voeren en daarna kan je `sudo mysql_secure_installation`

---
# Bronnen
- https://kinsta.com/knowledgebase/mysql-community-server/![[mysql84-community-release-fc40-1.noarch.rpm]]
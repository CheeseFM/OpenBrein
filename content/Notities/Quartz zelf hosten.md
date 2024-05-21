#documentatie  #bezig 

🗂️ Onderwerp: [[🧠 Ontwikkelen van OpenBrein]]
🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)

---
## Mijn probleem
Ik wil wel alles synchroniseren met Github, voor mij totaal geen probleem. Maar het gebruiken van foto's en andere documenten in mijn notities en documentatie is cruciaal. Alhoewel Github dit graag wel allemaal opslaat kan je tot 1 GB per repo vooraleer je waarschuwingen krijgt en [50 MB per bestand ](https://backrightup.com/blog/github-storage-limits/#:~:text=GitHub%20limits%20the%20maximum%20file,minimize%20performance%20impact%20on%20GitHub.).

## De oplossing
Ik wil mijn eigen server thuis gebruiken om de Quartz docker image te hosten.
-> Maar mijn iCloud data moet ook gesynchroniseerd worden met die server.

### Huidige opstelling
![[Pasted image 20240520230809.png]]

### Droom opstelling
![[Pasted image 20240520224229.png]]

### Benodigdheden
* https://hub.docker.com/r/mandarons/icloud-drive
* https://quartz.jzhao.xyz/features/Docker-Support
* https://hub.docker.com/r/linuxserver/syncthing

![[Pasted image 20240520223223.png]]

## Stappen
### Open terminal op je server
Open een terminal en maak verbinding met je server via SSH.
![[Pasted image 20240521165443.png]]

### Maak de juiste folder structuur aan


```
mkdir -p ~/data && cd ~/data
```

### Download quartz

```
git clone https://github.com/jackyzha0/quartz.git
```

### CD

```
cd ~/data/quartz
```

---


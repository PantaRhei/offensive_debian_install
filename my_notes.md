# Install i3
Pour installer le gestionnaire de fenêtres i3 sur une installation de Debian 12 sans composant graphique, vous pouvez suivre ces étapes :
Mettre à jour les paquets :
```bash
sudo apt update
sudo apt upgrade
```


Installer les paquets nécessaires :
Vous aurez besoin d'installer un serveur X (Xorg), i3, et quelques autres paquets utiles.
```bash
sudo apt install xorg i3 i3status dmenu
```

Configurer i3 :
i3 utilise un fichier de configuration situé dans ~/.config/i3/config. Vous pouvez créer ce fichier en copiant l'exemple de configuration fourni par i3.
```bash
mkdir -p ~/.config/i3
cp /etc/i3/config ~/.config/i3/config
```

Configurer le fichier .xinitrc :
Ce fichier est utilisé pour démarrer i3 lorsque vous lancez Xorg.
```bash
echo "exec i3" > ~/.xinitrc
```
Démarrer i3 :
Vous pouvez maintenant démarrer i3 en utilisant la commande startx.
```bash
startx
```

Configurer l'environnement graphique (optionnel) :
Si vous souhaitez que i3 démarre automatiquement au démarrage de votre système, vous pouvez configurer un gestionnaire de connexion comme lightdm ou gdm3.

Par exemple, pour installer et configurer lightdm :
```bash
sudo apt install lightdm
```

Pendant l'installation, vous serez invité à choisir un gestionnaire de connexion par défaut. Sélectionnez lightdm.

Ensuite, vous pouvez configurer lightdm pour démarrer i3 en modifiant le fichier de configuration de lightdm :
```bash
sudo nano /etc/lightdm/lightdm.conf
```

Ajoutez ou modifiez la ligne suivante pour spécifier i3 comme session par défaut :

user-session=i3

Redémarrer votre système :
```bash
sudo reboot
```

Après avoir suivi ces étapes, i3 devrait démarrer automatiquement lorsque vous vous connectez à votre système. Vous pouvez personnaliser davantage votre configuration i3 en modifiant le fichier ~/.config/i3/config selon vos besoins.

# NetworkManager

Pour installer et configurer NetworkManager sur Debian 12, suivez ces étapes :

Mettre à jour les paquets :
```bash
sudo apt update
sudo apt upgrade
```
Installer NetworkManager :
```bash
sudo apt install network-manager
```

Activer et démarrer le service NetworkManager :
```bash
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager
```

Configurer NetworkManager pour gérer les interfaces réseau :
Vous devez désactiver la gestion des interfaces réseau par /etc/network/interfaces et laisser NetworkManager prendre le contrôle.

Éditez le fichier /etc/network/interfaces :
```bash
sudo nano /etc/network/interfaces
```

Vérifier l'état de NetworkManager :
Vous pouvez vérifier que NetworkManager est en cours d'exécution et gère vos interfaces réseau en utilisant la commande suivante :
```bash
sudo systemctl status NetworkManager
```

Installer un outil graphique pour NetworkManager (optionnel) :
Si vous utilisez un environnement de bureau, vous pouvez également installer un outil graphique pour gérer les connexions réseau, comme network-manager-gnome :
```bash
    sudo apt install network-manager-gnome
```
    Cela ajoutera une icône dans la barre des tâches pour gérer les connexions réseau de manière graphique.

En suivant ces étapes, vous aurez installé et configuré NetworkManager sur votre système Debian 12. Vous pouvez maintenant gérer vos connexions réseau de manière plus flexible et intuitive.

# Screen brightness
L'erreur "No outputs have backlight property" signifie que `xbacklight` ne peut pas trouver de périphérique de sortie avec une propriété de rétroéclairage. Cela peut se produire pour plusieurs raisons, notamment si votre matériel ou votre pilote graphique ne supporte pas cette propriété.

Voici quelques alternatives et solutions pour contourner ce problème :

### Utiliser `brightnessctl`

`brightnessctl` est un outil plus moderne et flexible pour gérer la luminosité. Il peut gérer les périphériques de rétroéclairage de manière plus robuste.

1. **Installer `brightnessctl` :**
   ```sh
   sudo apt install brightnessctl
   ```

2. **Configurer i3 pour utiliser `brightnessctl` :**
   Ajoutez les lignes suivantes à votre fichier de configuration d'i3 (`~/.config/i3/config`) :
   ```ini
   # Augmenter la luminosité
   bindsym XF86MonBrightnessUp exec brightnessctl set +10%

   # Diminuer la luminosité
   bindsym XF86MonBrightnessDown exec brightnessctl set 10%-
   ```

3. **Recharger la configuration d'i3 :**
   Utilisez `Mod + Shift + R` pour recharger la configuration d'i3.



# Utils tools
```bash
sudo apt install git curl wget neofetch htop unzip zip
```

# Terminal
```bash
sudo apt install alacritty kitty
```
Do a choise

# Install web browers

Firefox:
```bash
sudo apt install firefox-esr
```

# prog
```bash
sudo apt install build-essential gdb gcc clang make valgrind python3 python3-full vim default-jdk maven
```
# Privacy
```bash
sudo apt install openvpn wireguard openresolv
```
`openresolv` is needed for Wireguard

# hacking tools
## Radio
```bash
sudo apt install wireshark gnuradio rtl-433 hackrf libhackrf-dev gqrx-sdr
sudo apt install gr-gsm
```

## Network
```bash
sudo apt install nmap wireshark aircrack-ng net-tools
```

## Rerverse
```bash
sudo apt install radare2
```

## web
- burpsuite: https://portswigger.net/burp/communitydownload
```bash
sudo apt install sqlmap
```

## Osint
```bash
sudo apt install sherlock
```

## Framework mataploit
```bash
sudo apt install autoconf bison build-essential postgresql libaprutil1 libgmp3-dev libpcap-dev openssl libpq-dev libreadline6-dev libsqlite3-dev libssl-dev locate libsvn1 libtool libxml2 libxml2-dev libxslt-dev wget libyaml-dev ncurses-dev  postgresql-contrib xsel zlib1g zlib1g-dev curl
```

Install:
```bash
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall
```

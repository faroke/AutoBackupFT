#!/bin/sh
# GNU GENERAL PUBLIC LICENSE
#Remastersys auto-install
cd
echo "Selectionne ton répertoire d'utilisateur par defaut : " 
read -p "{Exemple: /home/monutilisateur ; /root} > " user
rm -rf /etc/skel
cp -R $user /etc/skel
sudo add-apt-repository ppa:mutse-young/remastersys -y
sudo apt-get update -y
sudo apt-get install remastersys remastersys-gtk -y
read -p "Voulez vous faire votre Backup.iso hors connectin? (Y/N) >" connectedornot

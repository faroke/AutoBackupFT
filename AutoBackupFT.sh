#!/bin/sh
# GNU GENERAL PUBLIC LICENSE
#Remastersys auto-install

##REGROUPER TT SA DANS UN MODULE DE SELECTION
maker () {
sudo remastersys clean
sudo remastersys backup
}
cd
echo "Selectionne ton répertoire d'utilisateur par defaut : " 
read -p "{Exemple: /home/monutilisateur ; /root} > " user
sudo rm -rf /etc/skel
sudo cp -R $user /etc/skel
sudo add-apt-repository ppa:mutse-young/remastersys -y
sudo apt-get update -y
sudo apt-get install remastersys remastersys-gtk -y
read -p "Voulez vous faire votre Backup.iso hors connectin? (Y/N) >" connectedornot
if [ connectedornot ="Y" ]; then
maker
exit
else
if [ connectedornot ="N" ]; then
##sudo apt-get install -y ubiquity-frontend-KDE
sudo apt-get install -y ubiquity-frontend-gtk
exit
else
##BOUCLE A FAIRE
exit
fi
fi

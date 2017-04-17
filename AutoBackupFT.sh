#!/bin/sh
# GNU GENERAL PUBLIC LICENSE
#Remastersys auto-install

##REGROUPER TT SA DANS UN MODULE DE SELECTION
maker () {
sudo respin clean
sudo respin backup
}
cd
echo "Selectionne ton répertoire d'utilisateur par defaut : " 
read -p "{Exemple: /home/monutilisateur ; /root} > " user
sudo rm -rf /etc/skel
sudo cp -R $user /etc/skel
sudo apt-get install isolinux
sudo add-apt-repository ppa:sergiomejia666/respin -y
sudo add-apt-repository ppa:sergiomejia666/xresprobe -y
sudo apt-get update 
sudo apt-get install xresprobe respin -y
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

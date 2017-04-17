#!/bin/sh
# GNU GENERAL PUBLIC LICENSE
#Respin Auto-Install

echo "Selectionne ton répertoire d'utilisateur par defaut : " 
read -p "{Exemple: /home/monutilisateur ; /root} > " user
sudo rm -rf /etc/skel
sudo cp -R $user /etc/skel
sudo apt-get install isolinux -y
sudo add-apt-repository ppa:sergiomejia666/respin -y
sudo add-apt-repository ppa:sergiomejia666/xresprobe -y
sudo apt-get update 
sudo apt-get install xresprobe respin -y
sudo respin clean
sudo respin backup

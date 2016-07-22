#!/bin/sh
# GNU GENERAL PUBLIC LICENSE
#Remastersys auto-install
cd
echo "Selectionne ton répertoire d'utilisateur par defaut : " 
read -p "{Exemple: /home/monutilisateur ; /root} > " user_def
rm -rf /etc/skel
cp -R $user /etc/skel

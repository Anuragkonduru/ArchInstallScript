#!/usr/bin/env bash

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

    'gcc'   
    'nodejs'
    'npm'
    'jre-openjdk'
    'lua'
)


for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done


echo
echo "Pacman is Done!"
echo

##Misc installs
sudo npm install -g @angular/cli

echo
echo "Misc Installs Done is Done!"
echo

#PKGSY=(   
#)

#for PKG in "${PKGY[@]}"; do
#    yay -S $PKG --noconfirm --needed
#done


#echo
#echo "YAY is Done!"
#echo

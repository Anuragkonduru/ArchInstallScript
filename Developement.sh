#!/usr/bin/env bash

echo
echo "INSTALLING SOFTWARE"
echo

PKGS1=(
    'clang'                 
    'cmake'                 
    'gcc'   
    'gcc'                   
    'git'                   
    'glibc'                 
    'jre-openjdk'
    'lua'
    'nodejs'
    'nodejs'                
    'npm'
    'npm'                   
    'python'                
    'yarn' 
    'hugo'
                 
)


for PKG in "${PKGS1[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done


echo
echo "Pacman is Done!"
echo



PKGS2=(
    'github-desktop'
    'visual-studio-code-bin'
)

for PKG in "${PKGS2[@]}"; do
    yay -S $PKG --noconfirm --needed
done

echo
echo "YAY Done!"
echo


##Misc installs
sudo npm install -g @angular/cli
sudo npm i -g @angular/cli@16.2.12
echo
echo "Misc Installs Done is Done!"
echo
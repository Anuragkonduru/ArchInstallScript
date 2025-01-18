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
    paru -S $PKG --noconfirm --needed
done

echo
echo "PARU Done!"
echo


##Misc installs
sudo npm install -g @angular/cli
sudo npm install -g web-ext
echo
echo "Misc Installs Done is Done!"
echo

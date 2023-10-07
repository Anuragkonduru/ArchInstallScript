#!/usr/bin/env bash

echo
echo "INSTALLING XFCE"
echo

PKGS=(
        'xfce4'                 # XFCE Desktop
        'xfce4-goodies'         # All the extras
)

KDEPKGS=(
        'plasma-desktop'                 # KDE Desktop
)


for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo

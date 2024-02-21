#!/usr/bin/env bash

echo
echo "Hyprland Iinstall"
echo

PKGS2=(
    'cairo'
    'cmake'
    'cpio'
    'gcc'
    'gdb'
    'libdisplay-info'
    'libinput'
    'libliftoff'
    'libx11'
    'libxcb'
    'libxcomposite'
    'libxfixes'
    'libxkbcommon'
    'libxrender'
    'meson'
    'ninja'
    'pango'
    'pixman'
    'seatd'
    'tomlplusplus'
    'wayland-protocols'
    'xcb-proto'
    'xcb-util'
    'xcb-util-keysyms'
    'xcb-util-wm'
    'xorg-xinput'
    'xorg-xwayland'
    'swww'
    'wlogout'
    'hyprpicker'
    'grimblast-git'
    'wireplumber'
    'ngw-look-bin'
    'pyprland'
)

for PKG in "${PKGS2[@]}"; do
    yay -S $PKG --noconfirm --needed
done

echo
echo "AUR PKGs Done!"
echo

# git clone --recursive https://github.com/hyprwm/Hyprland
# cd Hyprland
# make all && sudo make install
# cd ..


PKGS=(
      
      'qt5-wayland' 
      'waybar'
      'wl-clipboard'
      'xdg-desktop-portal-hyprland'            
)


for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

sudo reflector --verbose --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist

echo
echo "INSTALLING AUR SOFTWARE"
echo

cd "${HOME}"

echo "CLOING: AUR"







# Systemd Enables
sudo systemctl enble sddm
sudo systemctl enble --now NetworkManager
sudo systemctl enble --now bluetooth


echo
echo "Done! with a Capital D"
echo

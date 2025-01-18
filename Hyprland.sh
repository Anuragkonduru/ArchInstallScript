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
    'hyprwayland-scanner'
    'grimblast-git'
    'wireplumber'
    'ngw-look-bin'
    'pyprland'
    'hyprutils-git'
    'xdg-desktop-portal-hyprland-git'
)

for PKG in "${PKGS2[@]}"; do
    paru -S $PKG --noconfirm --needed
done

echo
echo "AUR PKGs Done!"
echo

git clone --recursive https://github.com/hyprwm/Hyprland
cd Hyprland
make all && sudo make install
cd ..


PKGS=(
      'grim'
      'qt5-wayland' 
      'waybar'
      'wl-clipboard'
      'pipewire' 
      'slurp' 
      'wireplumber'               
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



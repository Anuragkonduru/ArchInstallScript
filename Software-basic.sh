#!/usr/bin/env bash

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(
    'alacritty'
    'audacity'
    'awesome-terminal-fonts'
    'base-devel'
    'bleachbit'             
    'blueman'    
    'bluez'
    'brightnessctl'
    'copyq'
    'curl'                  
    'dunst'
    'elinks'                
    'ffmpegthumbnailer'
    'file-roller'           
    'firefox'               
    'fish'                   
    'geany'                 
    'gimp'                  
    'git'
    'gparted'              
    'grub-customizer'
    'gufw'                  
    'gvfs-gphoto2'
    'gvfs-mtp'
    'htop'                  
    'kdeconnect'
    'kitty'
    'kitty'                 
    'kvantum'
    'libreoffice-fresh'     
    'lsd'
    'mpc'
    'mpd'
    'mpv' 
    'mtpfs'
    'nano' 
    'ncmpcpp' 
    'neofetch'              
    'neovim' 
    'network-manager-applet'
    'networkmanager'
    'noto-fonts-cjk'
    'noto-fonts' 
    'ntfs-3g' 
    'obsidian'             
    'os-prober'
    'papirus-icon-theme'
    'pavucontrol'
    'pavucontrol' 
    'polkit-gnome'
    'qbittorrent'
    'qt5ct'
    'ranger' 
    'reflector'
    'ristretto'             
    'rofi' 
    'sddm'
    'speedtest-cli'         
    'starship' 
    'sudo'
    'terminus-font'         
    'thunar'                  
    'tldr'
    'trash-cli'
    'ttf-font-awesome' 
    'ttf-nerd-fonts-symbols'
    'ufw'                  
    'unrar'                 
    'unzip'                 
    'vim' 
    'vlc'                   
    'wget'                  
    'wpa_supplicant'
    'xclip'
    'xdg-desktop-portal-gtk'
    'zip'  
    'zoxide'                 
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

# git clone "https://aur.archlinux.org/yay.git"
# cd yay
# makepkg -si
# cd ..
# rm -r yay
# echo "AUR Installed"


PKGS2=(
    'archlinux-tweak-tool-git'
    'bibata-cursor-theme'
    'bibata-cursor-theme'
    'brave-bin'
    'candy-icons-git'
    'chili-sddm-theme'
    'megasync-bin'
    'stacer'
    'ticktick'
    'ttf-apple-emoji'
    'ttf-ms-fonts'
    'whatsapp-for-linux'
    'youtube-music'
)

for PKG in "${PKGS2[@]}"; do
    yay -S $PKG --noconfirm --needed
done

echo
echo "AUR PKGs Done!"
echo



# Systemd Enables
sudo systemctl enable sddm
sudo systemctl enable --now NetworkManager
sudo systemctl enable --now bluetooth


echo
echo "Done! with a Capital D"
echo

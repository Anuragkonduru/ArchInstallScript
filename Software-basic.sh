#!/usr/bin/env bash

echo
echo "UPDATING MIRRORS"
echo

sudo reflector --verbose --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(
    'archlinux-keyring'
    'alacritty'
    'audacity'
    'locate'
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
    'neovide'
    'lollypop'
    'dolphin'
    'steam'
    'github-cli'
    'bat'
    'sshfs'
    'arc-gtk-theme'
    'chromium'
    'tzdata'
    'pinta'
    'tmux'
    'python-pipx'
)


for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "INSTALLING AUR SOFTWARE"
echo

cd "${HOME}"

echo "CLOING: AUR"

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -r paru
echo "AUR Installed"


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
    'spotdl'
    'tauon-music-box'
    'manga-tui'
    'numix-icon-theme-git'
    'xdg-ninja'
    'zen-browser-bin'
    'visual-studio-code-bin'
    'rose-pine-gtk-theme-full'
)

for PKG in "${PKGS2[@]}"; do
    paru -S $PKG --noconfirm --needed
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

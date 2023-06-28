#!/usr/bin/env bash

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

    # SYSTEM --------------------------------------------------------------

    #'linux-lts'             # Long term support kernel

    # TERMINAL UTILITIES --------------------------------------------------

    'bash-completion'       # Tab completion for Bash
    'bc'                    # Precision calculator language
    'bleachbit'             # File deletion utility
    'curl'                  # Remote content retrieval
    'elinks'                # Terminal based web browser
    'variety'                   # Terminal-based image viewer/manipulator
    'file-roller'           # Archive utility
    'gnome-keyring'         # System password storage
    #'gtop'                  # System monitoring via terminal
    'gufw'                  # Firewall manager
    'htop'                  # Process viewer
    'inxi'                  # System information utility
    'jq'                    # JSON parsing library
    'jshon'                 # JSON parsing library
    'neofetch'              # Shows system info when you launch terminal
    'ntp'                   # Network Time Protocol to set time via network.
    'numlockx'              # Turns on numlock in X11
    'openssh'               # SSH connectivity tools
    #'rsync'                 # Remote file sync utility
    'speedtest-cli'         # Internet speed via terminal
    'terminus-font'         # Font package with some bigger fonts for login terminal
    'tlp'                   # Advanced laptop power management
    'unrar'                 # RAR compression program
    'unzip'                 # Zip compression program
    'wget'                  # Remote content retrieval
    'kitty'                 # Terminal emulator
    'zenity'                # Display graphical dialog boxes via shell scripts
    'zip'                   # Zip compression program
    'fish'                   # ZSH shell

    # DISK UTILITIES ------------------------------------------------------

    'autofs'                # Auto-mounter
    'exfat-utils'           # Mount exFat drives
    'gparted'               # Disk utility
    'gnome-disks'           # Disk utility
    'ntfs-3g'               # Open source implementation of NTFS file system
    'parted'                # Disk utility

    # GENERAL UTILITIES ---------------------------------------------------

    'thunar'                  # Filesystem browser
    'veracrypt'             # Disc encryption utility

    # DEVELOPMENT ---------------------------------------------------------

    'clang'                 # C Lang compiler
    'cmake'                 # Cross-platform open-source make system
    'electron'              # Cross-platform development using Javascript
    'git'                   # Version control system
    'gcc'                   # C/C++ compiler
    'glibc'                 # C libraries
    'meld'                  # File/directory comparison
    'nodejs'                # Javascript runtime environment
    'npm'                   # Node package manager
    'python'                # Scripting language
    'yarn'                  # Dependency management (Hyper needs this)

    # WEB TOOLS -----------------------------------------------------------

    'firefox'               # Web browser
    'filezilla'             # FTP Client
    'librewolf'             # browser
    'brave'                 # brave

    # COMMUNICATIONS ------------------------------------------------------

    # MEDIA ---------------------------------------------------------------

    'lollypop'              # Music player
    'vlc'                   # Video player
    'flameshot'         # Screen capture.

    # GRAPHICS AND DESIGN -------------------------------------------------

    #''               # Colorpicker
    'gimp'                  # GNU Image Manipulation Program
    'pngcrush'              # Tools for optimizing PNG images
    'ristretto'             # Multi image viewer

    # PRODUCTIVITY --------------------------------------------------------

    'galculator'            # Gnome calculator
    'hunspell'              # Spellcheck libraries
    'libreoffice-fresh'     # Libre office with extra features
    'geany'                 # simple text editor
    'xpdf'                  # PDF viewer

    # VIRTUALIZATION ------------------------------------------------------

    'virt-manager' 
    'virt-viewer' 

    # Misc ---------------------------------------------------------------
    'flatpak'
    'polkit-gnome'
    'alacritty'
    'alsa-firmware'
    'alsa-lib'
    'alsa-plugins'
    'alsa-utils'
    'arandr'
    'sddm'
    'awesome-terminal-fonts'
    'base-devel'
    'brightnessctl'
    'copyq'
    'cronie'
    'dunst'
    'ffmpegthumbnailer'
    'kitty'
    'krusader'
    'kvantum'
    'mpd'
    'mpv' 
    'ncmpcpp' 
    'neovim' 
    'nfs-utils' 
    'noto-fonts' 
    'pavucontrol' 
    'qutebrowser' 
    'ranger' 
    'rofi' 
    'rofi-calc' 
    'rofi-emoji' 
    'sddm'
    'starship' 
    'ttf-font-awesome' 
    'ttf-nerd-fonts-symbols'
    'ufw' 
    'vim' 
    'xclip'
    'xf86-video-amdgpu' 
    'lxappearance'
    'qt5ct'
    'nano' 
    'mtpfs'
    'gvfs-mtp'
    'gvfs-gphoto2'
    'exa'
    'xdg-desktop-portal-gtk'
    'reflector'
    'grub-customizer'
    'malcontent'
    'qt6ct'
    'trash-cli'
 
)

sudo pacman -Rns xdg-desktop-portal-gnome --noconfirm --needed

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

sudo reflector --verbose --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist

echo
echo "Done!"
echo

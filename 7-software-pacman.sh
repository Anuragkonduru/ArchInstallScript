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
    'hardinfo'              # Hardware info app
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
    'simplescreenrecorder'  # Record your screen
    'vlc'                   # Video player
    'flameshot-git'         # Screen capture.

    # GRAPHICS AND DESIGN -------------------------------------------------

    'gcolor2'               # Colorpicker
    'gimp'                  # GNU Image Manipulation Program
    'pngcrush'              # Tools for optimizing PNG images
    'ristretto'             # Multi image viewer

    # PRODUCTIVITY --------------------------------------------------------

    'galculator'            # Gnome calculator
    'hunspell'              # Spellcheck libraries
    'hunspell-en'           # English spellcheck library
    'libreoffice-fresh'     # Libre office with extra features
    'geany'                 # simple text editor
    'xpdf'                  # PDF viewer

    # VIRTUALIZATION ------------------------------------------------------

    # Misc
    'candy-beauty-icon-theme-git'
'alacritty'
'alsa-firmware'
'alsa-lib'
'alsa-plugins'
'alsa-utils'
'appstream '
'arandr '
'archlinux-logout-git'
'archlinux-tweak-tool-git'
'qt5-git'
'qtile-git'
'rofi-git'
'sddm'
'sddm-sugar-candy-git'
'awesome-terminal-fonts'
'base-devel'
'brightnessctl'
'catppuccin-gtk-theme-mocha'
'copyq'
'cronie'
'dunst'
'ffmpegthumbnailer'
'kitty'
'krusader'
'kvantum'
'megasync-bin'
'mesa-git'
'mpd'
'mpv' 
'ncmpcpp' 
'neovim' 
'nfs-utils' 
'noto-fonts' 
'pavucontrol' 
'qtile-extras-git' 
'qutebrowser' 
'ranger' 
'rofi' 
'rofi-calc' 
'rofi-emoji' 
'sddm'
'sddm-sugar-candy-git' 
'speedread-git' 
'spotify' 
'stacer' 
'starship' 
'steam' 
'sudo' 
'ttf-apple-emoji' 
'ttf-font-awesome' 
'ttf-ms-fonts'
'ttf-nerd-fonts-symbols'
'ufw' 
'vim' 
'virt-manager' 
'virt-viewer' 
'visual-studio-code-bin' 
'winetricks-git' 
'xclip'
'xf86-video-amdgpu' 
'yay-git'
'lxappearance'
'qt5ct' 
 
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo

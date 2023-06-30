#!/usr/bin/env bash

echo
echo "INSTALLING AUR SOFTWARE"
echo

cd "${HOME}"

#echo "CLOING: AURIC"
#git clone "https://github.com/rickellis/AURIC.git"


PKGS=(

    # SYSTEM UTILITIES ----------------------------------------------------

    'menulibre'                 # Menu editor
    'gtkhash'                   # Checksum verifier

    # TERMINAL UTILITIES --------------------------------------------------

    # UTILITIES -----------------------------------------------------------

    # DEVELOPMENT ---------------------------------------------------------
    
    'visual-studio-code-bin'    # Kickass text editor

    # MEDIA ---------------------------------------------------------------

    'spotify'                   # Music player
    'aftershotpro3'             # Photo editor

    # POST PRODUCTION -----------------------------------------------------

    # COMMUNICATIONS ------------------------------------------------------


    # THEMES --------------------------------------------------------------

    'paper-icon-theme'
    'candy-beauty-icon-theme-git'

    # MISC ----------------------------------------------------------------
    'archlinux-logout-git'
    'bibata-cursor-theme'
    'archlinux-tweak-tool-git'
    'sddm-theme-sugar-candy-git'
    'candy-icons-git'
    'catppuccin-gtk-theme-mocha'
    'megasync-bin'
    'mesa-git'
    'speedread-git'
    'stacer'
    'steam'
    'ttf-apple-emoji'
    'ttf-ms-fonts'
    'visual-studio-code-bin'
    'winetricks-git'
    'hardinfo'
    'autofs'
    'gnome-disks'
    'librewolf'
    'brave-bin'
    'picom-git'
    'jmtpfs'
    'termtyper'
    'mangohud-git'
    'libwnck3'
)

for PKG in "${PKGS[@]}"; do
    yay -S $PKG --noconfirm --needed
done

echo
echo "Done!"
echo

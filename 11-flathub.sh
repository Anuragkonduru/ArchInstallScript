#!/usr/bin/env bash

flatpak install flathub com.github.taiko2k.tauonmb
flatpak install flathub net.lutris.Lutris
flatpak install flathub com.discordapp.Discord
flatpak install flathub md.obsidian.Obsidian
flatpak install flathub org.kde.krita
flatpak install flathub org.gnome.Cheese
flatpak install flathub net.ankiweb.Anki
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub com.usebottles.bottles
#flatpak install flathub io.github.mimbrero.WhatsAppDesktop
flatpak install flathub com.obsproject.Studio
flatpak install flathub io.github.shiftey.Desktop

sudo flatpak override --filesystem=$HOME/.themes
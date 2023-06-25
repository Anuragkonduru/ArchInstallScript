#!/usr/bin/env bash

echo
echo "INSTALLING SOFTWARE from source"
echo

git clone https://aur.archlinux.org/librewolf.git
cd librewolf
makepkg -si
cd ..

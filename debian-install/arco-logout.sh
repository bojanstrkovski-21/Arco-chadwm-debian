#!/usr/bin/env bash

# getting archlinux-logout
[ -d $HOME"/DATA" ] || mkdir -p $HOME"/DATA"
cd $HOME/DATA
git clone https://github.com/arcolinux/archlinux-logout
sudo cp -r archlinux-logout/etc/* /etc
sudo cp -r archlinux-logout/usr/* /usr
sudo rm -r share/archlinux-betterlockscreen
sudo rm /usr/share/applications/archlinux-betterlockscreen.desktop

# personalisation of archlinux-logout
[ -d $HOME"/.config/archlinux-logout" ] || mkdir -p $HOME"/.config/archlinux-logout"
cp -v archlinux-logout.conf ~/.config/archlinux-logout/

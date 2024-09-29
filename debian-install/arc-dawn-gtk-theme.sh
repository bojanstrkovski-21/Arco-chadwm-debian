#!/usr/bin/env bash

[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"

# Arc Dawn
git clone https://github.com/arcolinux/arcolinux-arc-dawn  /tmp/arcolinux-arc-dawn
cd /tmp/arcolinux-arc-dawn/usr/share/themes

cp -r * ~/.themes

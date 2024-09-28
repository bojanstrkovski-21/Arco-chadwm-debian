#!/usr/bin/env bash

cd ~/Downloads
rm -rf arcolinux-chadwm arcolinux-powermenu
cd ~/config && rm -rf arco-chadwm

git clone https://github.com/arcolinux/arcolinux-powermenu
sudo cp arcolinux-powermenu/usr/local/bin/arcolinux-powermenu /usr/local/bin
cp -r arcolinux-powermenu/etc/skel/.bin ~
cp -r arcolinux-powermenu/etc/skel/.config ~


git clone https://github.com/arcolinux/arcolinux-chadwm  
sudo cp arcolinux-chadwm/usr/bin/exec-chadwm /usr/bin
sudo cp arcolinux-chadwm/usr/share/xsessions/chadwm.desktop /usr/share/xsessions
cp -r arcolinux-chadwm/etc/skel/.bin ~
cp -r arcolinux-chadwm/etc/skel/.config ~
#rm ~/.config/arco-chadwm/scripts/bar.sh
#rm ~/.config/arco-chadwm/scripts/run.sh
cp ~/Templates/debian-install/arco-chadw/run.sh  ~/.config/arco-chadwm/scripts
cp ~/Templates/debian-install/arco-chadw/bar.sh ~/.config/arco-chadwm/scripts
#rm ~/.config/arco-chadwm/picom/picom.conf
cp ~/Templates/debian-install/arco-chadw/picom.conf  ~/.config/arco-chadwm/picom
cp ~/Templates/debian-install/arco-chadw/config.def.h ~/.config/arco-chadwm/chadwm
cp ~/Templates/debian-install/arco-chadw/sxhkdrc  ~/.config/arco-chadwm/sxhkd
cp ~/Templates/debian-install/arco-chadw/uca.xml ~/.config/Thunar/

exit 1
cd ~/.config/arco-chadwm/chadwm/
sudo make install


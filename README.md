# Arco-chadwm-debian
I've created this repo for testing purpose only for my self for easy access in my debian vm. 
Please be careful and only use them if you know exactly what you're doing !!!

![image](https://github.com/bojanstrkovski-21/Arco-chadwm-debian/blob/master/chadwm-debian.png)

## IMPORTANT !!! : COPY THE FOLDER __debian-install__ INTO $Home/Templates OR CHANGE PATH INSIDE THE SCRIPT WHERE IT ASKS FOR THIS PATH OR install-arcolinux-chadwm.sh WILL NOT COPY THE IMPORTANT FILES TO PROPRIATE DIRECTORIES !!!

1. I downloaded latest debian12 net installer iso from debian.org
2. I installed it with graphical install and installed minimal cli debian on VM (virtulal machine)
3. I runned scrits in this order (order its optional except for debian-install-xfce.sh because this is the the installation for xfce4 desktop as backend, dependecies needed for chadwm build and install, some apps and packages for functionality and use):

  a. debian-install-xfce.sh
  b. firefox.sh
  c. sublime-text.sh
  d. nerdfonts.sh
  e. variety-complete.sh
  f. neovim-latest.sh (still in beta)
  g. a-candy-beauty-theme.sh
  h. nfs.sh - need to edit nfs files in /etc/default as shown in the script (this i install and conf because i have nfs shared folder from my host pc)
  i. systemctl-enable.sh to enable few services
  
4. Cd into arco-chadw folder and run install-arcolinux-chadwm.sh script to get and build the arcolinux-chadwm from arcolinux github and get arcolinux-powermenu

## DISCLAIMER : IF YOU DECIDE TO TRY OUT THIS SCRIPTS PLEASE TEST THEM IN VM(VIRTULA MACHINE) RAHTER THAN ON REAL HARDWARE AND IF THEY WORK FOR IN THE VM THEN YOU CAN TRY THEM ON REAL HARDWARE. I AM NOT RESPONSIBLE FOR ANY SYSTEM PROBLEMS THAT MIGHT HAPPEN !!!

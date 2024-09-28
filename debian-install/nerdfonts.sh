#!/usr/bin/env bash

mkdir ~/.fonts
cd ~/.fonts

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/CascadiaCode.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/CascadiaMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip

unzip CascadiaCode.zip
unzip CascadiaMono.zip
unzip FiraCode.zip
unzip FiraMno.zip
unzip JetBrainsMono.zip
unzip Meslo.zip

sleep 5

rm *.zip

fc-cache -fv
sudo fc-cache -fv

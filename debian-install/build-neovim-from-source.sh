#!/usr/bin/env bash

sudo apt-get install ninja-build gettext cmake unzip curl build-essential -y

[ -d $HOME"/DATA" ] || mkdir -p $HOME"/DATA"
cd $HOME/DATA

#git clone --dept=1 https://github.com/neovim/neovim.git
wget https://github.com/neovim/neovim/archive/refs/tags/v0.10.1.tar.gz
tar -xzf v0.10.1.tar.gz
cd v0.10.1.tar.gz
exit 1
make CMAKE_BUILD_TYPE=Release
sudo make install

#!/usr/bin/env bash

# wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz ~/Downloads

cd ~/Downloads

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz

sudo tar -C /opt -xzf nvim-linux64.tar.gz

echo "export PATH="/opt/nvim-linux64/bin:$PATH"" >> ~/.bashrc

source ~/.bashrc

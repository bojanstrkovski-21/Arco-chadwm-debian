#!/usr/bin/env bash

cd ~/Downloads

git clone https://github.com/arcolinux/a-candy-beauty-icon-theme  

# check if .icons exists
if [ ! -d "$HOME/.icons" ]; then
  # Create the .icons directory and its parent directories
  mkdir -p "$HOME/.icons"
  echo "The $HOME/.icons directory has been created successfully."
else
  echo "The $HOME/.icons directory already exists."
fi

cp -r a-candy-beauty-icon-theme/usr/share/icons/* ~/.icons/
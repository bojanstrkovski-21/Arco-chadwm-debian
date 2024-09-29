#!/usr/bin/env bash

# Define the tools to check/install
TOOLS=(git wget curl)

# Loop through each tool
for TOOL in "${TOOLS[@]}"; do
  # Check if tool is installed
  if ! command -v $TOOL &> /dev/null; then
    echo "Tool: $TOOL is not installed. Installing..."
    sudo apt-get update && sudo apt-get install -y $TOOL
  fi
done

echo "Installation complete."

# Check if ~/.fonts directory exists
if [ ! -d "$HOME/.fonts" ]; then
  echo "Creating ~/.fonts directory..."
  mkdir -p "$HOME/.fonts"
else
  echo "directory already exists."
fi

echo "~/.fonts directory created."

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

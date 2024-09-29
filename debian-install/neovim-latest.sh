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

# download and install latest neovim
cd ~/Downloads

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz

sudo tar -C /opt -xzf nvim-linux64.tar.gz

echo 'export PATH="/opt/nvim-linux64/bin:${PATH}"' >> ~/.bashrc

source ~/.bashrc

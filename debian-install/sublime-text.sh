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

# install gpg key
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null

# add sublime-text source to apt sources
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update
sudo apt-get install sublime-text

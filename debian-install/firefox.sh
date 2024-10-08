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

# first create a directory to store the APT repository keys in terminal
sudo install -d -m 0755 /etc/apt/keyrings

# import the Mozilla APT repository signing key
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null

# add the Mozilla APT repository to your sources list
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null

#  configure APT to prioritize packages from the Mozilla repository
echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
' | sudo tee /etc/apt/preferences.d/mozilla 

# refresh the package list and install the Firefox DEB package
sudo apt-get update && sudo apt-get install firefox

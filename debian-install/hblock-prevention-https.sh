#!/usr/bin/env bash

# Define the tools to check/install
TOOLS=(git wget curl make)

# Loop through each tool
for TOOL in "${TOOLS[@]}"; do
  # Check if tool is installed
  if ! command -v $TOOL &> /dev/null; then
    echo "Tool: $TOOL is not installed. Installing..."
    sudo apt-get update && sudo apt-get install -y $TOOL
  fi
done

echo "Installation complete."


# prevention ads - tracking - hblock
# https://github.com/hectorm/hblock
git clone https://github.com/hectorm/hblock  /tmp/hblock
cd /tmp/hblock
sudo make install
hblock

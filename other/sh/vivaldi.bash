#!/bin/bash

# Last Verified: 2023-09-18T04:49:00Z (Deprecation of apt-key has been noted)

# Add the Vivaldi repository
echo "deb https://repo.vivaldi.com/archive/deb/ stable main" | sudo tee /etc/apt/sources.list.d/vivaldi.list

# Import the Vivaldi GPG key
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -

# Warning: apt-key is deprecated. Manage keyring files in trusted.gpg.d instead (see apt-key (8))

# Update your package list
sudo apt update

# Install Vivaldi
sudo apt install vivaldi-stable

# Cleanup
sudo rm /etc/apt/sources.list.d/vivaldi.list

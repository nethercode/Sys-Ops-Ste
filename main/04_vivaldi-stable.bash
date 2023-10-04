#!/bin/bash

# Last Verified: 2023-10-03T21:29:00Z
# <https://itsfoss.com/install-vivaldi-ubuntu-linux/>

# Download the Vivaldi GPG key and store it in the keyring
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | gpg --dearmor | sudo dd of=/usr/share/keyrings/vivaldi-browser.gpg

# Add the Vivaldi repository
echo "deb [signed-by=/usr/share/keyrings/vivaldi-browser.gpg arch=$(dpkg --print-architecture)] https://repo.vivaldi.com/archive/deb/ stable main" | sudo dd of=/etc/apt/sources.list.d/vivaldi-archive.list

# Update your package list
sudo apt update

# Install Vivaldi
sudo apt install -y vivaldi-stable

# Cleanup
sudo rm /etc/apt/sources.list.d/vivaldi.list

#!/bin/bash

# Last Verified: 2023-MM-DDTHH:MM:00Z
# (Needs testing to ensure gpg process is written correctly)

# Add the Vivaldi repository
echo "deb https://repo.vivaldi.com/archive/deb/ stable main" | sudo tee /etc/apt/sources.list.d/vivaldi.list

# Import the Vivaldi GPG key
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | gpg --dearmor -o /usr/share/keyrings/vivaldi-archive-keyring.gpg

# Set up APT to use the new keyring file
echo "signed-by=/usr/share/keyrings/vivaldi-archive-keyring.gpg" | sudo tee /etc/apt/sources.list.d/vivaldi.list.save

# Update your package list
sudo apt update

# Install Vivaldi
sudo apt install -y vivaldi-stable

# Cleanup
sudo rm /etc/apt/sources.list.d/vivaldi.list

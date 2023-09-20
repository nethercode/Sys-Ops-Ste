#!/bin/bash

<<BRAVE
sudo apt install -y curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser

# Last Verified: 2023-09-18T04:49:00Z
BRAVE

<<CHROME
# Add the Google Chrome repository
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

# Import the Google Chrome GPG key
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Warning: apt-key is deprecated. Manage keyring files in trusted.gpg.d instead (see apt-key (8))

# Update your package list
sudo apt-get update

# Install Google Chrome
sudo apt-get install google-chrome-stable

# Cleanup
sudo rm /etc/apt/sources.list.d/google-chrome.list

# Last Verified: 2023-09-18T04:49:00Z (Deprecation of apt-key has been noted)
CHROME

<<VIVALDI
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

# Last Verified: 2023-09-18T04:49:00Z (Deprecation of apt-key has been noted)
VIVALDI
#!/bin/bash

# Last Verified: 2023-09-18T04:49:00Z (Deprecation of apt-key has been noted)

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

#!/bin/bash

# Update the package manager cache.
sudo apt update

# Download the Google Chrome stable .deb package.
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Install Google Chrome stable.
sudo apt install -y ./google-chrome-stable_current_amd64.deb

# Remove the downloaded .deb package.
rm google-chrome-stable_current_amd64.deb

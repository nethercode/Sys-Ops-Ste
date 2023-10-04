#!/bin/bash

# Install fuse
sudo apt update
sudo apt install -y fuse

# Set the download location
APPIMAGE_DIR=~/appimages/etcher
mkdir -p $APPIMAGE_DIR

# Download the AppImage
APPIMAGE_URL="https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-1.18.11-x64.AppImage"
wget -O $APPIMAGE_DIR/balenaEtcher.AppImage $APPIMAGE_URL

# Make the AppImage executable
chmod +x $APPIMAGE_DIR/balenaEtcher.AppImage

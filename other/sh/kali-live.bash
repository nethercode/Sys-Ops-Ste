#!/bin/bash

# Set the download location
ISO_DIR=~/iso9660
mkdir -p $ISO_DIR

# Download the Debian netinst ISO
ISO_URL="https://cdimage.kali.org/kali-2023.3/kali-linux-2023.3-live-amd64.iso"
wget -O $ISO_DIR/debian-netinst.iso $ISO_URL

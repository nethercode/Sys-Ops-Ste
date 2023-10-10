#!/bin/bash

# Set the download location
ISO_DIR=~/iso9660
mkdir -p $ISO_DIR

# Download the Kali live boot ISO
# <https://www.kali.org/get-kali/#kali-live>
ISO_URL="https://cdimage.kali.org/kali-2023.3/kali-linux-2023.3-live-amd64.iso"
wget -O $ISO_DIR/kali-live.iso $ISO_URL

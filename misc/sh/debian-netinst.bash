#!/bin/bash

# Set the download location
ISO_DIR=~/iso9660
mkdir -p $ISO_DIR

# Download the Debian netinst ISO
# <https://www.debian.org/>
ISO_URL="https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-12.2.0-amd64-netinst.iso"
wget -O $ISO_DIR/debian-netinst.iso $ISO_URL

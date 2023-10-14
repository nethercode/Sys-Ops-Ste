#!/bin/bash

# set download details
ISO_DIR=~/iso9660
ISO_FILE=ubuntu_lts_22-04-3.iso
ISO_URL="https://releases.ubuntu.com/22.04.3/ubuntu-22.04.3-desktop-amd64.iso"
# <https://ubuntu.com>

# create iso directory if does not exist
mkdir -p $ISO_DIR

# download the iso
wget -O $ISO_DIR/$ISO_FILE $ISO_URL

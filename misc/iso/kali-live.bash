#!/bin/bash

# set download details
ISO_DIR=~/iso9660
ISO_FILE=kali_live_2023-3.iso
ISO_URL="https://cdimage.kali.org/kali-2023.3/kali-linux-2023.3-live-amd64.iso"
# <https://www.kali.org>

# create iso directory if does not exist
mkdir -p $ISO_DIR

# download the iso
wget -O $ISO_DIR/$ISO_FILE $ISO_URL

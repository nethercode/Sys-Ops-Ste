#!/bin/bash

# set download details
ISO_DIR=~/iso9660
ISO_FILE=fedora_ws_38-1-6.iso
ISO_URL="https://download.fedoraproject.org/pub/fedora/linux/releases/38/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-38-1.6.iso"
# <https://fedoraproject.org>

# create iso directory if does not exist
mkdir -p $ISO_DIR

# download the iso
wget -O $ISO_DIR/$ISO_FILE $ISO_URL

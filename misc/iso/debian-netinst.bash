#!/bin/bash

# set download details
ISO_DIR=~/iso9660
ISO_FILE=debian_netinst_12-2-0.iso
ISO_URL="https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-12.2.0-amd64-netinst.iso"
# <https://www.debian.org>

# create iso directory if does not exist
mkdir -p $ISO_DIR

# download the iso
wget -O $ISO_DIR/$ISO_FILE $ISO_URL

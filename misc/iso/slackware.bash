#!/bin/bash

# set download details
ISO_DIR=~/iso9660
ISO_FILE=slackware_15-0.iso
ISO_URL="https://mirrors.slackware.com/slackware/slackware-iso/slackware64-15.0-iso/slackware64-15.0-install-dvd.iso"
# <http://www.slackware.com>

# create iso directory if does not exist
mkdir -p $ISO_DIR

# download the iso
wget -O $ISO_DIR/$ISO_FILE $ISO_URL

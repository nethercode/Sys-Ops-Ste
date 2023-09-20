#!/bin/bash

username=$(whoami)

if [ -z "$username" ]; then
  echo "Username cannot be empty. Exiting."
  exit 1
fi

sudoer_file="/etc/sudoers.d/$username"

if [ -e "$sudo_file" ]; then
  echo "Sudoers file for $username already exists."
  exit 1
fi

echo "user ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee -a "$sudoer_file"

sudo chown root:root "$sudoer_file"
sudo chmod 0440 "$sudoer_file"








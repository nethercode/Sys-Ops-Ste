#!/bin/bash

sudo apt update && sudo apt upgrade -y

<<ROOT
if test $(whoami) != root
then
	echo "This script must be run as root, or else."
	exit 1
fi

read -p "Enter username to grant sudo access: " username
ROOT

username=$(whoami)

if [ -z "$username" ]; then
  echo "Username cannot be empty. Exiting."
  exit 1
fi

sudo_file="/etc/sudoers.d/$username"

if [ -e "$sudo_file" ]; then
  echo "Sudoers file for $username already exists."
  exit 1
fi

echo "$username ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee "$sudo_file"

chown root:root "$sudo_file"
chmod 0440 "$sudo_file"


#!/bin/bash

# Initialize useful variables
default_ip="192.168.1.1"
output_directory="$HOME/tmp/output/nmap"
output_file="$output_directory/output_ps.txt"

# Check if Nmap is installed
if ! command -v nmap &> /dev/null; then
    echo "Nmap not found. Installing..."
    
    # Update package list
    sudo apt update
    
    # Install Nmap
    sudo apt install -y nmap

    # Confirm installation
    if ! command -v nmap &> /dev/null; then
        echo "Nmap installation failed. Exiting."
        exit 1
    else
        echo "Nmap installed successfully."
    fi
else
    echo "Nmap is already installed."
fi

# Ask the user for the IP range or use default
read -p "Enter the IP to scan (Leave blank for $default_ip): " ip_to_scan

# Check if the entered IP range is valid
if [ -z "$ip_to_scan" ]; then
    ip_to_scan=$default_ip
    echo "Using default IP ($ip_to_scan)."
fi

# Run Nmap scan
echo "Nmap port scanning $ip_to_scan..."
mkdir -p "$output_directory"
nmap -p 1-65535 "$ip_to_scan" > "$output_file"
echo "Results saved to $output_file"
echo "Scan complete."

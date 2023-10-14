#!/bin/bash

# Initialize useful variables
default_range="192.168.1.0-255"
output_directory="$HOME/tmp/output/nmap"
output_file="$output_directory/output.txt"

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
read -p "Enter the IP range to scan (Leave blank for $default_range): " ip_range

# Check if the entered IP range is valid
if [ -z "$ip_range" ]; then
    ip_range=$default_range
    echo "Using default IP range ($ip_range)."
fi

# Run Nmap scan
echo "Running Nmap scan on $ip_range..."
mkdir -p "$output_directory"
nmap -sn -v "$ip_range" > "$output_file"
echo "Results saved to $output_file"
echo "Scan complete."

# Inverse match using grep to remove any lines containing [host down]
echo "Printing all lines not containing [host down] to standard output..."
grep -v "\[host down\]" "$output_file"

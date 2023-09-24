# System Administration Quick Reference Guide

### APT Commands
    apt update
    apt upgrade
    apt install
    apt remove
    apt purge
    apt autoremove

### APT Installable Packages
    apache2
    cmatrix
    curl
    fuse
    git
    golang
    hollywood
    htop
    keepassxc
    php
    neofetch
    qbittorrent
    ruby
    screen
    vim
    vlc
    wireshark 
    xclip
    
### Edit APT autoremove config 
    nano /etc/apt/apt.conf.d/01autoremove

### Bash Hotkeys
    ctrl-a: move cursor to beginning of line
    ctrl-e: move cursor to end of line

    ctrl-u: delete everything before the cursor
    ctrl-k: delete everything past the cursor
    ctrl-w: delete word left of cursor
    ctrl-y: paste most recently deleted text

    ctrl-c: interrupt
    ctrl-d: send EOF character (delete, end input, or close shell)
    ctrl-l: clear the screen while preserving ability to scroll up

    ctrl-r: search command history interactively
    ctrl-g: abort the current search
    
    Ctrl + S: Pause terminal output
    Ctrl + Q to resume
    
    alt-left: move left one word
    alt-right: move right one word

    Up Arrow: Cycle through previously executed commands in history (in reverse order).
    Down Arrow: Cycle through previously executed commands in history (in chronological order).

    Alt + . (period): Insert the last argument from the previous command.
    Ctrl + T: Swap the current character with the previous character (useful for correcting typos).
    Tab: Auto-complete filenames, commands, and directory names. Press Tab twice to see a list of available options if there's ambiguity.

### Create a New User
```
useradd <username>
passwd <username>
```

### Install Display Drivers
```
# Nvidia
lspci -nn | egrep -i "3d|display|vga"
sudo apt install -y linux-headers-amd64
sudo nano /etc/apt/sources.list
/*
Add ["contrib", "non-free", "non-free-firmware"] components to /etc/apt/sources.list, for example:
deb http://deb.debian.org/debian/ bookworm main contrib non-free non-free-firmware
*/
sudo apt update
sudo apt install -y nvidia-driver firmware-misc-nonfree
sudo reboot
```

### Make AppImage Executable
```
chmod a+x exampleName.AppImage
```

### Remove a Boot Entry
```
efibootmgr
efibootmgr -b ____ -B
```

<br>
<br>
<br>

## UNSORTED

### Settings tweaks for new Proton account
    Settings
        -> Security and privacy
        -> Privacy and data collection
        -> Collect usage diagnostics
        -> Toggle OFF
    Settings 
        -> Security and privacy
        -> Privacy and data collection
        -> Send crash reports
        -> Toggle OFF
    Settings
        -> Security and privacy
        -> Security logs
        -> Wipe
    Settings
        -> Security and privacy
        -> Security logs
        -> Enable authentication logs
        -> Toggle OFF
    Settings
        -> Dashboard
        -> Email subscriptions
        -> Toggle OFF
    Settings
        -> Language and time
        -> Time format
        -> Change to 24-hour clock
    Settings
        -> Recovery
        -> Data recovery
        -> Recovery phrase
        -> Toggle ON
        -> Download
    Settings
        -> Recovery
        -> Data recovery
        -> Recovery file
        -> Download recovery file

### Fix VSCodium miscoloring of title bar in GNOME
    File
        -> Preferences
        -> Settings
        -> Window
        -> Title Bar Style
        -> Custom

### A list of other useful software
    BitWarden
    Etcher
    Postman
    VSCode

### A list of networking tools
    ping
    curl
    httpie
    wget
    tc
    dig
    nslookup
    whois
    ssh
    scp
    rsync
    ngrep
    tcpdump
    wireshark
    tshark
    tcpflow
    ifconfig
    route
    ip
    arp
    mitmproxy
    nmap
    zenmap
    p0f
    openvpn
    wireguard
    nc
    socat
    telnet
    ftp
    sftp
    netstat
    ss
    lsof
    fuser
    iptables
    nftables
    hping3
    traceroute
    mtr
    tcptraceroute
    ethtool
    iw
    iwconfig
    sysctl
    openssl
    stunnel
    iptraf
    netfogs
    iftop
    ntop
    ab
    nload
    iperf
    python3 -m http.server
    ipcalc
    nsenter
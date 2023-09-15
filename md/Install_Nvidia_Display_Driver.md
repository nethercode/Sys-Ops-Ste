$ lspci -nn | egrep -i "3d|display|vga"
# apt install -y linux-headers-amd64
# nano /etc/apt/sources.list
/*
Add ["contrib", "non-free", "non-free-firmware"] components to /etc/apt/sources.list, for example:
deb http://deb.debian.org/debian/ bookworm main contrib non-free non-free-firmware
*/
# apt update
# apt install -y nvidia-driver firmware-misc-nonfree
# reboot



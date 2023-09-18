Debian Install (Simple)

01 Installer Menu: Graphical Install
02 System Language: English
03 System Location: United States
04 Keyboard Keymap: American English
00 Media Loader: LOADING_BAR
05 Network Interface: <SELECT_NETWORK_INTERFACE>
06 Hostname: <ENTER_HOSTNAME>
07 Domain: <blank>
08 Root Password: <ENTER_ROOT_PASSWORD>
09 Full Name: <ENTER_FULL_NAME>
10 Username: <ENTER_USERNAME>
11 User Password: <ENTER_USER_PASSWORD>
12 Time Zone: <SELECT_TIME_ZONE>
00 Disk Detection: LOADING_BAR
13 Partition Method: Guided - Use Entire Disk and Setup LVM
14 Primary Disk: <SELECT_DISK>
15 Disk Scheme: Separate /home, /var/, /tmp Partitions
16 Confirm Partition: Yes
00 Partition Amount: <ENTER_PERCENTAGE>
17 Write Changes: Yes
00 Install Base System: LOADING_BAR
18 Package Manager Mirror Country: United States
19 Archive Mirror: deb.debian.org
20 Proxy: blank
21 Popularity Contest: no
22 ["Debian Desktop Environment", "Xfce", "Web Server", "SSH Server", "Standard System Utilities"]
00 Install Software: LOADING_BAR
23 Finish Install: (REBOOT) && <REMOVE_MEDIA>

The following document section details the steps to be followed when
configuring a new install of the Debian GNU/Linux
operating system using the Xfce desktop enviroment.

# Prepare a directory
mkdir -p ~/other/gh/ && cd ~/other/gh/

# Become Root
su -

# Update and upgrade the system
apt update && apt upgrade -y

# Add a sudoer
echo "$username ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers.d/$username
chown root:root /etc/sudoers.d/$username
chmod 0440 /etc/sudoers.d/$username
logout

# Install Brave
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser

# Install GitHub CLI
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

# Setup GitHub CLI
gh auth login
"GitHub.com"
"SSH"
"Y" (Yes)
<blank>
"SSH_Key_GitHub_CLI_DYYYYMMDDTHHMMSSZ"
"Paste an authentication token"
	> Visit "https://github.com/settings/tokens"
	> Click "Generate new token" button
	> Select "Generate new token (classic)" option
		> Note: SSH_Key_GitHub_CLI_DYYYYMMDDTHHMMSSZ
		> Expiration: Custom...
			> 1 Year
		> Scopes: ["repo", "read:org", "admin:public_key"]
		> Click "Generate token" button
		> Copy the token
	> Paste the token
git config --global user.name "Username"
git config --global user.email "email-address@example.com"
git clone git@github.com:Username/Repository.git

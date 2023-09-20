apt update && apt upgrade -y

echo "user ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers.d/user
chown root:root /etc/sudoers.d/user && chmod 0440 /etc/sudoers.d/user
logout

sudo apt install -y git
git config --global user.email "github-user@hotmail.com"
git config --global user.name "Nethercode"
git config --global init.defaultBranch main

mkdir -p ~/other/gh
git clone https://github.com/nethercode/autosetup ~/other/gh
cd ~/other/gh/autosetup/sh/

bash 020_install_curl.sh

bash 030_install_github_cli.sh
gh auth login

bash 035_install_vscodium.sh
sudo shutdown -r now

bash 040_install_brave.sh

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









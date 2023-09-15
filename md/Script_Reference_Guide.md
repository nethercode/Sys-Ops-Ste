This document details the steps to be followed when
configuring a new install of the Debian GNU/Linux
operating system using the XFCE desktop enviroment.

# Prepare a directory
mkdir Other/ && cd Other/
mkdir Setup/ && cd Setup/

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





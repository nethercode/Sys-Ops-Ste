Applications ->
	Settings ->
	Appearance ->
	Style ->
	Adwaita-dark

[ For multi-monitor systems: ]
Applications ->
	Settings ->
	Display ->
	Align

Applications
	-> Settings
	-> Workspaces
	-> Number of Workspaces
	-> 2

Wi-Fi Networks
	-> Available networks
	-> Select SSID
	-> Enter password

- Set Mousepad as default for .md
- Set Mousepad as default for .txt
- Set Mousepad as default for .csv

Firefox
	-> Sign in -> Sync
	-> Save to Pocket icon -> Remove from Toolbar
	-> Import bookmarks... -> Remove from Toolbar
	-> "Getting Started" bookmark -> Delete Bookmark

Commands:

su -

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









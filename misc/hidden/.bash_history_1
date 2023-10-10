sudo apt update && sudo apt upgrade -y
sudo apt install -y git
mkdir -p ~/tmp/autosetup
git clone https://github.com/nethercode/autosetup ~/tmp/autosetup
mousepad ~/tmp/autosetup/tmp/00_init.txt
bash ~/tmp/autosetup/tmp/10_nopasswd.sh
exit
git config --global user.name "Nethercode"
git config --global user.email "github-user@hotmail.com"
git config --global init.defaultBranch main
cat ~/.gitconfig
bash ~/tmp/autosetup/tmp/40_curl.sh
bash ~/tmp/autosetup/tmp/50_gh.sh
gh auth login
bash ~/tmp/autosetup/tmp/60_configs.sh
cat ~/tmp/autosetup/tmp/65_manual.txt
nano ~/.bashrc
source ~/.bashrc
vi ~/.bashrc
x
bash ~/tmp/autosetup/tmp/80_codium.sh
nano ~/tmp/autosetup/tmp/90_browser.sh
bash ~/tmp/autosetup/tmp/90_browser.sh
sudo shutdown -r now
bash ~/tmp/autosetup/tmp/99_del.sh
mkdir -p ~/vsc/proj/autosetup && git clone git@github.com:nethercode/autosetup ~/vsc/proj
mkdir ~/AppImages
curl -L -o ~/AppImages/Bitwarden-Desktop.AppImage "https://vault.bitwarden.com/download/?app=desktop&platform=linux"
wget "https://vault.bitwarden.com/download/?app=desktop&platform=linux" -O ~/AppImages/Bitwarden-Desktop.AppImage
sudo apt install -y fuse
chmod a+x ~/AppImages/Bitwarden-Desktop.AppImage
sudo apt install -y gnome-disk-utility
sudo apt install -y gvfs
sudo apt install -y nautilus
sudo apt install -y htop


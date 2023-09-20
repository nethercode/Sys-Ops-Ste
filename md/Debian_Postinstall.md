# Post-install Guide for Debian
__Version 12.1.0 "bookworm" Release__  
Document details steps to follow during configuration of Debian GNU/Linux OS using Xfce.

<br>

### STEP_01: Update and upgrade the system
```
sudo apt update && sudo apt upgrade -y
```
<br>

### STEP_02: Install Git
```
sudo apt install -y git
```
<br>

### STEP_03: Prepare a temporary directory
```
mkdir -p ~/tmp/autosetup
```
<br>

### STEP_04: Clone this repository
```
git clone https://github.com/Nethercode/Autosetup ~/tmp/autosetup
```
<br>

### STEP_05: Tweak settings
```
mousepad ~/tmp/autosetup/tmp/00_init.txt
```
<br>

### STEP_06: Make sudo passwordless
```
bash ~/tmp/autosetup/tmp/10_nopasswd.sh
```
<br>

### STEP_07: Close and re-open Terminal Emulator
```
exit
```
> Note (1): Keystroke C-M-t opens a Terminal Emulator instance. <br>
> Note (2): Running `source ~/.bashrc` *might* work here in place of closing and re-opening.

<br>

### STEP_08: Configure Git
```
git config --global user.name "Username"
git config --global user.email "user@example.com"
git config --global init.defaultBranch main
```
<br>

### STEP_09: Install cURL
```
bash ~/tmp/autosetup/tmp/install_curl.sh
```
<br>

### STEP_10: Install GitHub CLI
```
bash ~/tmp/autosetup/tmp/50_gh.sh
```
<br>

### STEP_11: Setup GitHub authentication
```
gh auth login
```
- GitHub.com
- SSH
- Y
- *blank* (No Passphrase)
- gh_auth_login_ssh_key_YYYY-MM-DDTHH:MM:SSZ (A description and ISO 8601 time stamp)
- Paste an authentication token
	- https://github.com/settings/tokens
	- Generate new token
	- Scopes = ["repo", "read:org", "admin:public_key"]

<br>

### STEP_12: Copy configuration files to local machine
```
bash ~/tmp/autosetup/tmp/60_configs.sh
```
<br>

### STEP_13: Edit ~/.bashrc file and run `source ~/.bashrc`
For more details:
```
cat 65_manual.txt
```
<br>

### STEP_14: Install VSCodium
```
bash ~/tmp/autosetup/tmp/80_codium.sh
```
<br>

### STEP_15: Install an internet browser
```
bash ~/tmp/autosetup/tmp/90_browser.sh
```
<br>

### STEP_16: Restart the System
```
sudo shutdown -r now
```
<br>

### STEP_17: Setup internet browser(s)
For more details:
```
cat 95_manual.txt
```
<br>

### STEP_18: Delete local copy of this repository
```
bash ~/tmp/autosetup/tmp/99_del.sh
```
<br>
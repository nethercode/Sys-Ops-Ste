<!--
This document is a work-in-progress.
Last updated: 2023-10-04T02:57:00Z
-->

# The Big Book of Debian 
__Version 12.1.0 "bookworm" Release__  

This guide provides a step-by-step overview of my method for Debian installations. Its purpose is to streamline the process of performing fresh installs with consistency and efficiency. By following this document, you can quickly and reliably set up Debian on your system, ensuring a smooth and consistent experience every time.  

<br>

## Table of Contents
- [Installation](#installation)
    - [Prerequisites](#1-prerequisites)
    - [Debian GNU/Linux UEFI Install Menu](#2-debian-gnulinux-uefi-install-menu)
    - More...
- [Post-Install](#post-install)

<br>

##  Installation
### Major features: Graphical install, LVM, Xfce
As the first (and currently, only) method on the list, this section is intended to remain as a work-in-progress that is prone to change and it should be assumed that it will evolve over time to match my needs and reflect my level of expertise. Unless I fail to update this document, consider it likely reflects what I'm *actually* using on my PC(s).  

<br>

### 1. Prerequisites
The following list items and steps must be fulfilled prior to being able to begin the installation process.
- A computer
- Installation media
    - Balena's [Etcher](https://github.com/balena-io/etcher/releases/) or similar software
    - Debian [ISO](https://www.debian.org/distrib/) file
    - A  [USB flash drive](https://en.wikipedia.org/wiki/USB_flash_drive) of 1 GB or more
- Boot to system BIOS or UEFI menu
- Select 'UEFI: USB DISK 3.0 PMAP' (or similar 'UEFI' boot option)

<br>

> Note: 



<br>
<br>
<br>



### 2. Debian GNU/Linux UEFI Install menu

Select 'Graphical install' then `<Continue>`

```
Graphical install

Install

Advanced options...

    ...Graphical expert install
    ...Graphical rescue mode
    ...Graphical automated install
    ...Expert install
    ...Rescue mode
    ...Automated install

Accessible dark contrast installer menu...

    ...Graphical install
    ...Install
    ...Advanced options...

        ...Graphical expert install
        ...Graphical rescue mode
        ...Graphical automated install
        ...Expert install
        ...Rescue mode
        ...Automated install

Install with speech synthesis

Enter: Select       Esc: Back up one level
E: Edit Selection   C: GRUB Command line
```

<br>

> Note: 



<br>
<br>
<br>



### 3. Select a language
__Choose the language to be used for the installation process. The selected language will also be the default language for the installed system.__ 

<u>*Language:*</u>
- Select 'English - English' option from 'Language' list
- Click 'Continue' button || Press 'Enter'/'Return' keys

<br>

> Note: 



<br>
<br>
<br>



### 4. Select your location
__The selected location will be used to set your time zone and also for example to help select the system locale. Normally this should be the country where you live.__

__This is a shortlist of locations based on the language you selected. Choose "other" if your location is not listed.__  

<u>*Country, territory or area:*</u>
- Select 'United States' option from 'Country, territory or area' list
- Click 'Continue' button (or, press 'Enter'/'Return' key)

<br>

> Note: 

<br>
<br>
<br>



### 5. Configure the keyboard

<u>*Keymap to use:*</u>
- Select 'American English' option from 'Keymap to use' list

<br>

> Note: 

<br>
<br>
<br>



### 6. [INTERSTITIAL] Detect and mount installation media

<br>

> Note: *This takes place automatically.*

<br>
<br>
<br>



### 7. [INTERSTITIAL] Load installer components from installation media

<br>

> Note: *This takes place automatically.*

<br>
<br>
<br>



### 8. [INTERSTITIAL] Detect network hardware

<br>

> Note: *This takes place automatically.*

<br>
<br>
<br>



### 9a. [INTERSTITIAL] Configure the network (Wired Connection)
*Using Network Cable...*

<br>

> Note: *This takes place automatically.*



<br>
<br>
<br>



### 9b. Configure the network (Wireless Connection)
*Using Wi-Fi...*

- Select the wireless network name
- Select the wireless network type
- Enter the wireless network passphrase

<br>

> Note: A loading bar appears, begins, completes, and disappears without the need for user input or intervention.



<br>
<br>
<br>



### 10. Configure the network (Hostname)
__Please enter the hostname for this system.__

__The hostname is a single word that identifies your system to the network. If you don't know what your hostname should be, consult your network administrator. If you are setting up your own home network, you can make something up here.__

<u>*Hostname:*</u>
- Enter a system hostname

<br>

> Note: I use 'debian-desktop' or 'debian-laptop' as a hostname.



<br>
<br>
<br>



### 11. Configure the network (Domain name)

__The domain name is the part of your Internet address to the right of your host name. It is often something that ends in .com, .net, .edu, or .org. If you are setting up a home network, you can make something up, but make sure you can use the same domain name on all your computers.__  

<u>*Domain name:*</u>
- Enter a domain name

<br>

> Note: I leave the domain name blank.



<br>
<br>
<br>



### 12. Set up users and passwords (Root password)
__You need to set a password for 'root', the system administrative account. A malicious or unqualified user with root access can have disastrous results, so you should take care to choose a root password that is not easy to guess. It should not be a word found in dictionaries, or a word that could be easily associated with you.__

__A good password will contain a mixture of letters, numbers and punctuation and should be changed at regular intervals.__

__The root user should not have an empty password. If you leave this empty, the root account will be disabled and the system's initial user account will be given the power to become root using the "sudo" command.__

__Note that you will not be able to see the password as you type it.__  

<u>*Root password:*</u>

...

__Please enter the same root password again to verify that you have typed it correctly.__

<u>*Re-enter password to verify*</u>

...

<br>

> Note: Toggle the 'Show Password in Clear' to view the entered password in plain text.
- If using a root password:
    - Minimum length of 20
    - Uppercase letters
    - Lowercase letters
    - Non-sequential numbers
    - Special characters



<br>
<br>
<br>



### 13. Set up users and passwords (Full name)
__A user account will be created for you to use instead of the root account for non-administrative activities.__

__Please enter the real name of this user. This information will be used for instance as default origin for emails sent by this user as well as any program which displays or uses the user's real name. Your full name is a reasonable choice.__  

<u>*Full name for the new user:*</u>
- Enter a full name for the user account 

<br>

> I use "User" as a full name.



<br>
<br>
<br>



### 14. Set up users and passwords (Username)
__Select a username for the new account. Your first name is a reasonable choice. The username should start with a lower-case letter, which can be followed by any combination of numbers and more lower-case letters.__  

<u>*Username for your account*</u>
- Enter a username for the user account

<br>

> I use "user" as a username.



<br>
<br>
<br>



### 15. Set up users and passwords (User password)
__A good password will contain a mixture of letters, numbers and punctuation and should be changed at regular intervals.__  

<u>*Choose a password for the new user:*</u>

...

- Enter a password for the user account

> I use a password with minimum length of 12 characters.

Please enter the same user password again to verify you have typed it correctly.

<u>*Re-enter password to verify:*</u>

...

<br>

> Note: After entering the user account password, a loading bar appears, begins, completes, and disappears without the need for further user input or intervention.*

<br>
<br>
<br>



### 16. Configure the clock
__If the desired time zone is not listed, then please go back to the step "Choose language" and select a country that uses the desired time zone (the country where you live or are located).__  

<u>*Select your time zone:*</u>
- Select local time zone (Central)

<br>

> Note:

<br>
<br>
<br>



### 17. [INTERSTITIAL] Detect disks
*This takes place automatically.*

<br>

Note:

<br>
<br>
<br>



### 18. Partition disks (Partitioning method)
__The installer can guide you through partitioning a disk (using different standard schemes) or, if you prefer, you can do it manually. With guided partitioning you will still have a chance later to review and customise the results.__

__If you choose guided partitioning for an entire disk, you will next be asked which disk should be used.__  

<u>*Partitioning method*</u>
- Guided - use entire disk and set up LVM
- Select the target disk to partition

    *For me, this is usually the /dev/nvme0n1 disk.*

- Separate /home, /var, and /tmp partition
- Finish partitioning and write changes to disk
- Select "Yes" in response to "Write the changes to disk?"

<br>

> Note: 

<br>
<br>
<br>



### 19. Partition disks (Select disk to partition)
__Note that all data on the disk you select will be erased, but not before you have confirmed that you relaly want to make the changes.__  

<u>*Select disk to partition:*</u>
/dev/nvme0n1 - 512.1 GB INTEL SSDPEKNU512GZ
SCSI11 (0,0,0) (sda) - 15.5 GB USB Disk 3.0

<br>

> Note: 

<br>
<br>
<br>



### 20. Partition disks (Partitioning scheme)
Selected for partitioning:

/dev/nvme0n1 - INTEL SSDPEKNU512GZ: 512.1 GB

The disk can be partitioned using one of several different schemes. If you are unsure, choose the first one.  

<u>*Partitioning scheme:*</u>
- Select a partitioning scheme
    - All files in one partition (recommended for new users)
    - Separate /home partition
    - Separate /home, /var, and /tmp partitions

<br>

> Note: I choose to separate /home, /var, and /tmp partitions.

<br>
<br>
<br>



### 21. Partition disks (Confirm partitioning)
__Before the Logical Volume Manager can be configured, the current partitioning scheme has to be written to disk. These changes cannot be undone.__

__After the Logical Volume Manager is configured, no additional changes to the partitioning scheme of disks containing physical volumes are allowed during the installation. Please decide if you are satisfied with the current partitioning scheme before continuing.__

__The partition tables of the following devices are changed:__
__/dev/nvme0n1__  

<u>*Write the changes to disks and configure LVM?*</u>
- Select 'Yes' then 'Continue' button

<br>

> Note: 

<br>
<br>
<br>



### 22. Partition disks (Remove existing logical volume data)
__The selected device already contains the following LVM logical volumes, volume groups and physical volumes which are about to be removed:__

__Logical volume(s) to be removed: home, root, swap_1, tmp, var__

__Volume group(s) to be removed: debian-desktop-vg__

__Physical volume(s) to be removed: /dev/nvme0n1p3__

__Note that this will also permanently erase any data currently on the logical volumes.__  

<u>*Remove existing logical volume data?*</u>
- Select 'Yes' then 'Continue' button

<br>

> Note:

<br>
<br>
<br>



### 23. Partition disks (Amount of volume group to use)
You may use the whole volume group for guided partitioning, or part of it. If you use only part of it, or if you add more disks later, then you will be able to grow logical volumes later using the LVM tools, so using a smaller part of the volume group at installation time may offer more flexibility.

The minimum size of the selected partitioning recipe is 8.3 GB (or 1%); please note that the packages you choose to install may require more space than this. The maximum available size is 511.1 GB.

Hint: "max" can be used as a shortcut to specify the maximum size, or enter a percentage (e.g. "20%") to use that percentage of the maximum size.  

<u>*Amount of volume group to use for guided partitioning:*</u>
- Choose and enter an amount to partition then 'Continue' button

<br>

> Note: I typically choose "50%" for my system(s).

<br>
<br>
<br>



### 24. LOADING_BAR

<br>

> Note:

<br>
<br>
<br>



### 25. Partition disks (Confirm disk writing)

__If you continue, the changes listed below will be written to the disks Otherwise, you will be able to make further changes manually.__

__The partition tables of the following devices are changed:__<br>
__LVM VG debian-desktop-vg, LV home__<br>
__LVM VG debian-desktop-vg, LV root__<br>
__LVM VG debian-desktop-vg, LV swap_1__<br>
__LVM VG debian-desktop-vg, LV tmp__<br>
__LVM VG debian-desktop-vg, LV var__<br>

__The following partitions are going to be formatted:__<br>
__LVM VG debian-desktop-vg, LV home as ext4__<br>
__LVM VG debian-desktop-vg, LV root as ext4__<br>
__LVM VG debian-desktop-vg, LV swap_1 as swap__<br>
__LVM VG debian-desktop-vg, LV tmp as ext4__<br>
__LVM VG debian-desktop-vg, LV var as ext4__<br>
__partition #1 of /dev/nvme0n1 as ESP__<br>
__partition #2 of /dev/nvme0n1 as ext2__<br>

<u>*Write the changes to disks?*</u>
- Select 'Yes' then 'Continue' button

<br>

> Note:

<br>
<br>
<br>



### 26. LOADING_BAR

<br>

> Note: *This takes place automatically.*



<br>
<br>
<br>



### 27. Install the base system

<br>

> Note: *This takes place automatically.*



<br>
<br>
<br>



### 28. Configure the package manager (Archive mirror country)
__The goal is to find a mirrror of the Debian archive that is close to you on the network -- be aware that nearby countries, or even your own, may not be the best choice.__
<br>

<u>*Debian archive mirror country:*</u>
- Select 'United States' then 'Continue' button

<br>

> Note:



<br>
<br>
<br>



### 29. Configure the package manager (Archive mirror)
__Please select a Debian archive mirror. You should use a mirror in your country or region if you do not know which mirror has the best Internet connection to you.__

__Usually, deb.debian.org is a good choice.__  

<u>*Debian archive mirror*</u>
- Select 'deb.debian.org' (or other nearby mirror) then 'Continue' button

<br>

> Note:



<br>
<br>
<br>



### 30. Configure the package manager (HTTP proxy)
__If you need to use a HTTP proxy to access the outside world, enter the proxy information here. Otherwise, leave this blank.__

__The proxy information should be given in the standard form of "http://[[user][:pass]@]host]:port]/".__
<br>

<u>*HTTP proxy information (blank for none):*</u>
- Leave this field blank then 'Continue' button

<br>

> Note:



<br>
<br>
<br>



### 31. Configure the package manager (Loading bar)

<br>

> Note: *This takes place automatically.*

<br>
<br>
<br>



### 32. Select and install software (Loading bar 1/3)

<br>

> Note: *This takes place automatically.*

<br>
<br>
<br>



### 33. Configuring popularity-contest
__The system may anonymously supply the distribution developers with statistics about the most used packages on this system. This information influences decisions such as which packages should go on the first distribution CD.__

__If you choose to participate, the automatic submission script will run once every week, sending statistics to the distribution developers. The collected statistics can be viewed on https://popcon.debian.org/.__

__This choice can be later modified by running "dpkg-reconfigure popularity-contest".__  

<u>*Participate in the package usage survey?*</u>
    - Select 'No' then 'Continue' button

<br>

> Note:

<br>
<br>
<br>



### 34. Select and install software (Loading bar 2/3)

*This takes place automatically.*

<br>

> Note: *This takes place automatically.*



<br>
<br>
<br>



### 35. Software selection
__At the moment, only the core of the system is installed. To tune the system to your needs, you can choose to install one or more of the following predefined collections of software.__  

<u>*Choose software to install:*</u>
- Debian desktop environment
- ... GNOME
- ... Xfce
- ... GNOME Flashback
- ... KDE Plasma
- ... Cinnamon
- ... MATE
- ... LXDE
- ... LXQt
- web server
- SSH server
- standard system utilities
    - Select ["Debian desktop environment", "... Xfce", "standard system utilities"] then 'Continue' button

<br>

> Note:



<br>
<br>
<br>



### 36. Select and install software (Loading bar 3/3)

<br>

> Note: *This takes place automatically.*



<br>
<br>
<br>



### 37. Finish the installation
*Installation complete* 

__Installation is complete, so it is time to boot into your new system. Make sure to remove the installation media, so that you boot into the new system rather than restarting the installation.__

__Please choose `<Continue>` to reboot.__  

- Remove installation media
- Click `<Continue>` button
- Allow system to reboot

<br>

> Note:



<br>
<br>
<br>



### 38. Finish the installation (Loading bar)

<br>

> Note: 



<br>
<br>
<br>



## Debian Install (Simple)
```
01a PREQUISITES

02a SYSTEM BIOS/UEFI INTERFACE:
    Open 'Save & Exit' tab
    Navigate to "Boot Override" menu
    Find "UEFI: USB DISK 3.0 PMAP" option
    Double-click action

03a WAIT

04a UEFI INSTALLER: 
    Select "Graphical Install" option
    Press "Enter"/"Return" Key

05a SELECT A LANGUAGE:
    Select "English - English" Option
    Click <Continue> button

06a SELECT YOUR LOCATION:
    Select "United States" option
    Click <Continue> button

07a CONFIGURE THE KEYBOARD:
    Select "American English" option
    Click <Continue> button

08a DETECT AND MOUNT INSTALLATION MEDIA (Loading Bar)
09a LOAD INSTALLER COMPONENTS FROM INSTALLATION MEDIA (Loading Bar)
10a DETECT NETWORK HARDWARE (Loading Bar)

11a CONFIGURE THE NETWORK (Loading Bar)

12a CONFIGURE THE NETWORK (Network Interface): <SELECT_NETWORK_INTERFACE>
                                                Cable: Automatic
                                                Wi-Fi: Select Network SSID
                                                        -> Enter Network Type
                                                        -> Enter passphrase

13a CONFIGURE THE NETWORK (Hostname): <ENTER_HOSTNAME> ("debian-desktop)
14a CONFIGURE THE NETWORK (Domain name): *blank*

15a SET UP USERS AND PASSWORDS (Root password): *blank* -> <Continue> button
16a SET UP USERS AND PASSWORDS (Full name): <ENTER_FULL_NAME> ("User") -> <Continue> button
17a SET UP USERS AND PASSWORDS (Username): <ENTER_USERNAME> ("user") -> <Continue> button
18a SET UP USERS AND PASSWORDS (User password): <ENTER_USER_PASSWORD> -> <Continue> button

19a CONFIGURE THE CLOCK (Loading Bar)
20a CONFIGURE THE CLOCK (Time zone): 'Central' option -> <Continue> button

21a DETECT DISKS (Loading Bar)
22a PARTITION DISKS (Loading Bar)
23a PARTITION DISKS (Partitioning method): 'Guided - use entire disk and set up LVM' option -> <Continue> button
24a PARTITION DISKS (Select disk): '/dev/nvme0n1 - 512.1 GB INTEL SSDPEKNU512GZ' option -> <Continue> button
25a PARTITION DISKS (Partitioning scheme): 'Separate /home, /var, and /tmp partitions' option -> <Continue> button
26a PARTITION DISKS (Remove existing LV data): 'Yes' option -> <Continue> button
27a PARTITION DISKS (Loading Bar)
28a PARTITION DISKS (Write the changes and configure): 'Yes' option -> 'Continue' button
29a PARTITION DISKS (Loading Bar)
30a PARTITION DISKS (Amount of volume group): Enter '50%' -> <Continue> button
31a PARTITION DISKS (Loading Bar)
32a PARTITION DISKS (Confirm to write changes): 'Yes' option -> <Continue> button
33a PARTITION DISKS (Loading Bar)

34a INSTALL THE BASE SYSTEM (Loading Bar)

35a CONFIGURE THE PACKAGE MANAGER (Mirror country): 'United States' option -> <Continue> button
36a CONFIGURE THE PACKAGE MANAGER (Archive mirror): 'deb.debian.org' option -> <Continue> button
37a CONFIGURE THE PACKAGE MANAGER (Proxy): *blank*

38a CONFIGURE THE PACKAGE MANAGER (Loading Bar)
39a SELECT AND INSTALL SOFTWARE (Loading Bar)

40a CONFIGURING POPULARITY-CONTEST: 'No' option -> <Continue> button

41a SELECT AND INSTALL SOFTWARE (Loading Bar)

42a SOFTWARE SELECTION: ["Debian Desktop Environment", "Xfce", "Standard System Utilities"] options -> <Continue> button

43a SELECT AND INSTALL SOFTWARE (Loading Bar)
44a INSTALL THE GRUB BOOT LOADER (Loading Bar)
45a FINISH THE INSTALLATION (Loading Bar)

46a FINISH THE INSTALLATION: Remove installation media -> <Continue> button

47a FINISH THE INSTALLATION (Loading Bar)

```

<br>

```
# apt install -y neofetch

$ neofetch
        user@debian-desktop
        -------------------
        OS: Debian GNU/Linux 12 (bookworm) x86_64
        Host: B450 DS3H
        Kernel: 6.1.0-12-amd64
        Uptime: 45 mins
        Packages: 1326 (dpkg)
        Shell: bash 5.2.15
        Resolution: 3440x1440, 1920x1080
        DE: Xfce 4.18
        WM: Xfwm4
        WM Theme: Default
        Theme: Xfce [GTK2]
        Icons: Tango [GTK2]
        Terminal: xfce4-terminal
        Terminal Font: Monospace 12
        CPU: AMD Ryzen 5 5600G with Radeon Graphics (12) @ 3.900GHz
        GPU: AMD ATI Radeon Vega Series / Radeon Vega Mobile Series
        Memory: 753MiB / 15386MiB

$ neofetch
        user@debian-laptop
        ------------------
        OS: Debian GNU/Linux 12 (bookworm) x86_64
        Host:
        Kernel: 6.1.0-12-amd64
        Uptime:    mins
        Packages: 1326 (dpkg)
        Shell: bash 5.2.15
        Resolution: 1920x1200
        DE: Xfce 4.18
        WM: Xfwm4
        WM Theme: Default
        Theme: Xfce [GTK2]
        Icons: Tango [GTK2]
        Terminal: xfce4-terminal
        Terminal Font: Monospace 12
        CPU:
        GPU:
        Memory:    MiB /      MiB
```

<br>
<br>
<br>

## Post-Install
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
Optional: Skip to [STEP_06](#step_06-make-sudo-passwordless)
```
Organize desktop icons alphabetically:
	[
		"File System",
		"Home",
		"Trash"
	]

Change appearance to Adwaita-dark:
	Applications menu
		-> Settings
		-> Appearance
		-> Style
		-> Set matching Xfwm4 theme if there is one
		-> Adwaita-dark
		-> Close

For multi-monitor systems, align displays:
	Applications menu
		-> Settings
		-> Display
		-> Align
		-> Apply
		-> Keep this configuration
		-> Close

For multi-monitor systems, move panels:
		-> Right click
		-> Panel
		-> Panel Preferences...
			-> Panel 1
				-> Lock panel
				-> Click and Drag
				-> Lock Panel
			-> Panel 2
				-> Lock panel
				-> Click and Drag
				-> Lock Panel

Change number of workspaces to (2):
	Applications
		-> Settings
		-> Workspaces
		-> Layout
		-> Number of Workspaces
		-> Reduce to 2
		-> Close

Setup Firefox browsing environment
	Applications
		-> Internet
		-> Firefox ESR
		-> Sign in
			-> Verify
			-> Activate
		-> Save to Pocket icon
			-> Remove from Toolbar
		-> Bookmarks Toolbar
			-> Always Show
		-> Import bookmarks...
			-> Remove from Toolbar
		-> "Getting Started" bookmark
			-> Delete Bookmark

If applicable, add wireless network connections
	Wi-Fi Networks
		-> Available networks
		-> Select SSID
		-> Enter password

Set Mousepad as default for .csv
Set Mousepad as default for .md
Set Mousepad as default for .sh
Set Mousepad as default for .txt
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
SSH key is saved to ~/.ssh/ as id_ed*.pub
<br>

### STEP_12: Copy configuration files to local machine
```
bash ~/tmp/autosetup/tmp/60_configs.sh
```
<br>

### STEP_13: Edit ~/.bashrc file and run `source ~/.bashrc`
```
nano ~/.bashrc
```
Change PS1 variable on Line 60 in ~/.bashrc as follows: `PS1='\w\$ '`
```
source ~/.bashrc
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

### STEP_17: Delete local copy of this repository
```
bash ~/tmp/autosetup/tmp/99_del.sh
```
<br>

### STEP_18: Setup internet browser(s)
```
Brave
	1. Default browser prompt
		-> Skip (Do not set Brave as default browser)
	1b. Import Settings prompt
		-> Skip
	2. Dark mode
	3. Uncheck "Send diagnostic reports if you experience a crash or freeze."
	4. Uncheck "Share completely private and anonymous product insights about what features are being used by Brave's users."
	5. Finish
	6. Hide Brave Rewards icon
	7. Hide Brave Wallet icon
	8. Select No Thanks for Brave News
	9. Customize -> Background Image -> Show Sponsored Images -> Toggle OFF
	10. Customize -> Brave Stats -> Show Brave Stats -> Toggle OFF
	11. Customize -> Top Sites -> Top Sites -> Toggle OFF
	12. Customize -> Clock -> Format -> 24-hour clock
	13. Customize -> Cards -> Cards -> Toggle OFF
	14. Customize -> Cards -> Brave Talk -> Hide
	15. Customize -> Cards -> Brave Rewards -> Hide
	16. Menu (Customize and control Brave) -> Settings -> Appearance -> Show home button -> Toggle ON
	17. Menu (Customize and control Brave) -> Settings -> Extensions -> Webstore
	18. Add extensions: `Autosetup/md/Browser_Extensions.md`

Chrome
	1. Uncheck boxes for "Make default browser" and "Automatically send usage statistics and crash reports to Google" options
	2. (If applicable)"Already a Chrome user? Sign in"
	3. Email or Phone -> Password -> Log in
	4. "Turn on sync" alert/prompt -> "Yes, I'm in"
	5. Wait for operations to complete
	6. "Set Chrome as your default browser" page -> "Skip"

Vivaldi
	1.
```
<br>

### STEP_19: Create `~/AppImages` directory
```
mkdir ~/AppImages
```
<br>

### STEP_20: Install FUSE (Filesystem in Userspace)
```
sudo apt install -y fuse
```
<br>

### STEP_21: Download Bitwarden AppImage
- Bitwarden's Download [Page](https://bitwarden.com/download/)
- Direct Download [Link](https://vault.bitwarden.com/download/?app=desktop&platform=linux)

Using curl ("cURL" or "client URL"):
```
curl -L -o ~/AppImages/Bitwarden-Desktop.AppImage "https://vault.bitwarden.com/download/?app=desktop&platform=linux"
```
- `-L`: Follow redirects if the URL redirects to another location.
- `-o Bitwarden-Desktop.AppImage`: Save the downloaded file with the specified name (Bitwarden-Desktop.AppImage in this case).
- The URL is enclosed in double quotes.

Using wget ("Wget" or "Web Get"):
```
wget "https://vault.bitwarden.com/download/?app=desktop&platform=linux" -O ~/AppImages/Bitwarden-Desktop.AppImage
```
- `-O Bitwarden-Desktop.AppImage`: Save the downloaded file with the specified name (Bitwarden-Desktop.AppImage in this case).
- The URL is enclosed in double quotes.
<br>

### STEP_22: Set execute permissions for Bitwarden AppImage
```
chmod a+x ~/AppImages/Bitwarden-Desktop.AppImage
```
<br>

### STEP_23: Install `nautilus` to enable Android device mounting for data transfer

```
sudo apt install -y nautilus

```
*The `gvfs` package may also be required. Untested at time of writing.*
Optional: Install `gnome-disk-utility`
```
sudo apt install -y gnome-disk-utility
```

### STEP_??: Install `vim` at some point because it's better than `emacs`
```
sudo apt install -y vim
```

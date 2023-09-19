# Installation Guide for Debian
__Version 12.1.0 "bookworm" Release__  

This guide provides a step-by-step overview of my method for Debian installations. Its purpose is to streamline the process of performing fresh installs with consistency and efficiency. By following this document, you can quickly and reliably set up Debian on your system, ensuring a smooth and consistent experience every time.  

<br>
<br>
<br>











##  The Standard Install
### Major points: Graphical install, LVM, Xfce
As the first (and currently, only) method on the list, this section is intended to remain as a work-in-progress that is prone to change and it should be assumed that it will evolve over time to match my needs and reflect my level of expertise. Unless I fail to update this document, consider it likely reflects what I'm *actually* using on my PC(s).  

<br>
<br>
<br>











### 1. Prerequisites
The following list items and steps must be fulfilled prior to being able to begin the installation process.
- Create installation media
    - Balena's [Etcher](https://github.com/balena-io/etcher/releases/)
    - Debian [ISO](https://www.debian.org/distrib/) file
    - [USB flash drive](https://en.wikipedia.org/wiki/USB_flash_drive)
- Boot to system BIOS or UEFI menu
- Select 'UEFI: USB DISK 3.0 PMAP' (or similar 'UEFI' boot option)

<br>

> Section Note: 

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

> Section Note: 

<br>
<br>
<br>











### 3. Select a language
__Choose the language to be used for the installation process. The selected language will also be the default language for the installed system.__ 

<u>*Language:*</u>
- Select 'English - English' option from 'Language' list
- Click 'Continue' button || Press 'Enter'/'Return' keys

<br>

> Section Note: 

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

> Section Note: 

<br>
<br>
<br>











### 5. Configure the keyboard

<u>*Keymap to use:*</u>
- Select 'American English' option from 'Keymap to use' list

<br>

> Section Note: 

<br>
<br>
<br>











### 6. [INTERSTITIAL] Detect and mount installation media

<br>

> Section Note: *This takes place automatically.*

<br>
<br>
<br>











### 7. [INTERSTITIAL] Load installer components from installation media

<br>

> Section Note: *This takes place automatically.*

<br>
<br>
<br>











### 8. [INTERSTITIAL] Detect network hardware

<br>

> Section Note: *This takes place automatically.*

<br>
<br>
<br>











### 9a. [INTERSTITIAL] Configure the network (Wired Connection)
*Using Network Cable...*

<br>

> Section Note: *This takes place automatically.*

<br>
<br>
<br>











### 9b. Configure the network (Wireless Connection)
*Using Wi-Fi...*

- Select the wireless network name
- Select the wireless network type
- Enter the wireless network passphrase

<br>

> Section Note: A loading bar appears, begins, completes, and disappears without the need for user input or intervention.

<br>
<br>
<br>











### 10. Configure the network (Hostname)
__Please enter the hostname for this system.__

__The hostname is a single word that identifies your system to the network. If you don't know what your hostname should be, consult your network administrator. If you are setting up your own home network, you can make something up here.__

<u>*Hostname:*</u>
- Enter a system hostname

<br>

> Section Note: I use 'debian-desktop' or 'debian-laptop' as a hostname.

<br>
<br>
<br>











### 11. Configure the network (Domain name)

__The domain name is the part of your Internet address to the right of your host name. It is often something that ends in .com, .net, .edu, or .org. If you are setting up a home network, you can make something up, but make sure you can use the same domain name on all your computers.__  

<u>*Domain name:*</u>
- Enter a domain name

<br>

> Section Note: I leave the domain name blank.

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

    If a root password is used, it is strongly recommend to use a password with a minimum length of 20 that includes all of the following:
    Uppercase letters
    Lowercase letters
    Non-sequential numbers
    Special characters

Please enter the same root password again to verify that you have typed it correctly.

<u>*Re-enter password to verify*</u>

...

<br>

> Section Note: Toggle the 'Show Password in Clear' to view the enter password in plain text.

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

> Section Note: After entering the user account password, a loading bar appears, begins, completes, and disappears without the need for further user input or intervention.*

<br>
<br>
<br>











### 16. Configure the clock
__If the desired time zone is not listed, then please go back to the step "Choose language" and select a country that uses the desired time zone (the country where you live or are located).__  

<u>*Select your time zone:*</u>
- Select local time zone (Central)

<br>

> Section Note:

<br>
<br>
<br>











### 17. [INTERSTITIAL] Detect disks
*This takes place automatically.*

<br>

Section Note:

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

> Section Note: 

<br>
<br>
<br>











### 19. Partition disks (Select disk to partition)
__Note that all data on the disk you select will be erased, but not before you have confirmed that you relaly want to make the changes.__  

<u>*Select disk to partition:*</u>
/dev/nvme0n1 - 512.1 GB INTEL SSDPEKNU512GZ
SCSI11 (0,0,0) (sda) - 15.5 GB USB Disk 3.0

<br>

> Section Note: 

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

> Section Note: I choose to separate /home, /var, and /tmp partitions.

<br>
<br>
<br>











### 21. Partition disks (Confirm to write the changes)
__Before the Logical Volume Manager can be configured, the current partitioning scheme has to be written to disk. These changes cannot be undone.__

__After the Logical Volume Manager is configured, no additional changes to the partitioning scheme of disks containing physical volumes are allowed during the installation. Please decide if you are satisfied with the current partitioning scheme before continuing.__

__The partition tables of the following devices are changed:__
__/dev/nvme0n1__  

<u>*Write the changes to disks and configure LVM?*</u>
- Select 'Yes' then 'Continue' button

<br>

> Section Note: 

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

> Section Note:

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

> Section Note: I typically choose "50%" for my system(s).

<br>
<br>
<br>











### 24. LOADING_BAR

<br>

> Section Note:

<br>
<br>
<br>











### 25. Partition disks (Confirm to write the changes)

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

> Section Note:

<br>
<br>
<br>











### 26. LOADING_BAR

<br>

> Section Note: *This takes place automatically.*

<br>
<br>
<br>











### 27. Install the base system

<br>

> Section Note: *This takes place automatically.*

<br>
<br>
<br>











### 28. Configure the package manager (Archive mirror country)
__The goal is to find a mirrror of the Debian archive that is close to you on the network -- be aware that nearby countries, or even your own, may not be the best choice.__
<br>

<u>*Debian archive mirror country:*</u>
- Select 'United States' then 'Continue' button

<br>

> Section Note:

<br>
<br>
<br>











### 29. Configure the package manager (Archive mirror)
__Please select a Debian archive mirror. You should use a mirror in your country or region if you do not know which mirror has the best Internet connection to you.__

__Usually, deb.debian.org is a good choice.__  

<u>*Debian archive mirror*</u>
- Select 'deb.debian.org' (or other nearby mirror) then 'Continue' button

<br>

> Section Note:

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

> Section Note:

<br>
<br>
<br>











### 31. Configure the package manager (Loading bar)

<br>

> Section Note: *This takes place automatically.*

<br>
<br>
<br>











### 32. Select and install software (Loading bar 1/3)

<br>

> Section Note: *This takes place automatically.*

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

> Section Note:

<br>
<br>
<br>











### 34. Select and install software (Loading bar 2/3)

*This takes place automatically.*

<br>

> Section Note: *This takes place automatically.*

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

> Section Note:

<br>
<br>
<br>











### 36. Select and install software (Loading bar 3/3)

<br>

> Section Note: *This takes place automatically.*

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

> Section Note:

<br>
<br>
<br>











### 38. Finish the installation (Loading bar)

<br>

> Section Note: 

<br>
<br>
<br>











```
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

01
'Graphical install'
    -> 'Enter'/'Return' key (Select)

02
'English - English'
    -> 'Continue' button || 'Enter'/'Return' key

03
'American English'
    -> 'Continue' button || 'Enter'/'Return' key

04
Automatic

05
Automatic

06
Automatic

07
Cable: Automatic
Wi-Fi:
Select Network SSID
    -> Enter Network Type
    -> Enter passphrase

'Central'
    -> 'Continue' button || 'Enter'/'Return' key

08

09

10

11

12

13

14

15

16

17

18

19

20

21

22

23

24

25

26

27

28

29

30

31

32

33

34

35

36

37

38

39

40
```











<br>
<br>
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
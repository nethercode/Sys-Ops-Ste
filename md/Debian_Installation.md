# Debian Install Guide
This guide provides a step-by-step overview of my method for Debian installations. Its purpose is to streamline the process of performing fresh installs with consistency and efficiency. By following this document, you can quickly and reliably set up Debian on your system, ensuring a smooth and consistent experience every time.
## Method_01: The "Standard"
### Major points: Graphical install, Wi-Fi, Entire disk, No LVM, Xfce
As the first method on the list, this section is intended to remain as a work-in-progress that is prone to change and it should be assumed that it will evolve over time to match my needs and reflect my level of expertise. Unless I fail to update this document, consider it likely reflects what I'm *actually* using on my PCs.
#### Step_01: Debian GNU/Linux UEFI Install menu
- Graphical install
#### Step_02: Select a language
- English - English
#### Step_03: Select your location
- United States
#### Step_04: Configure the keyboard
- American English
#### Interstitial_Step: Detect and mount installation media
*This takes place automatically.*
#### Interstitial_Step: Load installer components from installation media
*This takes place automatically.*
#### Interstitial_Step: Detect network hardware
*This takes place automatically.*
#### Step_05: Configure the network
*Using Wi-Fi...*
- Select the wireless network name
- Select the wireless network type
- Enter the wireless network passphrase

    *A loading bar appears, begins, completes, and disappears without the need for user input or intervention.*

- Enter a system hostname
- Enter a domain name

    *In general, I use a hostname such as "debian-desktop" or "debian-laptop" and leave the domain name blank.*
#### Step_06: Set up users and passwords
- Enter a root password

    *For the root password, I use a password with a minimum length of 20 that includes all of the following:
        
        Uppercase letters
        Lowercase letters
        Non-sequential numbers
        Special characters
    
- Enter a full name for the user account
- Enter a username for the user account
- Enter a password for the user account

    *For the user account, my default choices are as follows:*

        Full name: "User"
        Username: "user"
        Password: Minimum length of 12

    *After entering the user account password, a loading bar appears, begins, completes, and disappears without the need for user input or intervention.*

#### Step_07: Configure the clock
- Select local time zone

#### Step_08: Partition disks
- Guided - use entire disk
- Select the target disk to partition

    *For me, this is usually the /dev/nvme0n1 disk.*

- Separate /home, /var, and /tmp partition
- Finish partitioning and write changes to disk
- Select "Yes" in response to "Write the changes to disk?"

#### Step_09: Configure the package manager
- Debian archive mirror country: United States
- Debian archive mirror: deb.debian.org
- HTTP proxy information: *blank*

    *Loading bar screen for "Select and install software" appears, begins, completes, and disappears without the need for user input or intervention.*

#### Step_10: Configuring popularity-contest
- Participate in the package usage survey?
    - No

    *Loading bar screen for "Select and install software" appears, begins, completes, and disappears without the need for user input or intervention.*

#### Step_11: Software selection
- Choose software to install:
    - Debian desktop environment
    - Xfce
    - standard system utilities

    *Loading bar screen for "Select and install software" appears, begins, completes, and disappears without the need for user input or intervention.*

#### Step_12: Finish the installation
- Remove the installation media
- Select <Continue> button
- The system will reboot
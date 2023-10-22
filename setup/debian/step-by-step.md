install debian on a host  
log in with username and password  
open terminal emulator

`# apt update && sudo apt install -y git`  
> *(input the sudo password when prompted)*  

`$ mkdir -p ~/vsc/stg/sys-ops-ste/`
`$ git clone https://github.com/nethercode/sys-ops-ste ~/vsc/stg/sys-ops-ste`  
`$ cd ~/vsc/stg/sys-ops-ste/setup/debian/`  

`$ bash 02_nopasswd.bash`  

`$ bash 03_git.bash`  
> Enter Git username:  
> Enter Git email:  
> Enter Git default branch:  

`$ bash 04_vscodium.bash`  

`$ bash 06_gh.bash`  

`$ bash 07_aliases.bash`  

`$ bash 08_vimrc.bash`

`$ cat 09_prompt.md`  

`$ bash 10_reboot.bash`
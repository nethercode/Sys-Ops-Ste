// User: <user>
// Password: <password>

// *Desktop loads*

// Insert Flash Drive -> Make Mousepad default for these kinds of files:
// .md
// .csv
// .txt
// .sh && .bash

// 01_nopasswd.bash

// 02_git.bash

// 03_editor.bash
// Start (Applications -> Development -> VSCodium) -> Uncheckmark "Show welcome page on startup"
// VSCodium -> Explorer -> Open Folder -> ~/vsc/stg/ -> Checkmark "Trust the authors of all files in the parent folder 'vsc'" -> Mouseclick (or, Keystroke [Tab, Tab, Enter]) "Yes, I trust the authors"

// 04_vivaldi-stable.bash
//
// Set as default browser

// 05_gh.bash
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
*SSH key is saved to ~/.ssh/ as id_ed-----.pub*

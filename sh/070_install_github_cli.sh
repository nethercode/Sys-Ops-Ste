type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

<<COMMENT

> GitHub.com
> SSH
> Y
> gh_cli_ssh_key_yyyymmdd
> Paste an authentication token 
-> https://github.com/settings/tokens
-> Generate new token
-> Scopes = ["repo", "read:org", "admin:public_key"]

git config --global user.name "datashroud"
git config --global user.email "free-software-user@proton.me"
git config -l

git clone git@github.com:Username/Repository
cd Repository
git add .
git commit -m "Create README.md"
git push

COMMENT




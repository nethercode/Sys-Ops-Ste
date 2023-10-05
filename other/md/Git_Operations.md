### Clone an existing repository
```
git clone git@github.com:Username/*
```

### View log
```
git log # Show full log
git log -n 3 # Show previous three (3) logs
```

### Routine add, commit, and push
```
git add .
git commit -m "Message"
git push

```
### Create new local repository
```
mkdir * && cd *
git init
```

### Create and push to new remote
```
gh repo create * --public
git remote add origin git@github.com:Username/*
git push --set-upstream origin main
```
### Set up new GitHub repository
```
mkdir -p ~/vsc/stg/CS50
cd ~/vsc/stg/CS50
gh repo create CS50 --public
git init
echo "# Harvard CS50" >> README.md
git add .
git commit -m "Init"
git remote add origin git@github.com:Nethercode/CS50
git push --set-upstream origin main
```
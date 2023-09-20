### Clone an existing repository
```
git clone git@github.com:Username/*
```

### Create new local repository
```
mkdir * && cd *
git init
```

### Routine add, commit, and push
```
git add .
git commit -m "Message"
git push
```

### Create and push to new remote
```
gh repo create * --public
git remote add origin git@github.com:Username/*
git push --set-upstream origin main
```

git clone git@github.com:Username/Repository
cd Repository
# 
# *Make some changes to tracked files within the repository*
# ( . . . )
# 
# git add . && git commit -m "Commit message goes here"
# -OR-
# git commit -am "Commit message goes here"
# git push


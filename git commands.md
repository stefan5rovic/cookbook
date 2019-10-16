- touch `<file>` - makes file
- git config --global user.name 'Stefan Petrovic'
- git config --global user.email 'stefan5rovic@gmail.com'
---
- git init - initialize git repository
- git status
---
- git add `<file>` - adds changes to staging area
- git add . - add all files to staging area
- git rm --cached `<file>` - untrack file
- git commit -m 'commit message'
---
.gitignore
>log.txt
>
>*.app
>
>/directory
---
- git branch `<name>` - creates new branch
- git checkout `<name>` - switch to a named branch
- git merge `<name>` - merging named branch to master branch (from master)
---
- git remote - lists remote repositories 
- git remote add `<name>` `<URL>` - adds remote repository
- git push -u `<remote_name>` `<branch_name>`
- git push
- git clone `<URL>`
- git pull

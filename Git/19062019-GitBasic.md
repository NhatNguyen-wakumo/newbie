# Git Basic using
# 19.06.2016

## Git Config

```
git config --global user.email "nhatnguyen@wakumo.vn"
git config --global user.name "Nhat Nguyen"
```
## Create Git repository

```
git init
```

## Adding a text to Git

```
git add 
git add BasicGit.txt
```

## Use Git clone to check out the repository 

```
git clone
```
## Using Git branch

```
git branch 
```
### To create a new branch

```
git branch <name_branch>
```
### To move and create a new branch 

```
git branch -b <name_branch>
```
### To change the branch
```
git checkout <name_branch>
```
## To update
```
git add .
```
## Update to the sever
```
git push origin <name_branch>
```
## To merge the branch
```
git checkout master
git merge <new_branch>

```
## History of the Commit
```
git log
```
## Check before push
```
git diff
```

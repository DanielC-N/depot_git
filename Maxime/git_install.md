# Git install Tutorial
## Step by step guide for the people

### Git 

~~~bash
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
git config --global core.editor nano
~~~

### SSH config
~~~bash
ssh-keygen -t rsa -b 4096 -C "email@ei.com" -f ~/.ssh/filename -N "password"
ssh-add ~/.ssh/filename
eval "$(ssh-agent -s)"
clip < ~/.ssh/filename.pub
~~~
### Local git Init

~~~bash
$git init
$git add .
$git commit -am "commentary"
$git branch -M main
$git remote add git@github.com
$git push -u origin main
~~~
**Do not Force your way in with a '--force'. This command would rarely result in something great**

### Useful Git Commands

**HEAD** : The term HEAD refers to the current commit you are viewing. By default, you'll view the tip of the master branch on a repository, unless the main branch of your repository has a different name. The tip of the master branch is the most recent commit on the main branch of your codebase

**git stash** : Revert all changes to match the HEAD, but will save modification in a "Stash". Stash can then be listed, and merged, or be further modified, or deleted. 

Stash - TLDR : Saves uncommited for later use

~~~bash
git branch -r #get online branches
git stash
git clear
# delete remote branch
git push origin -d "branch name"
~~~

### Interaction Tickets
to interact with ticket number 10
~~~bash
git commit -m "#10 blabla /spent 30m"
git push
~~~
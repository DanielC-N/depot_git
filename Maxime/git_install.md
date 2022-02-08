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

~~~bash
git branch -r #get online branches
git stash
git clear
~~~
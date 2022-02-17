# Git install Tutorial
## Step by step guide for John

> Our friend, the most well known unknown John Doe, wants to work on his github repo in commandline (Why John ???)
> 
> YOU, as an EXPERT git hub Repo SETUPPER, will be helping John in setting up his local repo and link it to his online repo

### Git 

>First, we will setup his git environment with git config
> John's username is Jdoe
> His email is jdoeARKANSAS@not.an.email.com
> He wants to use vim as his editor even tho he never used a command line before, nor did he use linux (Yes, he is dangerous for mankind)

<details> <summary>If you don't know the answer click here</summary>

~~~bash
git config --global user.name "JDoe"
git config --global user.email johndoe@example.com
git config --global core.editor vim
~~~
</details>

### SSH config

>After setting up the git environment, we will create an SSH key, to link it to John Git account.
>
> Fortunately, John knows how to add the key to his account after snooping around, hence you just have to know how to make an ssh Key
> and John will add it to his account

<details>
<summary>If you still don't know (which is WEIRD because it's supposed to be your JOB)</summary>

~~~bash
ssh-keygen -t rsa -b 4096 -C "email@ei.com" -f ~/.ssh/filename -N "password"
ssh-add ~/.ssh/filename
eval "$(ssh-agent -s)"
ssh -T git@github.com
clip < ~/.ssh/filename.pub
~~~

</details>

### Local git Init

> EVERYTHING IS CONNECTED
> 
> Except maybe your computer to an ACTUAL repo. So now you will create a repo, and then link this local repo to 
> an upstream repo on github

<details> <summary>As an expert GITHUB REPO MAKER you probably don't NEED this cheat sheet riiiiight ???</summary>

~~~bash
$git init
$git add .
$git commit -am "commentary"
$git branch -M main
$git remote add git@github.com
$git push -u origin main
~~~
**Do not Force your way in with a '--force'. This command would rarely result in something great**


</details>

### Useful Git Commands

> Now everything is truly connected. You may give some advices to John about commands and vocabulary that he could use in his every day life when using a COMMAND LINE VERSION of git. 


<details> <summary> Are you really going to cheat 'TIL THE END ?????????</summary>

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

#### Interaction Tickets
to interact with ticket number 10
~~~bash
git commit -m "#10 blabla /spent 30m"
git push
~~~


</details>
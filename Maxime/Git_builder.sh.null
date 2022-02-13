#!/bin/bash
[ ! "$(ls -1 -a |grep "~/.ssh")" != "" ] && mkdir ~/.ssh


if [ $1 == "" ] || [ $2 == "" ] || [ $3 == "" ]; then
    email=$1
    filename=$2
    password=$3
    ssh-keygen -t rsa -b 4096 -C "$email" -f "~/.ssh/$filename" -N "$password"
    eval "$(ssh-agent -s)"
    ssh-add "~/.ssh/$filename"
    cat "~/.ssh/$filename.pub"
else
  echo "No enough infos. Use txt file"
fi

#!/bin/bash
if [ $1 == "" ]; then
  echo -n "Input the script you want to start "
  read opt
else
  opt=$1;
fi
case $COUNTRY in

  GPB)
    echo -n "Starting GPUSH Boosted"
    source "./GIT_PUSH_BOOSTED.sh"
    ;;

  "Git Creator" | GC)
    echo -n "Starting Git Creator"
    looper=true
    while [ looper == true ]; do
        echo -n "Enter your email address"
        read email
        echo -n "Enter your file name (ie : GitHub)"
        read filename
        echo -n "Enter you ssh passphrase (REMEMBER IT)"
        read passphrase
        echo -n "Summary :"
        echo -n "Your email should be : $email"
        echo -n "Your file name will be : $filename"
        echo -n "Your passphrase should be : $passphrase"
        echo -n "Is it all correct ? Y(es)/N(o) - anything else will STOP the installer"
        read yn
        if [ $yn == "Y" ] || [ $yn == "y" ] || [ $yn == "Yes" ] || [ $yn == "yes" ]; then
            looper=false
            source "./Git_builder.sh" $email $filename $passphrase
        elif [ $yn == "N" ] || [ $yn == "n" ] || [ $yn == "No" ] || [ $yn == "no" ]; then
            looper=true
        else
          looper=false
        fi
    done

    ;;
  *)
    echo -n "This is Not accepted as a command. Do you want to display the commands ?"
    echo -n "(enter 'y' for yes, anything else for no.)"
    read yn
    if [ $yn == "Y" ] || [ $yn == "y" ] || [ $yn == "Yes" ] || [ $yn == "yes" ]; then
        cat cmd.txt
    fi
    ;;
esac

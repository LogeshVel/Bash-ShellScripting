#!/bin/bash

# This script checks whether the command is exists or not. If exists then run that command else install that cmd and run
# For this demonstration purpose I have used htop cmd

# Also note that for every command there will be a bin file in /usr/bin.
# we can check that by using "which <cmd>"
# So at the end we can conclude that the cmd existence can be determined by the presence of the bin file

cmd=/usr/bin/htop

if [ -f $cmd ] # if we want to check the presence of the dir then give -d
then
    echo "htop exists."
else
    echo "htop doesn't exists. Installing"
    echo
    sudo apt update && sudo apt  install -y htop
    echo
    echo "Installed htop"
fi

echo
echo "Starting the htop.."
sleep 2

$cmd

# Another way to do this

# program=htop
# if command -v htop
# then
#     echo "htop exists."
# else
#     echo "$program doesn't exists. Installing"
#     echo
#     sudo apt update && sudo apt  install -y $program
#     echo
#     echo "Installed htop"
# fi
# echo
# echo "Starting the htop.."
# sleep 2

# $program

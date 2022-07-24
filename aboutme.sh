#!/bin/bash

# This script is used to tell about the user who runs this script

echo "Your name is $(whoami) and your user id is $UID"

# Here whoami is a command so I wrapped that in a () but UID is an environmental variable so I just used $ to display the value 

# I have given '' single quotes to the whoami cmd output to highlight the output in the echo cmd.
echo "Your name is '$(whoami)' and your user id is $UID"

echo "Checking for the root privilege"
ROOT_USER_ID=0
if [[ $UID -eq $ROOT_USER_ID ]]
then
    echo "You have the Root access"
else
    echo "Sorry:( You don't have the Root access"
fi

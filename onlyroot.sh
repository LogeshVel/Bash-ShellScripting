#!/bin/bash

ROOT_USER_NAME="root"
TRIGGERED_USERNAME=$(whoami)
echo "Checking whether the user triggered the script is $ROOT_USER_NAME and has root access"
echo "Username is $TRIGGERED_USERNAME and user id is ${UID}"

ROOT_USER_ID=0

if [[ $UID -ne ROOT_USER_ID ]]
then
    echo "Sorry:( You are not a Root User"
    exit -1
fi

# use either -ne or !=
# for checking equal use either -eq or =. we could use == for the pattern matching on the right arg
if [[ $TRIGGERED_USERNAME != $ROOT_USER_NAME ]]
then 
    echo "Even though you have the root access, the username is not equal to $ROOT_USER_NAME"
    exit -1
fi

echo "User name matches.Hey Root user! I am expecting you"

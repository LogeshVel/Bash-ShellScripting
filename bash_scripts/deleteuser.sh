#!/bin/bash

# delete the given user
echo "Checking whether you have root access to delete user"

if [[ $UID -ne 0 ]]
then
    echo "Sorry:( You are not a Root User"
    exit -1
fi

read -p "Enter username to delete: " USERNAME

# delete user
deluser $USERNAME

# we could also use userdel command to delete the user.
# sudo userdel USERNAME
# sudo userdel -r USERNAME
# The -r option is used to remove the home directory of the user

if [[ $? -eq 0 ]]
then
    echo "Successfully deleted the user ${USERNAME}. Exitting"
    exit 0
fi
echo "Failed to delete the user ${USERNAME}"
exit 1
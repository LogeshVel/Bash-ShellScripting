#!/bin/bash

# create the user and set the password and for the user to change the password as soon as they login nextime
echo "Checking whether you have root access to create user"

if [[ $UID -ne 0 ]]
then
    echo "Sorry:( You are not a Root User"
    exit -1
fi

echo "Creating new user"

read -p "Enter the username: " USERNAME
read -p "Enter the full name of the user ${USERNAME}: " COMMENT
read -p "Enter the password for the user ${USERNAME}: " PASSWD

# creating user
useradd -c "${COMMENT}" -m "${USERNAME}"

# set the password for the user
# sending passwrd to passwd command via printf.
# if we use just the passwd then it will prompt for password in the next line and also again it asks to retype the password

printf "${PASSWD}\n${PASSWD}\n" | passwd ${USERNAME}

# Force the user to change the password while login
passwd -e ${USERNAME}

echo "Created User successfully. Exiting"
exit 0
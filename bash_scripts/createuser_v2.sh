#!/bin/bash

# create the user and set the password and for the user to change the password as soon as they login nextime
echo "Checking whether you have root access to create user"

if [[ $UID -ne 0 ]]
then
    echo "Sorry:( You are not a Root User"
    exit -1
fi

echo "Creating new user"

read -p "Enter the username : " USERNAME
echo
DATE=$(date +%s) # getting the date timestamp and then hasing it for the password

PASSWORD=$(echo ${DATE} | sha1sum) 
# this gives something like this "6ce77e835e7eb51134605444e9c97d8c55cb805c  -"
# we dont need the trailing - and space
# first 15 charcters is enough for me
PASSWORD=$(echo ${PASSWORD} | head -c 15)

# appending some special characters to the passwors

SPECIAL_CHAR="@#%^&()_+=[]{}:><"

PASSWORD_PART=$(echo ${SPECIAL_CHAR} | fold -b4 | shuf | head -1)

# head -n1 equals to head -1 (number of lines) (-c for number of characters)

PASSWORD="${PASSWORD}${PASSWORD_PART}"
# creating user
useradd -m "${USERNAME}"

printf "${PASSWORD}\n${PASSWORD}\n" | passwd ${USERNAME}

# Force the user to change the password while login
passwd -e ${USERNAME}
echo
echo "Username : ${USERNAME}"
echo "Password : ${PASSWORD}"
echo
echo "Created User successfully. Exiting"
exit 0
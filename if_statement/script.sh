#!/bin/bash

# Simple script to work with if elif

read -p "Enter any number : " NUM

if [[ $NUM = 0 ]]
then
    echo "I didn't expect 0 as the input"
    exit 0
elif [[ $NUM -lt 11 ]]
then
    echo "Between 1 and 10"
    exit 0
else
    echo "Greater than 10"
    exit 0
fi
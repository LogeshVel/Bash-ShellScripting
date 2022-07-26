#!/bin/bash

# Simple script to demo the while loop

# -------------------------------------
# Infinite loop
# echo "while with commands"

# while ls
# do 
#     echo "In Loop"
# done
# -------------------------------------

echo "Supplied args count: $#"
echo "Supplied args      : $@"
echo
while [[ $# != 0 ]]
do
    echo "Active args count: $#"
    echo "Active args      : $@"
    echo "Shifting 2 ..."
    shift 2
done

#!/bin/bash

# This script finds whether the given file exists or not

if [[ -f $1 ]]
then
    echo "The file '$1' exists"
else
    echo "The file '$1' doesnot exists"
fi

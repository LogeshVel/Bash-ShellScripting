#!/bin/bash

# This script finds whether the given dir exists or not

if [[ -d $1 ]]
then
    echo "The dir '$1' exists"
else
    echo "The dir '$1' doesnot exists"
fi

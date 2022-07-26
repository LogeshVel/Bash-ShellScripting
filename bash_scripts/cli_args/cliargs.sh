#!/bin/bash

# Simple script that used the CLI arguments

# $0 gives the script path. $1, ... gives the positional arguments that been passed with the script

echo
echo "Executed script : $0"
echo "Script name : $(basename $0)"
echo "Script path : $(dirname $0)"
echo

echo "Number of args supplied : $#"
echo "Supplied args : $@" # we could also use $*

echo "First  argument : $1"
echo "Second argument : $2"
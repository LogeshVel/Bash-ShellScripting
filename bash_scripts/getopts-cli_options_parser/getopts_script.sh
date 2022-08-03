#!/bin/bash

# This Script uses the getopts to parse the optional args in the CLI

# To demonstarte that we will be using this script to generate the random string based on the options given by cli

# Available option v, l, s
# Here v is for verbose, l is for length of the string out, s is to include the special character in that string
# Out of this options l is mandatory

echo "Getting your options"

while getopts vl:s OPTION
do
    case $OPTION in
        v)
            echo "Verbose is set"
            ;;
        l)
            echo "Length is set to ${OPTARG}"
            ;;
        s)
            echo "Special character is set"
            ;;
        *)
            echo "Invalida option"
            exit 1
            ;;
    esac
done

#!/bin/bash

# This Script uses the getopts to parse the options passed to this script

# To demonstarte that we will be using this script to generate the random string based on the options given for this script

# Available option for this script is v, l, s
# Here v is for verbose, l is for length of the string out, s is to include the special character in that string
# Out of this options argument for the option l is mandatory(so in the while it is followed by :)


log(){
    if [[ $VERBOSE = 1 ]]
    then
        echo "$@"
    fi
}

LENGTH=8
USE_SPECIAL_CHAR=0
while getopts vl:s OPTION
do
    case $OPTION in
        v)
            VERBOSE=1
            log "Verbose is set"
            ;;
        l)
            LENGTH=${OPTARG}
            log "String Length is set to $LENGTH"
            ;;
        s)
            USE_SPECIAL_CHAR=1
            log "Special character is set"
            ;;
        *)
            echo "Usage: script [-vs] [-l LENGTH]"
            echo "        v         - for verbosity"
            echo "        s         - to include the special characters"
            echo "        l  LENGTH - of the string"
            echo
            exit 1
            ;;
    esac
done

log "Generating the String"

string=$(date +%N%s$RANDOM | sha256sum | head -c$LENGTH)

if [[ $USE_SPECIAL_CHAR = 1 ]]
then
    log "Selecting the special character"
    SPECIAL_CHAR=$(echo '{*&)?>}:@"!<[' | fold -w1 | shuf | head -c1)
    string=$(echo $SPECIAL_CHAR$string | head -c$LENGTH)
fi

echo "Here is your String : $string"


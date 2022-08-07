#!/bin/bash

# This Script uses the getopts to parse the options passed to this script and also the Argument passed

# This simple script is used to find the file in the given path and display the content of N lines provided by the flag

# Available options
# -v to set the verbosity
# -p PATH option with its argument. give the path to find the file

# Arguments to the script
# Array of filesname to find in the given path

usage(){
    echo "$0 [-v] [-p PATH] [-n NUMBER-OF-LINES][FILE1,..]"
    echo
    echo "$0 -v -p /usr/bin -n 10 myfile.txt"
    echo
    exit 1
}

log(){
    if [[ $VERBOSE = 1 ]]
    then
        echo "$@"
    fi
}

NUM_LINES=1
while getopts vp:n: OPTION
do
    case $OPTION in
        v)
            VERBOSE=1
            log "Verbose is set"
            ;;
        p)
            FILE_PATH=${OPTARG}
            log "Given Path to find the files $FILE_PATH"
            ;;
        n)
            NUM_LINES=${OPTARG}
            log "Number of Lines to display : $NUM_LINES"
            ;;
        *)
            usage ;;
    esac
done

# Removing the options while leaving the remaining arguments

# OPTIND is the variable that holds the index next cli options. So once we have parsed all the options,
# the OPTIND has the index of the next element which is our Arguments to our script.
# Ex: script -v -p <path> -n <num> FILE1 FILE2
#       at the end of the while loop of the getopts the value stored in the OPTIND is 6 (if all the options were given)
#           -v index 1 at this time OPTIND has the vaulue as 2. (Since it stores in the index of next element)
# We have to make the options to vanish and only the args to script to there.
# we use shift. We need from FILE1,... so we have subtracted 1 from the OPTIND
shift $(( OPTIND - 1 ))

if [[ $@ = "" ]]
then
    echo "No file is given to search for and display the content"
    exit 1
fi

echo "Given Files to search for '$@' in the path '$FILE_PATH' and display the content for $NUM_LINES lines"
echo
for FILE in $@
do
    FILE_WITH_PATH=$FILE_PATH$FILE
    if [[ -f $FILE_WITH_PATH ]]
    then
        log "File $FILE_WITH_PATH exists"
        echo "==> $FILE_WITH_PATH <=="
        echo "$(cat $FILE_WITH_PATH | head -n $NUM_LINES)"
        echo
    else
        echo "Given File $FILE_WITH_PATH does not exists"
        echo
    fi
done

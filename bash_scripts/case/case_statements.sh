#!/bin/bash

# This script demonstrate the use of case statement

# Match the First cli agr with the paaterns like "start", "stop"

case $1 in
  start)
    echo "Starting.."
    ;;
  stop)
    echo "Stopping.."
    ;;
  *)
    echo "Unmatched pattern"
    ;;
esac

# case insensitive
# ${x,,} to lowercase value of the variable x. 
# ${x^^} to uppercase value of the variable x.
case ${1,,} in
  start)
    echo "Starting.."
    ;;
  stop|quit) # match any one stop or quit
    echo "Stopping.."
    ;;
  *)
    echo "Unmatched pattern"
    ;;
esac

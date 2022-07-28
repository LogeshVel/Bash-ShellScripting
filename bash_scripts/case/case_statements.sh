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
esac
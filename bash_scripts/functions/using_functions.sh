#!/bin/bash

# This script demonstrate how to use the functions

# function definition 

# Way 1
function echoer { # here the space is important between the fucntion name and {
    echo "Its me echoer"
}

echoer # function calling

# Way 2
logger(){ # here the space is not mandatory since we have ()
    echo "Its me logger"
}

logger

# Accepting arguments

accept_args(){
    echo "$@"
}

accept_args "Accept args function call" "Multiple args"


# function with return statement
fun_return(){
    echo "Returing not exiting"
    return $1 # return 0 means success exit from the function 
    # return only takes numeric argument
}

fun_return 0
echo "Exit status of the function call fun_return 0 is : $?"

fun_return 1
echo "Exit status of the function call fun_return 1 is : $?"

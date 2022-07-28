#!/bin/bash

# This script demonstrates the varibale scoping in the function

# Variable scopes

local_var_scope(){
    local MY_LOCAL_VAR=$@
    echo $MY_LOCAL_VAR
}

local_var_scope "Its local scoped var"
echo "Trying to access the MY_LOCAL_VAR"
echo $MY_LOCAL_VAR
# We can't access the local scoped variable outside the fucntion

global_scope(){
    GLOBAL_VAR="Eventhough I am a global scoped (local keyword is not used) you can't get my value until this function invoked once"
    echo $GLOBAL_VAR
}

# we can't access the value of the variable declared inside the function(without local keyword),
# atleast the fucntion is invoked once
echo "Trying to access the GLOBAL_VAR, before calling that fucntion"
echo $GLOBAL_VAR

global_scope

echo "Trying to access the GLOBAL_VAR, after calling that fucntion"
echo $GLOBAL_VAR


#!/bin/bash

# This script demonstartes the use of the for loop

# Loop over the sequences
for a in 1 2 3 4 5 6 7
do
    echo "The loop var is $a"
done

# loop over the cli agrs
for c in $@
do
    echo "The CLI arg : $c"
done

# loop over the range of values
for r in {1..10}
do
    echo "The Range value is $r"
done

# loop over the files in the given dir and given pattern
for f in /home/logesh/Bash-ShellScripting/*.sh
do
    echo "The File name is $f"
done
#!/bin/bash

# This script will be scheduled to run after some time.
# There is nothing to do with the script for scheduling. 
# We will be using the "at" package to schedule the script.

# sudo apt-get install at
# at 07:36 -f ./simple.sh -> to scehudle the job at specific timing
# to see the list of jobs -> atq
# to remove the job -> atrm <job_id>. job_id got while scheduling or can get from atq

echo "The Script is executed at : $(date)" > logfile.out

# We could also use the cron job todo this.
# See the wiki: https://github.com/LogeshVel/Bash-ShellScripting/wiki/Advanced#cron
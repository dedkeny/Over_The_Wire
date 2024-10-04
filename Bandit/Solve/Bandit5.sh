#!/bin/bash

# Automated script to solve https://overthewire.org/wargames/bandit/bandit0.html



# password = 4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw


sshpass -p `cat ./Solve/Passwords/bandit4` ssh bandit4@bandit.labs.overthewire.org -p 2220 << EOF

#       Use FIND to search the ./INHERE/ directory
#
#       PIPE_OUTPUT to XARGS to take STD_OUT & make STD_IN for the FILE command
#
#       FILE returns formatted text t0 PIPE_OUTPUT into GREP which searches for " ASCII "
#
#       PIPE_OUTPUT To HEAD to beautify first 16 BYTES(c)
#
#       PIPE_OUTPUT to XARGS that formats inout for CAT for a pretty password 
  
    find ./inhere/ | xargs file {} \; | grep "ASCII" | head -c 16 | xargs cat
    
  exit

EOF

exit


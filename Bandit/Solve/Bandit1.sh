#!/bin/bash

# Automated script to solve https://overthewire.org/wargames/bandit/bandit1.html



# password = ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If


sshpass -p `cat ./Solve/Passwords/bandit0` ssh bandit0@bandit.labs.overthewire.org -p 2220 << EOF

#    Use TAIL to output the last 33 BYTES(c) of README

    tail readme -c 34
  
  exit

EOF

exit


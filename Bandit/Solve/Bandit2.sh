#!/bin/bash

# Automated script to solve https://overthewire.org/wargames/bandit/bandit2.html



# password = 263JGJPfgU6LtdEvgfWU1XP5yac29mFx


sshpass -p `cat ./Solve/Passwords/bandit1` ssh bandit1@bandit.labs.overthewire.org -p 2220 << EOF

#     Use CAT to output the text of " - "

    cat ./-
  
  exit

EOF

exit


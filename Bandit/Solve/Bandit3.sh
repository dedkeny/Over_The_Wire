#!/bin/bash

# Automated script to solve https://overthewire.org/wargames/bandit/bandit0.html



# password = MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx


sshpass -p `cat ./Solve/Passwords/bandit2` ssh bandit2@bandit.labs.overthewire.org -p 2220 << EOF

#       Use CAT to output the text of " spaces in this filename "

    cat ./spaces\ in\ this\ filename

  exit

EOF

exit


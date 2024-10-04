#!/bin/bash

# Automated script to solve https://overthewire.org/wargames/bandit/bandit0.html



# password = 2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ


sshpass -p `cat ./Solve/Passwords/bandit3` ssh bandit3@bandit.labs.overthewire.org -p 2220 << EOF

#      Use CAT to output the text in " ...Hiding-From-You " 

    cat ./inhere/...Hiding-From-You

  exit

EOF

exit


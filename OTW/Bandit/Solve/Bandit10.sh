#!/bin/bash

# Automated script to solve https://overthewire.org/wargames/bandit/bandit10.html



# password = FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey


sshpass -p `cat ./Solve/Passwords/bandit9` ssh bandit9@bandit.labs.overthewire.org -p 2220 << EOF

#       Use STRINGS to output readable text from DATA.TXT
#
#       PIPE_OUTPUT to GREP & search for " === "
# 
#       PIPE_OUTPUT to TAIL to beautify the last 33 BYTES(c) 
    
    strings data.txt  | grep === | tail -c 33
    
  exit

EOF

exit


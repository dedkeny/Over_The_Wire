#!/bin/bash

# Automated script to solve https://overthewire.org/wargames/bandit/bandit8.html



# password = morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj


sshpass -p `cat ./Solve/Passwords/bandit7` ssh bandit7@bandit.labs.overthewire.org -p 2220 << EOF
  
#         Use STRINGS to output readable text from file " DATA.TXT "
#        
#         PIPE_OUTPUT to GREP to find the line of text with " MILLIONTH "
#        
#         PIPE_OUTPUT to TAIL to cut out the last 33 BYTES for pretty password.
    
    strings data.txt | grep millionth | tail -c 33
    
  exit
  
EOF

exit


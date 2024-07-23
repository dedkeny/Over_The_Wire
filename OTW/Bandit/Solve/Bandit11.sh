#!/bin/bash

# Automated script to solve https://overthewire.org/wargames/bandit/bandit11.html



# password = dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr


sshpass -p `cat ./Solve/Passwords/bandit10` ssh bandit10@bandit.labs.overthewire.org -p 2220 << EOF

#       Use BASE64 to DECODE(d) the base x64 encoded data from  DATA.TXT.
#
#       PIPE_OUTPUT to TAIL to beautify the last 33 BYTES(c).
  
    base64 -d data.txt | tail -c 33
    
  exit

EOF

exit


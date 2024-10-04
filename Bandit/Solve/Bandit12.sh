#!/bin/bash

# Automated script to solve https://overthewire.org/wargames/bandit/bandit12.html



# password = 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4


sshpass -p `cat ./Solve/Passwords/bandit11` ssh bandit11@bandit.labs.overthewire.org -p 2220 << EOF

#       Use CAT to PIPE_OUTPUT of DATA.TXT to TR
#
#       TR replaces each letter ( x ) with ( x + 13 ) to decode the cypher ( x = (x+13)%26 )
#
#       PIPE_OUTPUT to TAIL to beautify the last 33 BYTES(c)

                # THIS IS BASH ROT13 FORMULA
    cat data.txt | tr 'n-za-mN-ZA-M' 'a-zA-Z' | tail -c 33
    
  exit

EOF

exit


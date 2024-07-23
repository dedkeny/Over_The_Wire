#!/bin/bash

# Automated script to solve https://overthewire.org/wargames/bandit/bandit9.html



# password = 4CKMh1JI91bUIZZPXDqGanal4xvAg0JM


sshpass -p `cat ./Solve/Passwords/bandit8` ssh bandit8@bandit.labs.overthewire.org -p 2220 << EOF

#     UNIQ needs to be sorted before it can find unique lines apparentally... WHY???
#
#     Use SORT to alphabetize the data in DATA.TXT.
#
#     PIPE_OUTPUT to UNIQ to find UNIQUE lines of text.

  sort data.txt | uniq -u

exit

EOF

exit


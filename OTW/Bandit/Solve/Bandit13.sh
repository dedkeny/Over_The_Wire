#!/bin/bash

# Automated script to solve https://overthewire.org/wargames/bandit/bandit13.html



# password = 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4


sshpass -p `cat ./Solve/Passwords/bandit2` ssh bandit12@bandit.labs.overthewire.org -p 2220 << EOF



exit

EOF

exit


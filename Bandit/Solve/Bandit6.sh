#!/bin/bash

# Automated script to solve https://overthewire.org/wargames/bandit/bandit6.html



# password = HWasnPhtq9AVKe0dmk45nxy20cvUa6EG


sshpass -p `cat ./Solve/Passwords/bandit5` ssh bandit5@bandit.labs.overthewire.org -p 2220 << EOF


find -readable -type f -size 1033c | xargs cat | head -c 32

exit

EOF

exit

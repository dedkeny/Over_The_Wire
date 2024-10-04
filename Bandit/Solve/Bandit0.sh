#!/bin/bash

# Automated script to solve https://overthewire.org/wargames/bandit/bandit0.html



sshpass -p `cat ./Passwords/bandit0` ssh bandit0@bandit.labs.overthewire.org -p 2220

#   This level just tells you go to bandit 1evel ( lvl 0 --> lvl 0 - lvl 1 )

exit
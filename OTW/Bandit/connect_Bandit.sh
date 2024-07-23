#!/bin/bash

# Automated script to connect to  https://bandit.labs.overthewire.org/
# Use the level # you want to play as argument
# NAME FOUND PASSWORDS AS THE LEVEL THEY ARE FOR!!!
# Ex. ./connect_Bandit.sh 2 ( to connect to bandit2 using text from file bandit2 )


if ! [ -x "$(command -v sshpass)" ]; then
  echo 'Error: sshpass NOT installed.'
  echo '        Installing...' >&2
  sudo apt install sshpass
fi


sshpass -p `cat ./Solve/Passwords/bandit$1` ssh bandit$1@bandit.labs.overthewire.org -p 2220 
exit



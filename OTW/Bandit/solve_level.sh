#!/bin/bash
# Script to save the output of Solve scripts into password files
# TODO : Automate first instance securely (Auto save ssh connection (NOT SAFE?)) 


#	IF SSHPASS is not installed, tell user & attempt to install ( using DEBIAN_REPOSITORIES )
if ! [ -x "$(command -v sshpass)" ]; then
  echo 'Error: sshpass NOT installed.'
  echo '	Installing...' >&2
  sudo apt install sshpass
fi



./Solve/Bandit$1.sh | tail -c 34 > ./Solve/Passwords/bandit$1

#		Use CAT to output the text from the right password file

	cat ./Solve/Passwords/bandit$1

exit

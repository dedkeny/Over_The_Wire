#!/bin/bash

# Automated script to solve https://overthewire.org/wargames/bandit/bandit7.html



# password = morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj


    sshpass -p `cat ./Solve/Passwords/bandit6` ssh bandit6@bandit.labs.overthewire.org -p 2220 << EOF

#            Use FIND to find a file in the " / " directory with:
#  
#                 " bandit7 "  as the USER  owner.
#  
#                 " bandit8 "  as the GROUP owner.
#  
#                 33 BYTES(c)  as the FILE SIZE.
#  
#                 WRITE ERRORS to file /DEV/NULL.
#  
#            PIPE_THE_OUTPUT(|) into the GREP.
#  
#                 GREP searches for the keyword " PASSWORD ".
#  
#            PIPE_THE_OUTPUT again to XARG.
#  
#                 XARG converts STD_OUTPUT into STD_INPUT.
#  
#            CAT reads the XARG_INPUT & makes a nice readable password
  
    find / -user bandit7 -group bandit6 -size 33c 2>/dev/null | grep "password" | xargs cat
    
    exit

  EOF

exit


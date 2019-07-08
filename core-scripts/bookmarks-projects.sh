#! /bin/bash -1
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

if [ -d "${projects}/artab" ]; then
    export  artab="${projects}/artab"
    alias goartab="cd ${artab}; pwd"
    alias   godan="cd ${artab}; cd users/dantopa; pwd"
fi

if [ -d "${projects}/draco" ]; then
    export  draco="${projects}/draco"
    alias godraco="cd ${draco}; pwd"
fi

if [ -d "${projects}/user_contrib" ]; then
    export  user_contrib="${projects}/user_contrib"
    alias gouser_contrib="cd ${user_contrib}; pwd"
fi

if [ -d "${projects}/shavano" ]; then
    export  shavano="${projects}/shavano"
    alias goshavano="cd ${shavano}; pwd"
fi

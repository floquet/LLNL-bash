#!/bin/sh
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}normal=$(tput sgr0)"

alias change_permissions=""
alias change_group=""

#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# # directory change
alias    gobash="cd ${bash_scripts}; pwd"
alias  gogithub="cd ${github};       pwd"
alias   gorepos="cd ${repos};        pwd"
alias goscratch="cd ${scratch};      pwd"

# # scratch
#alias cds='cd /net/scratch1/dantopa/; pwd'

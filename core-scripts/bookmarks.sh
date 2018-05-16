#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# # directory change
alias    gobash="cd ${bash_scripts}; pwd"  # variable set in .bashrc
alias  gogithub="cd ${github};       pwd"  # variable set in .bashrc
alias   gorepos="cd ${repos};        pwd"  # variable set in .bashrc
alias goscratch="cd ${scratch};      pwd"  # variable set in .bashrc

# # scratch
#alias cds='cd /net/scratch1/dantopa/; pwd'

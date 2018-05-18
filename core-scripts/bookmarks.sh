#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# # directory change
alias    gobash="cd ${bash_scripts}; pwd"  # variable set in ${bash_file}
alias  gomaster="cd ${master};       pwd"  # variable set in ${bash_file}
alias  gogithub="cd ${github};       pwd"  # variable set in ${bash_file}
alias   gorepos="cd ${repos};        pwd"  # variable set in ${bash_file}
alias goscratch="cd ${scratch};      pwd"  # variable set in ${bash_file}
alias   gospack="cd ${mySpack};      pwd"  # variable set in ${bash_file}

alias  gospackp="cd ${mySpack}; . share/spack/setup.sh; l-spack # variable set in ${bash_file}

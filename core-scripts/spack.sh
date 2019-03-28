#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

alias l-spack=". ${core}/spack-init.sh"

# # errands
alias   gospack="cd ${mySpack}; pwd"
alias initspack="echo '. share/spack/setup-env.sh';. share/spack/setup-env.sh; echo 'l-spack'; l-spack"

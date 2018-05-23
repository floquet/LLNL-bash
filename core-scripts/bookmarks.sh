#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# # directory change
alias         gobash="cd ${bash_scripts}; pwd"  # variable set in ${bash_file}
alias         gocore="cd ${core};         pwd"  # variable created in ${bash_file}
alias          goego="cd ${ego};          pwd"  # variable created in ${core}/platforms.sh
alias         gohome="cd ${HOME};         pwd"
alias           goid="cd ${id};           pwd"  # variable created in ${core}/platforms.sh
alias       gomaster="cd ${master};       pwd"  # variable set in ${bash_file}
alias gonode_queries="cd ${node_queries}; pwd"  # variable set in ${bash_file}
alias        gorepos="cd ${repos};        pwd"  # variable set in ${bash_file}
alias      goscratch="cd ${scratch};      pwd"  # variable set in ${bash_file}
alias        gospack="cd ${mySpack};      pwd"  # variable set in ${bash_file}
alias        govault="cd ${vault};        pwd"  # variable created in ${core}/platforms.sh

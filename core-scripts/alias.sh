#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export my_log="${id}/alias-assignments.txt"

echo "alias assignments on ${host_name}" >  ${my_log}
date                                     >> ${my_log}

echo ""                                  >> ${my_log}
alias                                    >> ${my_log}

alias contents_alias='echo "write list of alias commands to \${my_log} = ${my_log}"'

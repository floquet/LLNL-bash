#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

alias ml="module list"
alias ma="module available"

# alias maa="module -t --redirect avail | grep ${1}"

# dump available modules in a file
export my_log="${id}/modules-available.txt"

echo "modules available " >  ${my_log}
date                      >> ${my_log}
echo ""                   >> ${my_log}
module available          >> ${my_log} 2>&1  &

# dump loaded modules in a file
export my_log="${id}/modules-list.txt"

echo "module list" >  ${my_log}
date               >> ${my_log}
echo ""            >> ${my_log}
module list        >> ${my_log}  2>&1  &

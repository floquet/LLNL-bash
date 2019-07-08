#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export my_log="${id}/uname-variables.txt"
echo "uname variables"                           >  ${my_log}
date                                             >> ${my_log}
echo ""                                          >> ${my_log}
echo "-m   machine name:          $(uname -m)"   >> ${my_log}
echo "-n   network node hostname: $(uname -n)"   >> ${my_log}
echo "-i   hardware platform:     $(uname -i)"   >> ${my_log}
echo "-p   processor type:        $(uname -p)"   >> ${my_log}
echo "-o   operating system:      $(uname -o)"   >> ${my_log}
echo "-svr kernel name:           $(uname -svr)" >> ${my_log}
echo ""                                          >> ${my_log}
echo "uname -a:"                                 >> ${my_log}
uname -a                                         >> ${my_log}
echo ""                                          >> ${my_log}
echo "\${BASH_SOURCE[0]} = ${BASH_SOURCE[0]}"    >> ${my_log}

#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# #   E X P O R T
export os="$(tr [A-Z] [a-z] <<< "$(uname)")" # operating system, lower case

# #   A L I A S
alias             lss="ls -alh"
alias        myprompt='export PS1='\''\[\033[00;35m\]\u\[\033[00m\]@\[\033[00;35m\]\H\[\033[00m\]:\[\033[00;33m\]\W\[\033[00m\] $\033[00;36m '\'''
alias              sr="source ${HOME}/${bash_file}"  # source bash file
alias         zerodel="find . -size 0 -delete"
alias         cpu_out="grep -i 'model name' /proc/cpuinfo | sort | uniq"
alias clear_tmp_files="find . -name '*~' -exec rm {} \;"

# # path queries
alias  ep="echo ${PATH}"
alias emp='echo "\${MODULEPATH}:"; echo "${MODULEPATH}"'
alias  sp='echo "\${SPACK_ROOT}:"; echo "${SPACK_ROOT}"'

#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

alias   v="echo 'vi ${HOME}/${bash_file}'; vi ${HOME}/${bash_file}"
alias  vc="echo 'vi ${core}/master.sh';    vi ${core}/master.sh"
alias  vm="echo 'vi makefile';             vi makefile"
alias  vM="echo 'vi Makefile';             vi Makefile"
alias vcm="echo 'vi CMakeLists.txt';       vi CMakeLists.txt"

alias  ve="echo 'vi ${extras}'; vi ${HOME}/${extras}"

alias contents_vim='echo "ALIAS v, vc, vm, vM, vcm"'

#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}normal=$(tput sgr0)"

alias   v='vi '${vol}${bash_file}
alias  vc='vi '${ccs2}'/core_scripts/master'
alias  vm='vi makefile'
alias  vM='vi Makefile'
alias vcm='vi CMakeLists.txt'

alias contents_vim='echo "ALIAS v, vc, vm, vM, vcm"'

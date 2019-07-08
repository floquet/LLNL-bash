#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# https://stackoverflow.com/questions/11714827/how-to-turn-on-literally-all-of-gccs-warnings/11720263
alias show_gcc_warnings_all="gcc -Q --help=warning"
alias show_gcc_warnings_subset="gcc -Wall -Wextra -Q --help=warning"

alias show_gcc='echo "port select --list gcc"; port select --list gcc'
alias show_select_gcc='echo "sudo port select --set gcc mp-gccX"; sudo port select --set gcc ${1}'
alias show_select_generic='sudo port select --set ${1} ${2}'
alias show_gcc_versions='echo "sudo port select --set gcc mp-gccX; port select --list gcc"'

# # F U N C T I O N S
function selector(){
  echo "selecting gcc version "$1;
  sudo port select --set gcc $1
}

alias contents_gcc='echo "ALIAS show_gcc show_gcc_versions show_gcc_warnings show_select"; echo "FUNCTION selector"'

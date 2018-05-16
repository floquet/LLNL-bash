#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}normal=$(tput sgr0)"

alias l-spack=". ${ccs2}/core_scripts/spack-init.sh"

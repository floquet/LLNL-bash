##! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# https://hpc.lanl.gov/KNL_primer#compile
alias go_knl="module swap craype-haswell craype-mic-knl"

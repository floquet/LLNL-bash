#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}normal=$(tput sgr0)"

alias clear_tmp_files='find . -name "*~" -exec rm {} \;'

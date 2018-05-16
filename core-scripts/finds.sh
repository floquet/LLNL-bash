#!/bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# https://www.howtoforge.com/tutorial/linux-xargs-command/
# find -name "*.txt" | xargs grep "abc"

alias         zerodel="find . -size 0 -delete"
alias clear_tmp_files="find . -name '*~' -exec rm {} \;"

## trilinos
alias finder="echo 'find . -name liblocaepetra.so';  find . -name 'liblocaepetra.so'"

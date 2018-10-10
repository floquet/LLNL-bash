#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

##  ##  set environment
# http://unix.stackexchange.com/questions/177572/how-to-rename-terminal-tab-title-in-gnome-terminal
PROMPT_COMMAND='echo -ne "\033]0;${host_name}\007"'
# alias myprompt='export PS1='\''\[\033[00;35m\]\u\[\033[00m\]@\[\033[00;35m\]\H\[\033[00m\]:\[\033[00;33m\]\W\[\033[00m\] $\033[00;36m '\'''
# alias myprompt="export PS1=\/'\[\033[00;35m\]\u\[\033[00m\]@\[\033[00;35m\]\H\[\033[00m\]:\[\033[00;33m\]\W\[\033[00m\] $\033[00;36m '\/"
alias myprompt="export PS1='\[\033[00;35m\]\u\[\033[00m\]@\[\033[00;35m\]\H\[\033[00m\]:\[\033[00;33m\]\W\[\033[00m\] \$\033[00;36m '"

myprompt

export bold=$(tput bold)
export normal=$(tput sgr0)

## ##  record environment
export my_log="${id}/environment-variables.txt"

echo "environment variables" >  ${my_log}
date                         >> ${my_log}
echo ""                      >> ${my_log}
echo "shell = ${0}"          >> ${my_log}
echo ""                      >> ${my_log}
env                          >> ${my_log}
echo ""                      >> ${my_log}
echo ${BASH_SOURCE[0]}       >> ${my_log}

alias contents_environment='echo "write list of environment commands to environment_variables.txt"'

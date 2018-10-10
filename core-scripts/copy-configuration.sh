#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# # C O P Y
cp ${HOME}/${bash_file} ${vault} &
cp ${HOME}/.vimrc       ${vault} &
cp ${HOME}/.gitconfig   ${vault} &

#wait

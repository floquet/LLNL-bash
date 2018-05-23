#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# # S C R I P T S
source "${core}/gcc.sh"          &
source "${core}/git.sh"          &
source "${core}/ssh.sh"          &
source "${core}/vim.sh"          &
source "${core}/bash.sh"         &
source "${core}/finds.sh"        &
source "${core}/cmake.sh"        &

source "${core}/fortran.sh"      &
source "${core}/bookmarks.sh"    &

# information routines
source "${core}/disk.sh"         &
source "${core}/info.sh"         &
source "${core}/alias.sh"        &
source "${core}/spack.sh"        &
source "${core}/lstopo.sh"       &
source "${core}/modules.sh"      &
source "${core}/environment.sh"  &

# # C O P Y
cp ${HOME}/${bash_file} ${vault} &
cp ${HOME}/.vimrc       ${vault} &
cp ${HOME}/.gitconfig   ${vault} &

myprompt  # # Linux prompt &

wait

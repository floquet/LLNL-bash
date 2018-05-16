#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# https://www.howtoforge.com/tutorial/linux-xargs-command/
# find -name "*.txt" | xargs grep "abc"

# # S C R I P T S
source "${core}/gcc.sh"
source "${core}/git.sh"
source "${core}/ssh.sh"
source "${core}/vim.sh"
source "${core}/bash.sh"
source "${core}/cmake.sh"

source "${core}/fortran.sh"
source "${core}/bookmarks.sh"

# information routines
source "${core}/disk.sh"
source "${core}/alias.sh"
source "${core}/spack.sh"
source "${core}/modules.sh"
source "${core}/environment.sh"
source "${core}/lstopo.sh"

# # C O P Y
cp ${HOME}/${bash_file} "${id}/${bash_file}"
cp ${HOME}/.vimrc        ${id}/.
cp ${HOME}/.gitconfig    ${id}/.

# http://unix.stackexchange.com/questions/177572/how-to-rename-terminal-tab-title-in-gnome-terminal
PROMPT_COMMAND='echo -ne "\033]0;${host_name}\007"'
myprompt  # # Linux prompt

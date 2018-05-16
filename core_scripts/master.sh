#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}normal=$(tput sgr0)"

# #   E X P O R T
export os="$(tr [A-Z] [a-z] <<< "$(uname)")" # operating system, lower case

# #   A L I A S
alias lss='ls -alh'
alias myprompt='export PS1='\''\[\033[00;35m\]\u\[\033[00m\]@\[\033[00;35m\]\H\[\033[00m\]:\[\033[00;33m\]\W\[\033[00m\] $\033[00;36m '\'''
alias sr='source '${vol}${bash_file}  # source bash file
alias ep='echo ${PATH}'
alias zerodel='find . -size 0 -delete'
alias cpu_out="grep -i 'model name' /proc/cpuinfo | sort | uniq"

# https://www.howtoforge.com/tutorial/linux-xargs-command/
# find -name "*.txt" | xargs grep "abc"

# # S C R I P T S
source ${core}'gcc.sh'
source ${core}'git.sh'
source ${core}'ssh.sh'
source ${core}'vim.sh'
source ${core}'bash.sh'
source ${core}'cmake.sh'
source "${core}slurm.sh"
if [[ ${HOSTNAME} == "darwin" ]]; then
    source "${core}darwin-hpc.sh"
fi
source ${core}'fortran.sh'
source ${core}'bookmarks.sh'
source ${core}'permissions.sh'

# information routines
source ${core}'disk.sh'
source ${core}'alias.sh'
source ${core}'spack.sh'
source ${core}'modules.sh'
# source ${core}'proxies.sh'
# source ${core}'teamcity.sh'
source ${core}'environment.sh'

if [ "${os}" = "darwin" ]
then
  source ${core}'apple.sh'
  source ${core}'macports.sh'
  source ${core}'darwin-mac.sh'
else
  source ${core}'info.sh'
  source ${core}'slurm.sh'
  if ! [[ ${compare} == "cc" ]]; then
    source ${core}'lstopo.sh' # ccs machines don't have lstopo
  fi
  if [[ ${compare} == "tt" ]]; then
    source ${core}'knl.sh' # only trinitite has KNL
  fi
fi

# # C O P Y
cp ${vol}${bash_file} ${id}'/'${bash_file}
cp ~/.vimrc     ${id}'/'.
cp ~/.gitconfig ${id}'/'.

# http://unix.stackexchange.com/questions/177572/how-to-rename-terminal-tab-title-in-gnome-terminal
PROMPT_COMMAND='echo -ne "\033]0;${host_name}\007"'
myprompt  # # Linux prompt

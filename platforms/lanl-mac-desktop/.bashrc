#! /bin/bash
##-*- Mode: bash -*-
##---------------------------------------------------------------------------##
## File  : ~/.bashrc
## Date  : Jan 15, 2019
## Author: Daniel Topa
## Note  : Copyright (C) 2018, Los Alamos National Security, LLC.
##         All rights are reserved.
##
##  Bash configuration file upon bash shell startup
##---------------------------------------------------------------------------##

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# # I D E N T I F Y
export       vol="/Users/${USER}"
export bash_file=".bashrc"
export  HOSTNAME="Cauchy.Schwarz"
export host_name=${HOSTNAME}
export partition="log.in"
export    extras=".bash-platform-specific"

export     projects="${vol}/projects"
export      scratch="/Volumes/Huitzilopochtli/scratch"
export        repos="/Users/${USER}/Documents/repos"
export bash_scripts="${repos}/gitlab/bash-scripts"
export         core="${bash_scripts}/core-scripts"
export node_queries="${repos}/gitlab/node-queries"
export      mySpack="${scratch}/spack-folders"

export module_library="${bitbucket}/LANL/Fortran/least-squares/module-library"

#   ===   ===   ===   ===   ===

source "${core}/platforms.sh" # identify platform
source "${core}/master.sh"

#   ===   ===   ===   ===   ===

source ${HOME}/${extras}

alias circle="cd ${bitbucket}/LANL/Fortran/least\ squares/circle; pwd"
alias daryl="cd ${projects}/daryl; pwd"
alias temp="cd ${lap}/init/bash/control; pwd"
alias goascem="cd /Users/${USER}/ascem; pwd"
alias goamanzi="goascem; cd amanzi/repos/amanzi; pwd"
alias gotd="echo 'cd /Volumes/Tlaltecuhtli/repos/GitHub/topa-development'; cd ${repos}/GitHub/topa-development"
alias py="/opt/local/bin/python"
alias gozoltan="cd /Users/${USER}/Documents/sandbox/zoltan; pwd"
alias gonow="cd /Volumes/Tlaltecuhtli/repos/GitHub/topa-development; pwd"
alias gp="date; git pull; date"

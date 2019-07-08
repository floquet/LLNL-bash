#!/bin/bash

# # I D E N T I T Y
export       vol="/home/${USER}"
export bash_file=".bashrc"
export host_name="${HOSTNAME}"
export partition="log.in"

export      scratch="/scratch/${USER}"
export        repos="${scratch}/repos"
export node_queries="${repos}/gitlab/node-queries"
export bash_scripts="${repos}/gitlab/bash-scripts"
export         core="${bash_scripts}/core-scripts"

export       extras=".bash-platform-specific"
export      mySpack="${repos}/spack"

export gcc_system_compiler="gcc@4.8.5"
# gcc (GCC) 4.8.5 20150623 (Red Hat 4.8.5-36)

#   ===   ===   ===   ===   ===

source "${core}/platforms.sh" # identify platform
source "${core}/master.sh"

#   ===   ===   ===   ===   ===

source ${HOME}/${extras}

alias temp="cd ${lap}/init/bash/control; pwd"


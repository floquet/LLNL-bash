#! /bin/bash -1
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export repos_github=""

if [ -d "${github}/cuda" ]; then
    export  cuda="${github}/cuda"
    alias gocuda="cd ${cuda}; pwd"
    repos_github="${repos_github} cuda"
fi

if [ -d "${github}/LLNL-bash" ]; then
    export  lbash="${github}/LLNL-bash"
    alias golbash="cd ${bottom}; pwd"
    repos_github="${repos_github} lbash"
fi

if [ -d "${github}/LLNL-node-queries" ]; then
    export  lnode="${github}/LLNL-node-queries"
    alias golnode="cd ${bottom}; pwd"
    repos_github="${repos_github} lnode"
fi

if [ -d "${github}/topa-development" ]; then
    export  topa="${github}/topa-development"
    alias gotopa="cd ${topa_development}; pwd"
    repos_github="${repos_github} topa"
fi

if [ -d "${github}/yaml-library" ]; then
    export  yaml_library="${github}/yaml-library"
    alias goyaml="cd ${yaml_library}; pwd"
    repos_github="${repos_github} yaml_library"
fi

#! /bin/bash -1
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export repos_bitbucket=""

if [ -d "${bitbucket}/bottom" ]; then
    export  bottom="${bitbucket}/bottom"
    alias gobottom="cd ${bottom}; pwd"
    repos_bitbucket="${repos_bitbucket} bottom"
fi

if [ -d "${bitbucket}/LANL" ]; then
    export          lanl="${bitbucket}/LANL"
    export least_squares="${lanl}/fortran/least-squares"
    alias         golanl="cd ${lanl}; pwd"
    alias        goleast="cd ${least_squares}; pwd"
    alias         gomods="cd ${least_squares}/module-library; pwd"
    alias       gocircle="cd ${least_squares}/circle; pwd"
    repos_bitbucket="${repos_bitbucket} lanl"
fi

if [ -d "${bitbucket}/LLNL-lap" ]; then
    export     llap="${bitbucket}/LLNL-lap"
    alias    gollap="cd ${bottom}; pwd"
    repos_bitbucket="${repos_bitbucket} llap"
fi

if [ -d "${bitbucket}/mac-bash" ]; then
    export  mac_bash="${bitbucket}/mac-bash"
    alias gomac="cd ${mac_bash}; pwd"
    repos_bitbucket="${repos_bitbucket} mac_bash"
fi

if [ -d "${bitbucket}/python" ]; then
    export mypython="${bitbucket}/python"
    alias  gopython="cd ${mypython}; pwd"
    repos_bitbucket="${repos_bitbucket} mypython"
fi

if [ -d "${bitbucket}/top" ]; then
    export  top="${bitbucket}/top"
    alias gotop="cd ${top}; pwd"
    repos_bitbucket="${repos_bitbucket} top"
fi

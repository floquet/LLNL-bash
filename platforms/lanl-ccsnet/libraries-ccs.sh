#! /bin/bash
printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export           dir_repos="/scratch/dantopa/repos"
export dir_spack_libraries="${dir_repos}/spack/libraries"
export  dir_pull_libraries="${dir_repos}/gitlab/pull-requests"


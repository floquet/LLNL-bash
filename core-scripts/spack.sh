#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# # errands
alias   gospack="cd ${mySpack}; pwd"
alias initspack="echo '. share/spack/setup-env.sh';. share/spack/setup-env.sh; echo '. ${core}/spack-init.sh'; . ${core}/spack-init.sh"

alias gomirror="cd /usr/projects/draco/vendors/spack.mirror; pwd"
alias gomirrorx="cd /scratch/vendors/spack.mirror; pwd"
alias blast_home_compilers="echo 'rm ${HOME}/.spack/linux/compilers.yaml; rm ${HOME}/.spack/cray/compilers.yaml'; rm ${HOME}/.spack/cray/compilers.yaml; rm ${HOME}/.spack/linux/compilers.yaml"

alias genesis="echo 'git clone https://github.com/spack/spack'; git clone https://github.com/spack/spack"
alias refresh_SPACK_ROOT="echo '. ${core}/spack.sh'; . ${core}/spack.sh"
alias clone_mirror="echo 'git clone git@gitlab.lanl.gov:dantopa/topa-mirror-spack.git'; git clone git@gitlab.lanl.gov:dantopa/topa-mirror-spack.git"
alias fix_permissions="echo  'chown ${USER}:user_contrib *'; chown ${USER}:user_contrib *"
alias fix_permissionsr="echo 'chown -R ${USER}:user_contrib .'; chown -R ${USER}:user_contrib ."
alias fix_artab_group="echo 'chown -R ${USER}:artab .'; chown -R ${USER}:artab ."
alias fix_artab_sticky="echo 'chmod -R ug+x .'; chmod -R ug+x ."

export dir_spack_library="${mySpack}/libraries/${host_name}-${partition}."
export dir_spack_modules="share/spack/modules/cray-cnl6-haswell"

alias malibhio="echo 'module avail ${dir_spack_library}libhio/${dir_spack_modules}';  module avail '${dir_spack_library}libhio/${dir_spack_modules}'"
alias   maompi="echo 'module avail ${dir_spack_library}openmpi/${dir_spack_modules}'; module avail '${dir_spack_library}openmi/${dir_spack_modules}'"
alias   mapmix="echo 'module avail ${dir_spack_library}pmix/${dir_spack_modules}';    module avail '${dir_spack_library}pmix/${dir_spack_modules}'"
alias    maucx="echo 'module avail ${dir_spack_library}ucx/${dir_spack_modules}';     module avail '${dir_spack_library}ucx/${dir_spack_modules}'"


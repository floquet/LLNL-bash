#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# #  A L I A S
alias sp="cd ${SPACK_ROOT}; pwd"

alias scgcm="spack config get compilers"
alias scgcn="spack config get config"
alias scgmi="spack config get mirrors"
alias scgmo="spack config get modules"
alias scgpa="spack config get packages"
alias scgre="spack config get repos"

# # quick edits
alias  vhcm="vi ${HOME}/.spack/compilers.yaml"
alias vhlcm="vi ${HOME}/.spack/linux/compilers.yaml"

export dir_yaml="${SPACK_ROOT}/etc/spack/defaults"

alias   vcm="vi ${dir_yaml}/compilers.yaml"
alias   vcn="vi ${dir_yaml}/config.yaml"
alias   vmi="vi ${dir_yaml}/mirrors.yaml"
alias   vmo="vi ${dir_yaml}/modules.yaml"
alias   vpa="vi ${dir_yaml}/packages.yaml"

## openmpi
alias    sfo="spack find openmpi"
alias sfoldf="spack find -ldf openmpi"

## modules
alias reft="echo 'spack module refresh --delete-tree --module-type tcl';  spack module refresh --delete-tree --module-type tcl"
alias refl="echo 'spack module refresh --delete-tree --module-type lmod'; spack module refresh --delete-tree --module-type lmod"

alias mu="echo 'module load lmod'; module load lmod; echo 'module use ${SPACK_ROOT}/share/spack/lmod/$(spack arch)/Core'; module use ${SPACK_ROOT}/share/spack/lmod/$(spack arch)/Core"
alias fix_module_path="ep; echo ''; module unuse ${SPACK_ROOT}/share/spack/modules/$(spack arch); ep; echo ''; module use ${SPACK_ROOT}/share/spack/lmod/$(spack arch)/Core/; ep; echo ''"


# alias contents_spack='echo "ALIAS  fix_module_path ref sil sml sp scgcm scgcn scgmi scgmo scgpa scgre spack_here spack_https spack_set spack_shell spack_ssh spack_try svicompilers svimodules svimirrors"; echo "EXPORT spack_mirror_draco spack_mirror_scratch"'

#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}normal=$(tput sgr0)"

#export spack_head="echo $(uname) | tr '[:upper:]' '[:lower:]'"

 # https://stackoverflow.com/questions/2264428/converting-string-to-lower-case-in-bash
export Mirror1="/usr/projects/draco/vendors/spack.mirror"
export Mirror2="/scratch/vendors/spack.mirror"

export spack_mirror_scratch='/scratch/vendors/spack.mirror'
export spack_mirror_draco='/usr/projects/draco/vendors/spack.mirror'

# #  A L I A S
alias sp='cd ${SPACK_ROOT}; pwd'

alias scgcm="spack config get compilers"
alias scgcn="spack config get config"
alias scgmi="spack config get mirrors"
alias scgmo="spack config get modules"
alias scgpa="spack config get packages"
alias scgre="spack config get repos"

export dir_yaml="${SPACK_ROOT}/etc/spack/defaults/"
alias   vcm="vi ${dir_yaml}compilers.yaml"
alias   vcn="vi ${dir_yaml}config.yaml"
alias   vmi="vi ${dir_yaml}mirrors.yaml"
alias   vmo="vi ${dir_yaml}modules.yaml"
alias   vpa="vi ${dir_yaml}packages.yaml"
alias  vhcm="vi ~/.spack/compilers.yaml"
alias vhlcm="vi ~/.spack/linux/compilers.yaml"

## trilinos
alias finder="echo 'find . -name liblocaepetra.so';  find . -name 'liblocaepetra.so'"

## openmpi
alias    sfo="spack find openmpi"
alias sfoldf="spack find -ldf openmpi"

## modules
alias ref="echo 'spack module refresh --delete-tree --module-type ${1}'; spack module refresh --delete-tree --module-type ${1}"
alias mu="echo 'module load lmod'; module load lmod; echo 'module use ${SPACK_ROOT}/share/spack/lmod/$(spack arch)/Core'; module use ${SPACK_ROOT}/share/spack/lmod/$(spack arch)/Core"
alias fix_module_path="ep; echo ''; module unuse ${SPACK_ROOT}/share/spack/modules/$(spack arch); ep; echo ''; module use ${SPACK_ROOT}/share/spack/lmod/$(spack arch)/Core/; ep; echo ''"


# alias contents_spack='echo "ALIAS  fix_module_path ref sil sml sp scgcm scgcn scgmi scgmo scgpa scgre spack_here spack_https spack_set spack_shell spack_ssh spack_try svicompilers svimodules svimirrors"; echo "EXPORT spack_mirror_draco spack_mirror_scratch"'

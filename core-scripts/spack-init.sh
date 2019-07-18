#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# #  A L I A S
alias sp="cd ${SPACK_ROOT}; pwd"
alias spd="cd ${SPACK_ROOT}/etc/spack/defaults; pwd"
alias esp="echo '\${SPACK_ROOT}:'; echo '${SPACK_ROOT}'"
alias clone_spack="git clone https://github.com/spack/spack"
alias copy_yaml=". ${lap}/init/yaml/copier-yaml.sh"
alias copy_scripts=". ${lap}/init/bash/control/copier.sh"
alias run_reporter=". ${lap}/init/bash/control/spack-reporter.sh"
alias  sf="spack find"
alias sfl="spack find -ldf"

alias scgcm="spack config get compilers"
alias scgcn="spack config get config"
alias scgmi="spack config get mirrors"
alias scgmo="spack config get modules"
alias scgpa="spack config get packages"
alias scgre="spack config get repos"

alias graf="echo 'git remote add floquet https://github.com/floquet/spack.git'; git remote add floquet https://github.com/floquet/spack.git"

# # quick edits
alias  vhcm="vi ${HOME}/.spack/compilers.yaml"
alias vhlcm="vi ${HOME}/.spack/linux/compilers.yaml"

export thisArch=$(spack arch)
export dir_yaml="${SPACK_ROOT}/etc/spack/defaults"

alias   vcp="vi ${dir_yaml}/compilers.yaml"
alias   vcn="vi ${dir_yaml}/config.yaml"
alias   vmi="vi ${dir_yaml}/mirrors.yaml"
alias   vmo="vi ${dir_yaml}/modules.yaml"
alias   vpa="vi ${dir_yaml}/packages.yaml"

## openmpi
alias    sfh="spack find hypre"
alias    sfl="spack find libhio"
alias    sfo="spack find openmpi"
alias    sfp="spack find pmix"
alias    sfu="spack find ucx"
alias sfhldf="spack find -ldf hypre"
alias sfoldf="spack find -ldf openmpi"

## modules
alias reft="echo 'spack module tcl  refresh --delete-tree --yes-to-all'; spack module tcl  refresh --delete-tree --yes-to-all"
alias refl="echo 'spack module lmod refresh --delete-tree --yes-to-all'; spack module lmod refresh --delete-tree --yes-to-all"

alias modt="echo 'spack module tcl  refresh --delete-tree --yes-to-all'; spack module tcl  refresh --delete-tree --yes-to-all"
alias modl="echo 'spack module lmod refresh --delete-tree --yes-to-all'; spack module lmod refresh --delete-tree --yes-to-all"

alias mu="echo 'module load lmod'; module load lmod; echo 'module use ${SPACK_ROOT}/share/spack/lmod/$(spack arch)/Core'; module use ${SPACK_ROOT}/share/spack/lmod/$(spack arch)/Core"
alias fix_module_path="ep; echo ''; module unuse ${SPACK_ROOT}/share/spack/modules/$(spack arch); ep; echo ''; module use ${SPACK_ROOT}/share/spack/lmod/$(spack arch)/Core/; ep; echo ''"

function builder(){
    echo "source ${lap_scripts}/sbatch-builder.sh ${1} ${2}"
          source ${lap_scripts}/sbatch-builder.sh ${1} ${2}
}


# alias contents_spack='echo "ALIAS  fix_module_path ref sil sml sp scgcm scgcn scgmi scgmo scgpa scgre spack_here spack_https spack_set spack_shell spack_ssh spack_try svicompilers svimodules svimirrors"; echo "EXPORT spack_mirror_draco spack_mirror_scratch"'

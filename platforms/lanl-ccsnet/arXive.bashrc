#!/bin/bash
##-*- Mode: bash -*-
##---------------------------------------------------------------------------##
## File  : ~/.bashrc
## Date  : July 5, 2017
## Author: Daniel Topa
## Note  : Copyright (C) 2017, Los Alamos National Security, LLC.
##         All rights are reserved.
##
##  Bash configuration file upon bash shell startup
##---------------------------------------------------------------------------##

# # I D E N T I F Y
export bash_file='.bashrc'
export       vol="/home/${USER}/"
export     repos="${vol}Repos/"
export    gitlab=${repos}"gitlab/"
export      ccs2=${gitlab}'ccs2/'
export Scratch='/scratch/'
export MySpack=${Scrach}${USER}
export vendors="${scratch}vendors/"

# # A L I A S
alias now='cdt; cd molecularDynamics/gamma/comd2'
#alias asr='export PATH=${SPACK_ROOT}bin:${PATH}'
alias  cv='cd ${scratch}vendors'
alias myspack="cd /scratch/dantopa; pwd"
alias cst="cd ${Yellow}spack_tools/codes/bash/ccscs4; pwd"
alias  go='source ${spack_tools}/scripts/genesis.sh > ${spack_tools}/logs/genesis.log'
alias  st='cd ${mySpackTools}; pwd'

###    ###    ###    ###    ###    ###    ###

source ${ccs2}'/core_scripts/platforms.sh' # identify platform
source ${ccs2}'/core_scripts/master.sh'

###    ###    ###    ###    ###    ###    ###

export host_name=${dir_name}

# # platfrom specific instructions
cp ${vol}'.bash_profile' ${id}'/'.
cp ${vol}'.bash_logout'  ${id}'/'.

# https://stackoverflow.com/questions/2924697/how-does-one-output-bold-text-in-bash/2924753
bold=$(tput bold)
normal=$(tput sgr0)

#chmod -R 755 ${kt}
#chmod -R 755 ~/topa_sandbox/
alias mytop='/home/dantopa/topa_sandbox/spack/opt/spack/linux-rhel7-x86_64/gcc-4.8.5/htop-2.0.2-ly3orpai2vndgyjyfdxb36zvj7obc6cb/bin/htop'
#alias cmake='/scratch/vendors/spack.20170502/opt/spack/linux-rhel7-x86_64/gcc-6.3.0/cmake-3.8.0-pewx4qgm6iptarnkj3louxnxfvaj2ff4/bin/cmake'
#export dir_cmake='/scratch/vendors/spack.20170502/opt/spack/linux-rhel7-x86_64/gcc-6.3.0/cmake-3.8.0-pewx4qgm6iptarnkj3louxnxfvaj2ff4/bin/'

alias contents_bashrc='echo "ALIAS:"; echo "bash_file = ${bash_file}"; echo "vol = ${vol}"; echo "gitlab = ${gitlab}"; echo "ccs2 = ${ccs2}"'


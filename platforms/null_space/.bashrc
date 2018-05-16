#! /bin/bash
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
export     bash_file='.bashrc'
export           vol='/Users/'${USER}'/'
export        gitlab=${vol}'Repos/gitlab/'
export          ccs2=${gitlab}'ccs2/'
export    SPACK_ROOT=${vol}'Applications/spack/'
export TEAMCITY_HOME=${vol}'Applications/TeamCity/'
export     DEMO_HOME=${gitlab}'petaca2-TeamCity/'
export  CuidadEquipo=${gitlab}'CuidadEquipo/'
# export Fortran_COMPILER_NAME='gfortran'

# repositories
export bitbucket=${vol}'Repos/bitbucket/'

export fcoc='gnu'  # # Fortran compiler of choice !

export ncpus='24'
export mpiprocs=$npcus
export run='mpirun'

# # A L I A S
alias now='cdt; cd molecularDynamics/gamma/comd2'

source ${ccs2}'/core_scripts/platforms.sh' # identify platform
source ${ccs2}'/core_scripts/master.sh'

export spack_bin=${SPACK_ROOT}"opt/spack/darwin-sierra-x86_64/clang-8.1.0-apple/gcc-7.1.0-dt3ert7lzmdegceyq3xiyrzy2a65kcz6/bin/"

alias another_mathematica='open -n /Volumes/Macintosh HD/Application/Mathematica.app'
alias gtc='cd ${DEMO_HOME}; cd BuildAgents/petaca2.beta/'
alias neil='cd ${gitlab}CMake/neil/; pwd'


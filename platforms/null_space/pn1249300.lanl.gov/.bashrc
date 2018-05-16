#! /bin/bash

# # I D E N T I F Y
export bash_file='.bashrc'
export       vol='/Users/'${USER}'/'
export    gitlab=${vol}'Repos/gitlab/'
export      ccs2=${gitlab}'ccs2/'

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

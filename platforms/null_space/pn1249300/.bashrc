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
export     bash_file=".bashrc"
export           vol="/Users/${USER}/"
export       dropbox="${vol}dropbox/"
export   Mathematica="${dropbox}_mm/"
export        gitlab="${vol}Repos/gitlab/"
export          ccs2="${gitlab}ccs2/"
export       Scratch="/Volumes/Tlaltecuhtli/"

export fcoc="gnu"  # # Fortran compiler of choice !

export ncpus="24"
export mpiprocs="${npcus}"
export run="mpirun"

alias gomathematica="cd ${Mathematica}; pwd"

###    ###    ###    ###    ###

source "${ccs2}core_scripts/platforms.sh" # identify platform
source "${ccs2}core_scripts/master.sh"

###    ###    ###    ###    ###

# rsync -avz . /Users/l127914/Dropbox


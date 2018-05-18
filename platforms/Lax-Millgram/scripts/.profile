#! /bin/bash
##-*- Mode: bash -*-
##---------------------------------------------------------------------------##
## File  : ~/.bashrc
## Date  : May 16, 2018
## Author: Daniel Topa
## Note  : Copyright (C) 2018, Los Alamos National Security, LLC.
##         All rights are reserved.
##
##  Bash configuration file upon bash shell startup
##---------------------------------------------------------------------------##

printf '%s\n' "$(date)  %%  %%  %%  ${HOME}/$(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# # I D E N T I F Y
export bash_file=".profile"
export host_name="Lax-Millgram"
export  HOSTNAME="MacBookPro11,3"
export partition="Intel-Core-i7"
export   scratch="/Volumes/Tlaltecuhtli/"

# #  P O I N T
export        repos="${HOME}/Documents"
export       github="${repos}/GitHub"
export    bitbucket="${repos}/bitbucket"
export bash_scripts="${github}/LLNL-bash"
export       master="${github}/LLNL-master-open-mpi"

export    core="${bash_scripts}/core-scripts"
export mySpack="${HOME}/Applications/spack.macbook"


# export gcc_system_compiler="gcc@4.8.5"

# **  **  **  **  **  **  **  **

source "${core}/platforms.sh" # identify platform
source "${core}/master.sh"

# **  **  **  **  **  **  **  **

source "${core}/usb-drives.sh"

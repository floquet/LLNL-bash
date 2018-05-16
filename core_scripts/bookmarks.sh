#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}normal=$(tput sgr0)"

## Variables set in .bashrc
##  vol, Scratch
##  bitbucket, ccs2, gitlab

export                    Repos="${vol}Repos/"
export                Bitbucket="${Repos}bitbucket/"
export                   Github="${Repos}bitbucket/"
export                   Yellow="${Repos}yellow/"
export              Spack_tools="${Yellow}spack_tools/"
export                 Amarillo="${Scratch}/amarillo/"
export                   Master="${Amarillo}/master-ompi/"
export Performance_Benchmarking="${Amarillo}/master-ompi/"

# # A L I A S - go series
alias  goamarillo="cd ${Amarillo};  pwd"
alias gobitbucket="cd ${Bitbucket}; pwd"
alias      goccs2="cd ${ccs2};      pwd"
alias    gogithub="cd ${Github};    pwd"
alias    gomaster="cd ${Master};    pwd"
alias   gomirror1="cd ${Mirror1};   pwd"
alias   gomirror2="cd ${Mirror2};   pwd"
alias   goscratch="cd ${Scratch};   pwd"
alias    goyellow="cd ${Yellow};    pwd"

# # A L I A S
alias yellow="cd ${Yellow};               pwd"
alias     st="cd ${Spack_tools};          pwd"
alias     cv="cd ${Vendors};              pwd"
alias   snap="cd ${Yellow}; cd snapshots; pwd"
alias   home="cd ~;                       pwd"

# # GitLab LANL
alias gl="cd ${gitlab}"                    # ${gitlab} set in ${bash_file}
alias universal="cd ${Universal}; pwd"

#  #  Overrides
alias   makemaster="export   Master=$(pwd)"
alias makeamarillo="export Amarillo=$(pwd)"
alias        maker="export ${1}=$(pwd)"

alias gccs2="cd ${ccs2}"                  # ${ccs2}set in ${bash_file}

# # github
alias how="cd /usr/projects/artab/users/dantopa; pwd"
# alias hpc="cd /usr/projects/artab/users/dantopa/github/hpc/spack-snow; pwd"

# # fortran
alias  cdf="'cd ${gitlab}fortran/"

# # scratch
#alias cds='cd /net/scratch1/dantopa/; pwd'

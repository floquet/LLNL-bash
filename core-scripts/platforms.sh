#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# https://stackoverflow.com/questions/16040567/use-awk-to-extract-substring
# export short_name=`echo ${HOSTNAME} | grep -o '^[^.]*'`
# export short_name=`echo ${HOSTNAME} | sed 's/[.].*//'`
# export short_name=`echo ${HOSTNAME} | cut -d'.' -f1`
export short_name=`echo ${HOSTNAME} | awk -F'.' '{print $1}'` # trinitite.lanl.gov -> trinitite
if [ -z "$partition" ]  # empty
then
  export  partition=`env | grep SLURM_JOB_PARTITION | awk -F'=' '{print $2}'`
fi

# # B O O T  S E C T O R
export   ego="${bash_scripts}/platforms/${host_name}/"
export    id="${ego}${partition}-${HOSTNAME}/"  # ccscs/ccscs2
export vault="${ego}scripts/"

mkdir -p ${id}
mkdir -p ${vault}

# # Kerberos
export moniker="dantopa"
export me="${moniker}@lanl.gov"   # for scp and such

alias k="kinit -f ${me}"  # forward ticket

# # S S H
export myssh="ssh -l ${moniker} -XY"   # forward X11

# # Yellow network
alias  trinititey="${myssh} tt-fey.lanl.gov"

alias      darwin="${myssh} darwin-fe.lanl.gov"
alias          ml="${myssh} ml-fey"
alias  moonlighty="${myssh} ml-fey"
alias moonlighty1="${myssh} ml-fey1"
alias moonlighty2="${myssh} ml-fey2"
alias          pi="${myssh} pi-fey"
alias      pintoy="${myssh} pi-fey"
alias          sn="${myssh} sn-fey"
alias       snowy="${myssh} sn-fey"
alias      snowy1="${myssh} sn-fey1"
alias      snowy2="${myssh} sn-fey2"
alias          wf="${myssh} wf=fey"
alias       wolfy="${myssh} wf-fey"
alias      wolfy1="${myssh} wf-fey1"
alias      wolfy2="${myssh} wf-fey2"

# # S E R V E R S
alias         cc2="${myssh} ccscs2"
alias         cc3="${myssh} ccscs3"
alias         cc4="${myssh} ccscs4"
alias         cc5="${myssh} ccscs5"
alias         cc6="${myssh} ccscs6"
alias         cc7="${myssh} ccscs7"
alias         cc8="${myssh} ccscs8"

alias         cctc="${myssh} ccs-tc"

alias pet2="${myssh} petaca2" # sudo privledges
alias pet3="${myssh} petaca3" # sudo privledges

# scp -r llvm* $now
# dantopa@lanl.gov@ml-fey1:spack.mirror/.

printf '%s\n' "directory of core scripts = \${core} = ${core}"

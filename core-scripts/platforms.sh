#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export partition=`env | grep SLURM_JOB_PARTITION | awk -F'=' '{print $2}'`
if [ -z ${partition} ]
    then
        export partition="power9"   #  #  #  LLNL only
fi

export node_name=`echo $(uname -n) | awk -F'.' '{print $1}'` # pn1249300.lanl.gov -> pn1249300
export    whoami="${host_name}, node ${node_name}"
export    prefix="${host_name}-${partition}-${node_name}"

# # node-queries
export   ego="${node_queries}/${host_name}"
export    id="${ego}/${partition}-${node_name}"  # ccscs/ccscs2
export vault="${id}/dir-configuration"

alias show_names="echo '\${host_name} = ${host_name}'; echo '\${partition} = ${partition}'; echo '\${node_name} = ${node_name}'; echo '\${prefix}    = ${prefix}'; echo '\${ego}       = ${ego}'; echo '\${id}        = ${id}'; echo '\${vault}     = ${vault}'"

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
alias          ga="${myssh} ga-fey"
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

# alias pet2="${myssh} petaca2" # sudo privledges
# alias pet3="${myssh} petaca3" # sudo privledges

# scp -r llvm* $now
# dantopa@lanl.gov@ml-fey1:spack.mirror/.

printf '%s\n' "directory of core scripts = \${core} = ${core}"

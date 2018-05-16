#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# https://stackoverflow.com/questions/16040567/use-awk-to-extract-substring
# export short_name=`echo ${HOSTNAME} | grep -o '^[^.]*'`
# export short_name=`echo ${HOSTNAME} | sed 's/[.].*//'`
# export short_name=`echo ${HOSTNAME} | cut -d'.' -f1`
export short_name=`echo ${HOSTNAME} | awk -F'.' '{print $1}'` # trinitite.lanl.gov -> trinitite

# https://stackoverflow.com/questions/18488270/how-to-check-the-first-character-in-a-string-in-unix

# which platform?
export compare=${HOSTNAME:0:2}


if [[ ${compare} == "da" ]]
    then
        export host_name="darwin"
#        export HOSTNAME=${host_name}
fi

if [[ ${compare} == "pn" ]]
    then
        export host_name="null_space"
#        export HOSTNAME=${host_name}
fi

if [[ ${compare} == "tt" ]]
    then
        export host_name="trinitite"
#        export dir_name=${host_name}
fi

if [[ ${compare} == "ml" ]]
    then export host_name="moonlight"
fi

if [[ ${compare} == "pi" ]]
    then export host_name="pinto"
fi

if [[ ${compare} == "sn" ]]
    then export host_name="snow"
fi

if [[ ${compare} == "wf" ]]
    then export host_name="wolf"
fi

export dir_name=${host_name}

if [[ ${compare} == "cc" ]]
    then
        export machine_number=${HOSTNAME:5:1}

        export short_name=${short_name::-1}                  # ccscs
        export  host_name=${short_name}" "${machine_number}  # ccscs -> ccscs 7 (terminal window)
        export   dir_name=${short_name}${machine_number}     # ccscs7
    fi

if [[ ${compare} == "pe" ]]
    then
        export machine_number=${HOSTNAME:6:1}

        export short_name=${short_name::-1}                  # petaca
        export  host_name=${short_name}" "${machine_number}  # petaca -> petaca 2 (terminal window)
        export   dir_name=${short_name}${machine_number}     # petaca2
fi

# # B O O T  S E C T O R
export core="${ccs2}core_scripts/"   # script library
export  ego="${ccs2}platforms/${dir_name}/"
export   id="${ego}${short_name}/"  # ccscs/ccscs2

mkdir -p ${id}

# # Kerberos
export moniker="dantopa"
export me=${moniker}"@lanl.gov"   # for scp and such

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

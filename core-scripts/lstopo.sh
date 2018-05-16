#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

if ! [ -e ${id}${host_name}'_topology.pdf' ]
    then
        lstopo ${id}${host_name}'_topology.pdf'
fi

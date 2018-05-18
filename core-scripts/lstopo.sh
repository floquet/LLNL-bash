#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# is lstopo defined?
if type "lstopo" > /dev/null; then
    # save time - do not regenrate
    if ! [ -e ${id}${host_name}'_topology.pdf' ]
        then
            lstopo > ${id}${host_name}'_topology.pdf'
    fi
fi

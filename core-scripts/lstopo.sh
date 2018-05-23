#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# is lstopo defined?
if type "lstopo" > /dev/null; then
    # save time - do not regenrate
    export file_lstopo="${id}/${host_name}-${partition}-lstopo.pdf"
    if ! [ -e ${file_lstopo} ]
        then
            lstopo > ${file_lstopo}
    fi
fi

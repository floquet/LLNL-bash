#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# is lstopo defined?
if type "lstopo" > /dev/null 2>&1; then
    # save time - do not regenrate
    export file_base="${id}/lstopo"
    export file_lstopo="${file_base}.txt"
    if ! [ -e ${file_lstopo} ]
        then
            lstopo    ${file_lstopo}
            lstopo -v "${file_base}-v.txt"
            lstopo -p "${file_base}-p.txt"
            lstopo    "${file_base}.pdf"
    fi
    lstopo-no-graphics        ${id}/lstopo.pdf
    if ! [ -f ${id}/lstopo.txt ]; then
        lstopo-no-graphics   ${id}/lstopo.txt
    fi
    if ! [ -f ${id}/lstopo-v.txt ]; then
        lstopo-no-graphics -v ${id}/lstopo-v.txt
    fi
    lstopo ${id}/lstopo.pdf > /dev/null 2>&1
    lstopo ${id}/lstopo.png > /dev/null 2>&1
    lstopo ${id}/lstopo.xml > /dev/null 2>&1
    #lstopo-no-graphics -vpc -of txt   ${id}/lstopo-vpc.txt
    #lstopo --of pdf           ${id}/lstopo.pdf
fi

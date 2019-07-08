#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

alias  disk_list='echo "listing of disk usage for $(pwd)"; du -csh * | sort -n'
alias disk_total='echo "total disk usage for $(pwd):";     du -shm'

alias contents_disk='echo "ALIAS disk_list, disk_total"'

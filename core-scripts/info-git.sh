#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export dirHere=$(pwd)
gonode
# git pull
git add .
git commit -m "${host_name}-${partition}-${node_name} $(date)"
# git push

cd ${dirHere}

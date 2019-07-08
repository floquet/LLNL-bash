#! /bin/bash
printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

gobash
git pull
git add -A .
git commit -m "${host_name} updates $(date +%Y-%m-%d)"
git push

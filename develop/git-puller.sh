#! /bin/bash
printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

for d in *; do  # sweep directory listing
    if [ -f ${d} ]; then  # skip files
        continue
    fi
    echo "git pull ${d}..."
    cd ${d}
    git pull
    cd ..
done

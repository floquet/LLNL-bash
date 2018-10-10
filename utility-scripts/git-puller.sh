#!/bin/bash
printf '%s\n' "+++  $(pwd)/${BASH_SOURCE[0]} $(date)"

# git pull for each repo
counter=0
SECONDS=0

dirHere=$(pwd)

echo "sweeping the repositories in ${repos}..."

cd ${repos}
for f in *; do
    if [ ${f} != "spack" ]; then
        counter=$((counter+1))
        echo ""
        echo "cd ${repos}/${f}"
              cd ${repos}/${f}
        echo "git pull"
              git pull
    fi
done

echo "${counter} directories updated in ${SECONDS} s"
echo ""

cd ${dirHere}


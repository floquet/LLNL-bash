#!/bin/bash -l

#SBATCH --qos=debug
#SBATCH --nodes=1
#SBATCH --time=00:10:00
#SBATCH --output=output.txt
#SBATCH --job-name=node-queries

printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

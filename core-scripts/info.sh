#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# is hwloc-ls defined?
# https://stackoverflow.com/questions/592620/check-if-a-program-exists-from-a-bash-script
# if [ -x "$(command -v hwloc-ls)" ]; then
if command -v hwloc-ls > /dev/null 2>&1; then
    export file_hwloc="${id}/hwloc-ls.txt"
    hwloc-ls > ${file_hwloc}

    export file_hwloc="${id}/hwloc-info.txt"
    hwloc-info > ${file_hwloc}
fi

if command -v lscpu > /dev/null 2>&1; then
    # # lscpu
    export my_log="${id}/lscpu.txt"

    echo "lscpu for ${whoami}" >  ${my_log}
    date                       >> ${my_log}
    echo ""                    >> ${my_log}
    lscpu                      >> ${my_log}
fi

if command -v lspci > /dev/null 2>&1; then
    # # lscpu
    export my_log="${id}/lspci.txt"

    echo "lspci for ${whoami}" >  ${my_log}
    date                       >> ${my_log}
    echo ""                    >> ${my_log}
    lspci                      >> ${my_log}
fi

# /proc filesystem
if [ -f  /proc/cpuinfo ]; then
    source ${core}/info-proc.sh
fi

# is slurm running?
if command -v sinfo > /dev/null 2>&1; then
    source ${core}/slurm.sh
    source ${core}/info-slurm.sh &
fi

source ${core}/info-git.sh &

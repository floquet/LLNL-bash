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
    alias __lscpu='echo "lscpu > \${my_log} = ${my_log}"'

    echo "lscpu for ${whoami}" >  ${my_log}
    date                       >> ${my_log}
    echo ""                    >> ${my_log}
    lscpu                      >> ${my_log}
fi

if [ -f  /proc/cpuinfo ]; then
    # # cpu info
    export my_log="${id}/proc-cpu-info.txt"
    alias __contents_cpu='echo "write proc/cpuinfo to \${my_log} = ${my_log}"'

    echo "cat /proc/cpuinfo for ${whoami}" >  ${my_log}
    date                                   >> ${my_log}
    echo ""                                >> ${my_log}
    cat /proc/cpuinfo                      >> ${my_log}

    # # mem info
    export my_log="${id}/proc-mem-info.txt"
    alias __contents_mem='echo "write proc/meminfo to \${my_log} = ${my_log}"'

    echo "cat /proc/mem info for ${whoami}" >  ${my_log}
    date                                    >> ${my_log}
    echo ""                                 >> ${my_log}
    cat /proc/meminfo                       >> ${my_log}

    # # cpu basics
    alias cpu_out="grep -i 'model name' /proc/cpuinfo | sort | uniq"
    export my_log="${id}/cpu-basics.txt"
    echo "grep -i 'model name' /proc/cpuinfo | sort | uniq" >  ${my_log}
          grep -i 'model name' /proc/cpuinfo | sort | uniq  >> ${my_log}
    #alias __cpuout='echo "grep -i 'model name' /proc/cpuinfo | sort | uniq > \${my_log} = ${my_log}"'
fi

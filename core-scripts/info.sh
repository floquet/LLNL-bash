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

# is slurm runnning?
if command -v sinfo > /dev/null 2>&1; then
    source ${core}/slurm.sh
    # # sinfo
    export my_log="${id}/slurm-sinfo.txt"
    alias __sinfo='echo "sinfo > \${my_log} = ${my_log}"'

    echo "sinfo for ${host_name}" >  ${my_log}
    date                          >> ${my_log}
    echo ""                       >> ${my_log}
    echo 'sinfo'                  >> ${my_log}
    echo ""                       >> ${my_log}
    sinfo                         >> ${my_log}

    # # features
    export my_log="${id}/slurm-sinfo-active-avail-features.txt"
    alias __aaf='echo "sinfo -o > \${my_log} = ${my_log}"'

    echo "active, available features for "${host_name} >  ${my_log}
    date                                               >> ${my_log}
    echo ""                                            >> ${my_log}
    echo 'sinfo -o "%30N %75b %75f"'                   >> ${my_log}
    echo ""                                            >> ${my_log}
    sinfo -o "%30N %75b %75f"                          >> ${my_log}

    # # features
    export my_log="${id}/slurm-sinfo-active-avail-features.txt"
    alias __aaf='echo "sinfo -o > \${my_log} = ${my_log}"'

    echo "active, available features for "${host_name} >  ${my_log}
    date                                               >> ${my_log}
    echo ""                                            >> ${my_log}
    echo 'sinfo -o "%30N %75b %75f"'                   >> ${my_log}
    echo ""                                            >> ${my_log}
    sinfo -o "%30N %75b %75f"                          >> ${my_log}

    # # partitions
    export my_log="${id}/slurm-partition-list.txt"
    alias __part='echo "scontrol show partitions > \${my_log} = ${my_log}"'

    echo "partitions for "${host_name} >  ${my_log}
    date                               >> ${my_log}
    echo ""                            >> ${my_log}
    echo "scontrol show partitions"    >> ${my_log}
    echo ""                            >> ${my_log}
    scontrol show partitions           >> ${my_log}

    # # quality of service
    export my_log="${id}/slurm-qos-options.txt"
    alias __qos='echo "sacctmgr list qos > \${my_log} = ${my_log}"'

    echo "quality of service for "${host_name} >  ${my_log}
    date                                       >> ${my_log}
    echo ""                                    >> ${my_log}
    echo "sacctmgr list qos"                   >> ${my_log}
    sacctmgr list qos                          >> ${my_log}

fi

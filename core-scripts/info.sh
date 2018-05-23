#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# is hwloc-ls defined?
if type "hwloc-ls" > /dev/null; then
    export file_hwloc="${id}/${host_name}-${partition}-hwloc-ls.txt"
    hwloc-ls > ${file_hwloc}
fi

# # cpu basics
export my_log="${id}/cpu-basics.txt"
echo "/proc/cpuinfo | sort | uniq" >  ${my_log}
cpu_out                            >> ${my_log}
alias __cpuout='echo "/proc/cpuinfo | sort | uniq > \${my_log} = ${my_log}"'

# # lscpu
export my_log="${id}/${host_name}-${partition}-lscpu.txt"
alias __lscpu='echo "lscpu > \${my_log} = ${my_log}"'

echo "lscpu for "${host_name} >  ${my_log}
date                          >> ${my_log}
echo ""                       >> ${my_log}
lscpu                         >> ${my_log}

# # cpu info
export my_log="${id}/${host_name}-${partition}-proc-cpu-info.txt"
alias __contents_cpu='echo "write proc/cpuinfo to \${my_log} = ${my_log}"'

echo "cat /proc/cpuinfo for "${host_name} >  ${my_log}
date                                      >> ${my_log}
echo ""                                   >> ${my_log}
cat /proc/cpuinfo                         >> ${my_log}

# # mem info
export my_log="${id}/${host_name}-${partition}-proc-mem-info.txt"
alias __contents_mem='echo "write proc/meminfo to \${my_log} = ${my_log}"'

echo "cat /proc/mem info for "${host_name} >  ${my_log}
date                                       >> ${my_log}
echo ""                                    >> ${my_log}
cat /proc/meminfo                          >> ${my_log}

alias contents_info="__lscpu; __contents_cpu; __contents_mem; __cpuout"

# is slurm runnning?
if type "hwloc-ls" > /dev/null; then
    # # sinfo
    export my_log="${id}/sinfo.txt"
    alias __sinfo='echo "sinfo > \${my_log} = ${my_log}"'

    echo "sinfo for ${host_name}" >  ${my_log}
    date                          >> ${my_log}
    echo ""                       >> ${my_log}
    echo 'sinfo'                  >> ${my_log}
    echo ""                       >> ${my_log}
    sinfo                         >> ${my_log}

    # # features
    export my_log="${id}/sinfo-active-avail-features.txt"
    alias __aaf='echo "sinfo -o > \${my_log} = ${my_log}"'

    echo "active, available features for "${host_name} >  ${my_log}
    date                                               >> ${my_log}
    echo ""                                            >> ${my_log}
    echo 'sinfo -o "%30N %75b %75f"'                   >> ${my_log}
    echo ""                                            >> ${my_log}
    sinfo -o "%30N %75b %75f"                          >> ${my_log}

    # # features
    export my_log="${id}/sinfo-active-avail-features.txt"
    alias __aaf='echo "sinfo -o > \${my_log} = ${my_log}"'

    echo "active, available features for "${host_name} >  ${my_log}
    date                                               >> ${my_log}
    echo ""                                            >> ${my_log}
    echo 'sinfo -o "%30N %75b %75f"'                   >> ${my_log}
    echo ""                                            >> ${my_log}
    sinfo -o "%30N %75b %75f"                          >> ${my_log}

    # # partitions
    export my_log="${id}/partition-list.txt"
    alias __part='echo "scontrol show partitions > \${my_log} = ${my_log}"'

    echo "partitions for "${host_name} >  ${my_log}
    date                               >> ${my_log}
    echo ""                            >> ${my_log}
    echo "scontrol show partitions"    >> ${my_log}
    echo ""                            >> ${my_log}
    scontrol show partitions           >> ${my_log}

    # # quality of service
    export my_log="${id}/qos-options.txt"
    alias __qos='echo "sacctmgr list qos > \${my_log} = ${my_log}"'

    echo "quality of service for "${host_name} >  ${my_log}
    date                                       >> ${my_log}
    echo ""                                    >> ${my_log}
    echo "sacctmgr list qos"                  >> ${my_log}
    sacctmgr list qos                          >> ${my_log}

fi

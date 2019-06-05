#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# test in info.sh
# if command -v sinfo > /dev/null 2>&1; then
#     source ${core}/info-slurm.sh
# fi

rm -rf ${id}/slurm-*.txt
mkdir -p "${id}/slurm-queries"

# is slurm runnning?
if command -v sinfo > /dev/null 2>&1; then
    source ${core}/slurm.sh
    # # sinfo
    export my_log="${id}/slurm-queries/slurm-sinfo.txt"

    echo "sinfo for ${host_name}" >  ${my_log}
    date                          >> ${my_log}
    echo ""                       >> ${my_log}
    echo 'sinfo'                  >> ${my_log}
    echo ""                       >> ${my_log}
    sinfo                         >> ${my_log}

    # # sinfo
    export my_log="${id}/slurm-queries/slurm-sinfo_s.txt"

    echo "sinfo_s for ${host_name}" >  ${my_log}
    date                            >> ${my_log}
    echo ""                         >> ${my_log}
    echo 'sinfo_s'                  >> ${my_log}
    echo ""                         >> ${my_log}
    sinfo_s                         >> ${my_log}

    # # features
    export my_log="${id}/slurm-queries/slurm-sinfo-active-avail-features.txt"

    echo "active, available features for "${host_name} >  ${my_log}
    date                                               >> ${my_log}
    echo ""                                            >> ${my_log}
    echo 'sinfo -o "%30N %75b %75f"'                   >> ${my_log}
    echo ""                                            >> ${my_log}
    sinfo -o "%30N %75b %75f"                          >> ${my_log}

    # # partitions
    export my_log="${id}/slurm-queries/slurm-partition-list.txt"

    echo "partitions for "${host_name} >  ${my_log}
    date                               >> ${my_log}
    echo ""                            >> ${my_log}
    echo "scontrol show partitions"    >> ${my_log}
    echo ""                            >> ${my_log}
    scontrol show partitions           >> ${my_log}

    # # quality of service
    export my_log="${id}/slurm-queries/slurm-qos-options.txt"

    echo "quality of service for "${host_name} >  ${my_log}
    date                                       >> ${my_log}
    echo ""                                    >> ${my_log}
    echo "sacctmgr list qos"                   >> ${my_log}
    sacctmgr list qos                          >> ${my_log}
fi

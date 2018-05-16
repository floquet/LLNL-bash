#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# # sinfo
export my_log=${id}"sinfo.txt"
export my_log_arXive=${my_log}
alias __sinfo='echo "sinfo > \${my_log} = ${my_log_arXive}"'

echo "sinfo for ${host_name}"    >  ${my_log}
date                             >> ${my_log}
echo ""                          >> ${my_log}
echo 'sinfo'                     >> ${my_log}
echo ""                          >> ${my_log}
sinfo                            >> ${my_log}

# # features
export my_log=${id}"sinfo-active-avail-features.txt"
export my_log_arXive=${my_log}
alias __aaf='echo "sinfo -o > \${my_log} = ${my_log_arXive}"'

echo "active, available features for "${host_name} > ${my_log}
date                             >> ${my_log}
echo ""                          >> ${my_log}
echo 'sinfo -o "%30N %75b %75f"' >> ${my_log}
echo ""                          >> ${my_log}
sinfo -o "%30N %75b %75f"        >> ${my_log}

# # partitions
export my_log=${id}"partitions.txt"
export my_log_arXive=${my_log}
alias __part='echo "scontrol show partitions > \${my_log} = ${my_log_arXive}"'

echo "partitions for "${host_name} >  ${my_log}
date                               >> ${my_log}
echo ""                            >> ${my_log}
echo 'scontrol show partitions'    >> ${my_log}
echo ""                            >> ${my_log}
scontrol show partitions           >> ${my_log}

# # quality of service
export my_log=${id}"qos.txt"
export my_log_arXive=${my_log}
alias __qos='echo "sacctmgr list qos > \${my_log} = ${my_log_arXive}"'

echo "quality of service for "${host_name} >  ${my_log}
date                                       >> ${my_log}
echo ""                                    >> ${my_log}
echo 'sacctmgr list qos'                   >> ${my_log}
echo ""                                    >> ${my_log}
sacctmgr list qos                          >> ${my_log}

# # lscpu
export my_log=${id}"lscpu.txt"
export my_log_arXive=${my_log}
alias __lscpu='echo "lscpu > \${my_log} = ${my_log_arXive}"'

echo "lscpu for "${host_name} >  ${my_log}
date                          >> ${my_log}
echo ""                       >> ${my_log}
lscpu                         >> ${my_log}

# # cpu info
export my_log=${id}"info_cpu.txt"
export my_log_arXive=${my_log}
alias __contents_cpu='echo "write proc/cpuinfo to \${my_log} = ${my_log_arXive}"'

echo "cat /proc/cpuinfo for "${host_name} >  ${my_log}
date                                      >> ${my_log}
echo ""                                   >> ${my_log}
cat /proc/cpuinfo                         >> ${my_log}

# # mem info
export my_log=${id}"info_mem.txt"
alias __contents_mem='echo "write proc/meminfo to \${my_log} = ${my_log}"'

echo "cat /proc/mem info for "${host_name} >  ${my_log}
date                                       >> ${my_log}
echo ""                                    >> ${my_log}
cat /proc/meminfo                          >> ${my_log}

alias contents_info='__lscpu; __contents_cpu; __contents_mem'

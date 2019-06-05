#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# #   allocations
alias   grab10="salloc -t 00:10:00 -N 2  --qos=interactive"
alias   grab60="salloc -t 01:00:00 -N 2  --qos=interactive"
alias grabmany="salloc -t 01:00:00 -N 16 --qos=interactive"
alias     long="salloc -N1 --qos=long -t 48:00:00 -p ${1}"
alias  myalloc="salloc -N 1 -p ${1}"

# # sacctmgr
# alias  showqos='sacctmgr show qos format=name,priority'
alias showacct='sacctmgr show account format=descr'
alias  showqos="echo 'sacctmgr list qos';sacctmgr list qos"
alias showuser='(test -n "\!*" && sacctmgr list assoc user=\!* format=Cluster,Account,Partition,QOS%40) || echo No User Specified'
alias    suser='(test -n "\!*" && sacct -u \!* --format=JobID,Priority,JobName,Account,QOS,Partition,Start,Elapsed,State) || echo No User specified'

# # squeue
# # http://hpcfaq.lanl.gov/faqs/view/58
alias   sqrun='squeue -o "%.7i %.8Q %.9P %.10u %.16a %.12j %.9B %.6C %.12L %S" -S "L" -t R'
alias  sqpend='squeue -o "%.7i %.8Q %.10u %.12a %.9P %.10j %.6C %.12S %.12L %.r" -t PD'
alias sqother='squeue -o "%.7i %.10u %.12T %.6C %10l %R" -S "-T" -t S,CG,CD,CF,CA,F,TO,PR,NF'
alias   spend='squeue -O "jobid:.7,prioritylong:.10,username:.10,account:.16,qos:.12,partition:.14,numnodes:.7,timelimit:.14,starttime:.22,reason:.20" -t PD'
alias   sqall='squeue -o "%.7i %.10u %.8T %.6C %.12L %S" -S "-t,-L"'
alias sreason='squeue -o "%.7i %.10u %.10T %r" -t PD,S,CG,CD,CF,CA,F,TO,PR,NF -j \!*'
alias       q="echo 'squeue -u \${USER}'; squeue -u ${USER}"

alias sq='(echo RUNNING:;sqrun;echo $'\n'"PENDING:";sqpend;echo $'\n'"Other";sqother)'

# # action
alias killme="echo 'scancel -u ${USER}'; scancel -u ${USER}"

# # sinfo
# https://hpc.lanl.gov/KNL_primer#compile
# an alternate 'sqpend' with more information
alias      idle="echo 'sinfo -l | grep idle'; sinfo -l | grep idle"
alias scheckmem='sinfo -o "%30N %18b %50f"'
alias   sactive='sinfo --format="%10P %25N %.35f %.6a %.10A"'

# # scontrol
alias spart="echo 'scontrol show partitions'; scontrol show partitions"

alias contents_slurm='ALIAS grab10, grab60, grabmany, q, spart, sqrun, sqpend, sqother, sq, sqall, pend, showqos, showacct, showuser, suser, sreason, killme, idle, scheckmem, sactive'

#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# # directory change
alias         gobash="cd ${bash_scripts}; pwd"  # variable set in ${bash_file}
alias         gocore="cd ${core};         pwd"  # variable created in ${bash_file}
alias          goego="cd ${ego};          pwd"  # variable created in ${core}/platforms.sh
alias         gohome="cd ${HOME};         pwd"
alias           goid="cd ${id};           pwd"  # variable created in ${core}/platforms.sh
alias        gorepos="cd ${repos};        pwd"  # variable set in ${bash_file}
alias      goscratch="cd ${scratch};      pwd"  # variable set in ${bash_file}
alias        gospack="cd ${mySpack};      pwd"  # variable set in ${bash_file}
alias        govault="cd ${vault};        pwd"  # variable created in ${core}/platforms.sh


if [ -d "${repos}/master-ompi" ]; then
    export master="${repos}/master-ompi"
    alias gomaster="cd ${master}; pwd"
fi

if [ -d "${repos}/node-queries" ]; then
    export node_queries="${repos}/node-queries"
    alias gonode="cd ${node_queries}; pwd"

    export       dir_control="${node_queries}/control"
    export         dir_sweep="${dir_control}/sweep"
    export   dir_batch_files="${dir_control}/batch-files"
    export  dir_batch_output="${dir_control}/batch-output"
    export dir_batch_scripts="${dir_control}/batch-scripts"
    alias gocontrol="cd ${dir_control};       pwd"
    alias   gosweep="cd ${dir_sweep};         pwd"
    alias      gobf="cd ${dir_batch_files};   pwd"
    alias      gobo="cd ${dir_batch_output};  pwd"
    alias      gobs="cd ${dir_batch_scripts}; pwd"
fi

if [ -d "${repos}/Open-MPI-development" ]; then
    alias godevOMPI="cd Open-MPI-development; pwd"
fi

if [ -d "${repos}/Performance_Benchmarking" ]; then
    alias goperformance="cd ${repos}/Performance_Benchmarking; pwd"
fi

if [ -d "${repos}/shuttle" ]; then
    alias goshuttle="cd ${repos}/shuttle; pwd"
fi

if [ -d "${repos}/snapshots" ]; then
    alias gosnap="cd ${repos}/snapshots; pwd"
fi

if [ -d "${repos}/spack_tools" ]; then
    alias gost="cd ${repos}/spack_tools; pwd"
fi

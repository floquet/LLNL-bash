#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# # directory change
alias         gobash="cd ${bash_scripts};        pwd"  # variable set in ${bash_file}
alias         gocore="cd ${core};                pwd"  # variable created in ${bash_file}
alias          goego="cd ${ego};                 pwd"  # variable created in ${core}/platforms.sh
alias         gohome="cd ${HOME};                pwd"
alias           goid="cd ${id};                  pwd"  # variable created in ${core}/platforms.sh
alias        gorepos="cd ${repos};               pwd"  # variable set in ${bash_file}
alias      goscratch="cd ${scratch};             pwd"  # variable set in ${bash_file}
alias        gospack="cd ${mySpack};        pwd; lss"  # variable set in ${bash_file}
alias     godotspack="cd ~/.spack;               pwd"
alias        govault="cd ${vault};               pwd"  # variable created in ${core}/platforms.sh
alias       gosbatch="gospack; cd sbatch-output; pwd"

if [ -d "${repos}" ]; then

    if [ -d "${repos}/Bitbucket" ]; then
        export   bitbucket="${repos}/Bitbucket"
        alias  gobitbucket="cd ${bitbucket}; pwd"
    fi

    if [ -d "${repos}/Github" ]; then
        export    github="${repos}/Github"
        export llnl_bash="${github}/LLNL-bash"
        alias   gogithub="cd ${github}; pwd"
        alias     gobash="cd ${llnl_bash}; pwd"
    fi

    if [ -d "${bitbucket}/LLNL-lap" ]; then   #  #  #  LLNL only
        export         lap="${bitbucket}/LLNL-lap"
        export lap_scripts="${lap}/scripts"
        alias        golap="cd ${lap}; pwd"
        alias     goseelap="cd ${lap}/${host_name}/${partition}; pwd"
      fi

    if [ -d "${bitbucket}/Performance_Benchmarking" ]; then
      export dir_performance="${bitbucket}/Performance_Benchmarking"
      export   dir_topa_bash="${dir_performance}/topa/spack/bash"
      export        dir_wsdb="${dir_performance}/topa/wsdb"
      alias goperformance="cd ${dir_performance}; pwd"
      alias        gotopa="cd ${dir_topa_bash}; pwd"
      alias        gowsdb="cd ${dir_wsdb}; pwd"
    fi

    if [ -d "${github}/node-queries" ]; then
        export node_queries="${github}/node-queries"
        alias        gonode="cd ${node_queries}; pwd"

        export       dir_control="${node_queries}/control"
        export         dir_sweep="${dir_control}/sweep"
        export   dir_batch_files="${dir_control}/batch-files"
        export  dir_batch_output="${dir_control}/batch-output"
        export dir_batch_scripts="${dir_control}/batch-scripts"
        alias          gocontrol="cd ${dir_control};       pwd"
        alias            gosweep="cd ${dir_sweep};         pwd"
        alias               gobf="cd ${dir_batch_files};   pwd"
        alias               gobo="cd ${dir_batch_output};  pwd"
        alias               gobs="cd ${dir_batch_scripts}; pwd"
    fi

    if [ -d "${repos}/Open-MPI-development" ]; then
        alias godevOMPI="cd Open-MPI-development; pwd"
    fi

    if [ -d "${repos}/shuttle" ]; then
        alias goshuttle="cd ${repos}/shuttle; pwd"
    fi

fi

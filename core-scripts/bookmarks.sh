#! /bin/bash -1
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# # directory change
alias         gobash="cd ${bash_scripts};      pwd"  # variable set in ${bash_file}
alias         gocore="cd ${core};              pwd"  # variable created in ${bash_file}
alias          goego="cd ${ego};               pwd"  # variable created in ${core}/platforms.sh
alias         gohome="cd ${HOME};              pwd"
alias           goid="cd ${id};                pwd"  # variable created in ${core}/platforms.sh
alias        gorepos="cd ${repos};             pwd"  # variable set in ${bash_file}
alias      goscratch="cd ${scratch};           pwd"  # variable set in ${bash_file}
alias        gospack="cd ${mySpack};           pwd; lss"  # variable set in ${bash_file}
alias    golibraries="cd ${mySpack}/libraries; pwd; lss"  # variable set in ${bash_file}
alias     godotspack="cd ~/.spack;             pwd"
alias        govault="cd ${vault};             pwd"  # variable created in ${core}/platforms.sh
# alias       gosbatch="gospack; cd sbatch-output; pwd"

if [ -d "${repos}" ]; then

    if [ -d "${repos}/bitbucket" ]; then
        export   bitbucket="${repos}/bitbucket"
        alias  gobitbucket="cd ${bitbucket}; pwd"
        source ${core}/bookmarks-bitbucket.sh
    fi

    if [ -d "${repos}/github" ]; then
        export   github="${repos}/github"
        alias  gogithub="cd ${github}; pwd"
        source ${core}/bookmarks-github.sh
    fi

    if [ -d "${repos}/gitlab" ]; then
        export   gitlab="${repos}/gitlab"
        alias  gogitlab="cd ${gitlab}; pwd"
        source ${core}/bookmarks-gitlab.sh
    fi

    # if [ -d "${repos}/github" ]; then
    #     export    github="${repos}/github"
    #     export llnl_bash="${github}/LLNL-bash"
    #     alias   gogithub="cd ${github}; pwd"
    #     alias gollnlbash="cd ${llnl_bash}; pwd"
    #     if [ -d "${github}/yaml-library" ]; then
    #         export    yaml_library="${github}/yaml-library"
    #         export yaml_library_ss="${yaml_library}/shell-scripts"
    #         alias            goyl="cd ${yaml_library}; pwd"
    #         alias          goylss="cd ${yaml_library_ss}; pwd"
    #     fi
    #     if [ -d "${github}/branson" ]; then
    #         export dir_branson="${github}/branson"
    #         alias gobranson="cd ${dir_branson}; pwd"
    #     fi
    #     if [ -d "${github}/topa-development" ]; then
    #         export amanzi_development="${github}/topa-development"
    #         alias goamanzidev="cd ${amanzi_development}; pwd"
    #     fi
    # fi

    # if [ -d "${repos}/master-lap" ]; then
    #     export         lap="${repos}/master-lap"
    #     export    lap_bash="${lap}/init/bash"
    #     export lap_scripts="${lap}/scripts"
    #     export  novus_bash="${lap}/novus/bash"
    #     alias       golap="cd ${lap}; pwd"
    #     alias    goseelap="cd ${lap}/${host_name}/${partition}; pwd"
    #     alias goconfigure="source ${novus_bash}/configurator.sh"
    #   fi
    #
    # if [ -d "${repos}/master-ompi" ]; then
    #     export      ompi="${repos}/master-ompi"
    #     export ompi_bash="${ompi}/init/bash"
    #     alias     goompi="cd ${ompi}; pwd"
    #     alias  goseeompi="cd ${ompi}/${host_name}/${partition}; pwd"
    # fi

    # if [ -d "${repos}/node-queries" ]; then
    #     export node_queries="${repos}/node-queries"
    #     alias gonode="cd ${node_queries}; pwd"
    #
    #     export       dir_control="${node_queries}/control"
    #     export         dir_sweep="${dir_control}/sweep"
    #     export   dir_batch_files="${dir_control}/batch-files"
    #     export  dir_batch_output="${dir_control}/batch-output"
    #     export dir_batch_scripts="${dir_control}/batch-scripts"
    #     alias gocontrol="cd ${dir_control};       pwd"
    #     alias   gosweep="cd ${dir_sweep};         pwd"
    #     alias      gobf="cd ${dir_batch_files};   pwd"
    #     alias      gobo="cd ${dir_batch_output};  pwd"
    #     alias      gobs="cd ${dir_batch_scripts}; pwd"
    # fi
    #
    # if [ -d "${repos}/Open-MPI-development" ]; then
    #     alias godevOMPI="cd Open-MPI-development; pwd"
    # fi
    #
    # if [ -d "${repos}/Performance_Benchmarking" ]; then
    #   export dir_performance="${repos}/Performance_Benchmarking"
    #   export   dir_topa_bash="${dir_performance}/topa/spack/bash"
    #   export        dir_wsdb="${dir_performance}/topa/wsdb"
    #   alias goperformance="cd ${dir_performance}; pwd"
    #   alias        gotopa="cd ${dir_topa_bash}; pwd"
    #   alias        gowsdb="cd ${dir_wsdb}; pwd"
    # fi

    # if [ -d "${repos}/shuttle" ]; then
    #     alias goshuttle="cd ${repos}/shuttle; pwd"
    # fi
    #
    # if [ -d "${repos}/snapshots" ]; then
    #     alias gosnap="cd ${repos}/snapshots; pwd"
    # fi
    #
    # if [ -d "${repos}/spack_tools" ]; then
    #     alias gost="cd ${repos}/spack_tools; pwd"
    # fi
    #
    # if [ -d "${repos}/Github" ]; then
    #     alias gogithub="cd ${repos}/GitHub; pwd"
    # fi

    # if [ -d "${repos}/Bitbucket" ]; then
    #     alias gobitbucket="cd ${repos}/Bitbucket; pwd"
    #     if [ -d "${repos}/Bitbucket/bottom" ]; then
    #         alias gobottom="cd ${repos}/Bitbucket/bottom"
    #     fi
    # fi

fi

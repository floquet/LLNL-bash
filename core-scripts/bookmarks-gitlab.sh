#! /bin/bash -1
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export repos_gitlab=""

if [ -d "${gitlab}/build-openmpi" ]; then
    export  build_ompi="${gitlab}/build-openmpi"
    alias gobuild_ompi="cd ${build_ompi}; pwd"
    repos_gitlab="${repos_gitlab} build_ompi"
fi

if [ -d "${gitlab}/c_codes" ]; then
    export  c_codes="${gitlab}/c_codes"
    alias goc_codes="cd ${c_codes}; pwd"
    repos_gitlab="${repos_gitlab} c_codes"
fi

if [ -d "${gitlab}/fortran" ]; then
    export  fortran="${gitlab}/fortran"
    alias gofortran="cd ${master_lap}; pwd"
    repos_gitlab="${repos_gitlab} fortran"
fi

if [ -d "${gitlab}/master-artab" ]; then
    export  master_artab="${gitlab}/master-artab"
    alias gomaster_artab="cd ${master_artab}; pwd"
            repos_gitlab="${repos_gitlab} master_artab"
fi

if [ -d "${gitlab}/master-lap" ]; then
    export  master_lap="${gitlab}/master-lap"
    alias gomaster_lap="cd ${master_lap}; pwd"
    repos_gitlab="${repos_gitlab} master_lap"
fi

if [ -d "${gitlab}/master-ompi" ]; then
    export  master_ompi="${gitlab}/master-ompi"
    alias gomaster_ompi="cd ${master_ompi}; pwd"
    repos_gitlab="${repos_gitlab} master_ompi"
fi

if [ -d "${gitlab}/mtt-open-mpi-test-tool" ]; then
    export   mtt="${gitlab}/mtt-open-mpi-test-tool"
    alias  gomtt="cd ${mtt}; pwd"
    repos_gitlab="${repos_gitlab} mtt"
fi

if [ -d "${gitlab}/Performance_Benchmarking" ]; then
    export  performance_benchmarking="${gitlab}/Performance_Benchmarking"
    alias goperformance="cd ${performance_benchmarking}; pwd"
    repos_gitlab="${repos_gitlab} performance_benchmarking"
fi

if [ -d "${gitlab}/pull-requests" ]; then
    export  pull_requests="${gitlab}/pull-requests"
    alias gopull="cd ${pull_requests}; pwd"
    repos_gitlab="${repos_gitlab} pull_requests"

    alias     gotools="cd ${pull_requests}/libraries/tools; pwd"
    alias    gresults="cd ${pull_requests}/libraries/results; pwd"
    alias     gotasks="cd ${pull_requests}/tasks; pwd"
    alias  goproblems="cd ${pull_requests}/problems; pwd"
    alias    goqspack="cd ${pull_requests}/spack; pwd"
fi

if [ -d "${gitlab}/node-queries" ]; then
    export  node_queries="${gitlab}/node-queries"
    alias gonode="cd ${node_queries}; pwd"
    repos_gitlab="${repos_gitlab} node_queries"
fi

if [ -d "${gitlab}/topa-mirror-spack" ]; then
    export  topa_mirror_spack="${gitlab}/topa-mirror-spack"
    alias gotopa_mirror_spack="cd ${topa_mirror_spack}; pwd"
    repos_gitlab="${repos_gitlab} topa_mirror_spack"
fi

if [ -d "${gitlab}/transfer-spack" ]; then
    export  transfer_spack="${gitlab}/transfer-spack"
    alias gotransfer="cd ${transfer_spack}; pwd"
    repos_gitlab="${repos_gitlab} transfer_spack"
fi

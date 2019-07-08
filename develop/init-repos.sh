#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

## create directory structure
cd ${repos}

mkdir -p bitbucket
mkdir -p github
mkdir -p gitlab

cd ${repos}/bitbucket
git clone git@bitbucket.org:dantopa/bottom.git
git clone git@bitbucket.org:dantopa/hpc_c.git
git clone git@bitbucket.org:dantopa/llnl-lap.git
git clone git@bitbucket.org:dantopa/mac-bash.git
git clone git@bitbucket.org:dantopa/modern-fortran.git
git clone git@bitbucket.org:dantopa/python.git

cd ${repos}/gitlab
git clone git@gitlab.lanl.gov:dantopa/bash-scripts.git
git clone git@gitlab.lanl.gov:dantopa/master-ompi.git
git clone git@gitlab.lanl.gov:dantopa/master-lap.git
git clone git@gitlab.lanl.gov:dantopa/node-queries.git
git clone git@gitlab.lanl.gov:dantopa/Performance_Benchmarking.git
git clone git@gitlab.lanl.gov:dantopa/pull-requests.git
git clone git@gitlab.lanl.gov:dantopa/transfer-spack.git

cd ${repos}/github
git clone git@github.com:floquet/LLNL-bash.git
git clone git@github.com:floquet/modern-fortran.git
git clone git@github.com:floquet/topa-development.git
git clone git@github.com:floquet/yaml-library.git

cd ${repos}

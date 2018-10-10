#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

goscratch
mkdir -p repos
cd repos
pwd

git clone git@gitlab.lanl.gov:dantopa/bash-scripts.git             &
git clone git@gitlab.lanl.gov:dantopa/master-lap.git               &
git clone git@gitlab.lanl.gov:dantopa/master-ompi.git              &
git clone git@gitlab.lanl.gov:dantopa/node-queries.git             &
git clone git@gitlab.lanl.gov:dantopa/Open-MPI-development.git     &
git clone git@gitlab.lanl.gov:dantopa/Performance_Benchmarking.git &
git clone git@gitlab.lanl.gov:dantopa/shuttle.git                  &
git clone git@gitlab.lanl.gov:dantopa/snapshots.git                &
#git clone git@gitlab.lanl.gov:dantopa/fortran.git                 &

ls -alh

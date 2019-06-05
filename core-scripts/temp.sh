#!/bin/bash -l

printf '%s\n' "$(date) ${BASH_SOURCE[0]}" # who I am

export list_files="alias.sh bookmarks-github.sh"
#  copy-configuration.sh  fortran.sh   info-panic-oom.txt  knl.sh      platforms.sh   ssh.sh
# apple.sh                bookmarks-gitlab.sh  disk.sh                gcc.sh       info-proc.sh        lstopo.sh   slurm.sh       uname.sh
# bash.sh                 bookmarks.sh         environment.sh         git.sh       info.sh             master.sh   spack-init.sh  usb-drives.sh
# bookmarks-bitbucket.sh  cmake.sh             finds.sh               info-git.sh  info-slurm.sh       modules.sh  spack.sh       vim.sh

for f in ${list_files}; do
    echo "scp ${f} $USER@tfta.lanl.gov:/lustre/cpscratch1/dantopa"
          scp ${f} $USER@tfta.lanl.gov:/lustre/cpscratch1/dantopa
done


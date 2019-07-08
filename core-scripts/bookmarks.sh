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

source ${core}/bookmarks-projects.sh

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

fi

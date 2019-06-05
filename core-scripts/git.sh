#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# http://stackoverflow.com/questions/1125968/how-to-force-git-pull-to-overwrite-local-files
alias overwrite="git reset --hard HEAD"

# https://stackoverflow.com/questions/783811/getting-git-to-work-with-a-proxy-server
#alias get_git_proxies='echo "http proxy: "; git config --global --get http.proxy; echo "https proxy: "; git config --global --get https.proxy'
alias set_git_proxies='git config --global http.proxy http://proxyout.lanl.gov:8080; git config --global https.proxy http://proxyout.lanl.gov:8080'
#alias git_clone='echo "git clone https://github.com/spack/spack"; git clone https://github.com/spack/spack; pwd'
alias mothership="echo 'git remote show origin'; git remote show origin"
alias myurl="git config --get remote.origin.url"
alias gpg_check='git verify-commit HEAD~0; export GPG_SIGNED=$?; echo "verify-commit exit code = \$GPG_SIGNED = $GPG_SIGNED"'
alias ggit="echo 'git add -A .; git status'; git add -A .; git status"

alias floquet="echo 'git remote add floquet https://github.com/floquet/spack.git'; git remote add floquet https://github.com/floquet/spack.git"

alias sweep_repos="echo '. \${core}/git-puller.sh'; . ${core}/git-puller.sh"

# # F U N C T I O N S

function sign_gpg(){
    git config --global user.signingkey #1
}

function dantopa(){
    git config --global user.name "Daniel Topa"
    git config --global user.email dantopa@lanl.gov
    git config --global push.default simple
    git config --global color.ui true
    git config --global rerere.enabled true
}

function get_git_proxies(){
    echo 'http proxy: '
    git config --global --get http.proxy
    echo 'https proxy: '
    git config --global --get https.proxy
}

function get_git_listing(){
    git ls-files $1
}

function garbage_collection(){
    #declare -a myarray=$1
    list=("$@")
    echo "* * * start git garbage collection on ${list[@]}"
    for r in "${list[@]}"; do
        # echo "\${r} = ${r}"
        echo "cleaning ${r}"
        eval cd \$${r}
        #echo "\$(pwd) = $(pwd)"
        git gc &
    done
    echo "# # # end git garbage collection on ${list[@]}"
}

# https://askubuntu.com/questions/674333/how-to-pass-an-array-as-function-argument
function clean_git_repos(){
    export dirHere=$(pwd)

    garbage_collection ${repos_bitbucket}
    garbage_collection ${repos_gitlab}
    garbage_collection ${repos_github}

    wait
    cd ${dirHere}
}

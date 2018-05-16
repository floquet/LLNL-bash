#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}normal=$(tput sgr0)"

alias show_proxies='echo "proxy settings for ${HOSTNAME}:"; echo ""; env | grep -i proxy'

export   all_proxy=http://proxyout.lanl.gov:8080
export   ALL_PROXY=http://proxyout.lanl.gov:8080
export  http_proxy=http://proxyout.lanl.gov:8080
export  HTTP_PROXY=http://proxyout.lanl.gov:8080
export https_proxy=http://proxyout.lanl.gov:8080
export HTTPS_PROXY=http://proxyout.lanl.gov:8080
export rsync_proxy=http://proxyout.lanl.gov:8080
export RSYNC_PROXY=http://proxyout.lanl.gov:8080

# unset all_proxies

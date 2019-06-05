#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# $ rsync -avh --ignore-existing . /usr/projects/draco/vendors/spack.mirror/gcc
# $ chown -R dantopa:user_contrib *

alias send_to="echo 'rsync -avh --ignore-existing . \${target}'; rsync -avh --ignore-existing . "
alias fix_permissions='echo "chown -R dantopa:user_contrib *"; chown -R dantopa:user_contrib *'

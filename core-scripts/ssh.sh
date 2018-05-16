#! /bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# create an ssh key
# ssh-keygen -t rsa -C "dantopa@lanl.gov"

# view randomart
# ssh-keygen -lv -f ~/.ssh/id_rsa

# Mac
# cat ~/.ssh/id_rsa.pub | pbcopy

# ssh-keygen -t rsa -C "dantopa@lanl.gov" -b 4096

alias ihpc="echo 'ssh -Y dantopa@ihpc-gate.lanl.gov <crypto card>'; ssh -Y dantopa@ihpc-gate.lanl.gov"
alias rzgw="echo 'ssh -Y topa1@rzgw.llnl.gov <password><pin>'; ssh -Y topa1@rzgw.llnl.gov"
alias gomanta="echo 'ssh rzmanta: <password><pin>'; ssh rzmanta"
alias   goray="echo 'ssh ray: <password><pin>'; ssh ray"

alias public_key='cat ~/.ssh/id_rsa.pub'

alias contents_ssh='echo "ALIAS public_key"'

#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# create an ssh key
# ssh-keygen -t rsa -C "dantopa@lanl.gov"

# view randomart
# ssh-keygen -lv -f ~/.ssh/id_rsa

# Mac
# cat ~/.ssh/id_rsa.pub | pbcopy

# ssh-keygen -t rsa -C "dantopa@lanl.gov" -b 4096
alias resetSSH='echo "ssh-keygen -f ~/.ssh/id_rsa -p"; ssh-keygen -f ~/.ssh/id_rsa -p'

# ihpc:    crypto card
# rzgw:    <password><pin>
# rzmanta: <password><pin>

export llnl_moniker="topa1"
export llnl_ssh="ssh -l ${llnl_moniker} -X"

alias    ihpc="echo '${myssh}    ihpc-gate.lanl.gov <crypto card>';  ${myssh}    ihpc-gate.lanl.gov"
alias    rzgw="echo '${llnl_ssh} rzgw.llnl.gov <password><pin>';     ${llnl_ssh} rzgw.llnl.gov"
alias gomanta="echo '${llnl_ssh} rzmanta: <password><pin>';          ${llnl_ssh} rzmanta"
alias   goray="echo 'ssh ray: <password><pin>'; ssh ray"
alias   oslic="echo '${llnl_ssh} oslic.llnl.gov'; ${llnl_ssh} oslic.llnl.gov"
alias   rslic="echo '${llnl_ssh} rzslic.llnl.gov'; ${llnl_ssh} rslic.llnl.gov"
alias treasure="/usr/bin/firefox https://rzlc.llnl.gov/bitbucket/projects/SPACK/repos/llnl.wci"

# alias    ihpc="echo 'ssh -Y dantopa@ihpc-gate.lanl.gov <crypto card>'; ssh -Y dantopa@ihpc-gate.lanl.gov"
# alias    rzgw="echo 'ssh -Y topa1@rzgw.llnl.gov <password><pin>'; ssh -Y topa1@rzgw.llnl.gov"
# alias gomanta="echo 'ssh rzmanta: <password><pin>'; ssh rzmanta"
# alias   goray="echo 'ssh ray: <password><pin>'; ssh ray"
# alias   oslic="echo 'ssh -l topa1 -Y oslic.llnl.gov'; ssh -l topa1 -Y oslic.llnl.gov"


alias public_key='cat ~/.ssh/id_rsa.pub'

alias contents_ssh='echo "ALIAS public_key"'

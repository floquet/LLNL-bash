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
# rzgw:    <password>idodjv2k<pin>
# rzmanta: <password><pin>

# export capulin="dantopa@wtrw:cp-fe:"
export capulin_gitlab="${capulin}/users/dantopa/repos/gitlab"
#alias srngate="echo 'ssh -l dantopa@lanl.gov srngate.sandia.gov'; echo 'sandia crypto'; ssh -l dantopa@lanl.gov srngate.sandia.gov"
export snl_moniker="dmtopa"
export snl_ssh="ssh -l ${snl_moniker} -X"
alias srngate="echo 'ssh dmtopa@srngate.sandia.gov'; echo 'sandia crypto'; ssh dmtopa@srngate.sandia.gov"

export llnl_moniker="topa1"
export llnl_ssh="ssh -l ${llnl_moniker} -X"
alias    rzgw="echo '${llnl_ssh} rzgw.llnl.gov <password><pin>';     ${llnl_ssh} rzgw.llnl.gov"

alias     ihpc="echo '${myssh}    ihpc-gate.lanl.gov <crypto card>';  ${myssh}    ihpc-gate.lanl.gov"
alias     wtrw="echo '${myssh}    wtrw.lanl.gov <crypto card>';  ${myssh}    wtrw.lanl.gov"
alias  gomanta="echo '${llnl_ssh} rzmanta: <password><pin>';          ${llnl_ssh} rzmanta"
alias    goray="echo 'ssh ray: <password><pin>'; ssh ray"
alias    oslic="echo '${llnl_ssh} oslic.llnl.gov'; ${llnl_ssh} oslic.llnl.gov"
alias    rslic="echo '${llnl_ssh} rzslic.llnl.gov'; ${llnl_ssh} rslic.llnl.gov"
alias treasure="/usr/bin/firefox https://rzlc.llnl.gov/bitbucket/projects/SPACK/repos/llnl.wci"
# alias    ihpc="echo 'ssh -Y dantopa@ihpc-gate.lanl.gov <crypto card>'; ssh -Y dantopa@ihpc-gate.lanl.gov"
# alias    rzgw="echo 'ssh -Y topa1@rzgw.llnl.gov <password><pin>'; ssh -Y topa1@rzgw.llnl.gov"
# alias gomanta="echo 'ssh rzmanta: <password><pin>'; ssh rzmanta"
# alias   goray="echo 'ssh ray: <password><pin>'; ssh ray"
# alias   oslic="echo 'ssh -l topa1 -Y oslic.llnl.gov'; ssh -l topa1 -Y oslic.llnl.gov"


alias public_key='cat ~/.ssh/id_rsa.pub'
alias make_key_rsa='ssh-keygen -t rsa -b 4096 -o -a 100 -C “dantopa@lanl.gov”'
alias make_key_ed='ssh-keygen -t ed25519 -a 100 -C “dantopa@lanl.gov”'

alias contents_ssh='echo "ALIAS public_key"'

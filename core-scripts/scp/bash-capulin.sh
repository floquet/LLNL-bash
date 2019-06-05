#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# launch from bash-scripts superdirectory
# . ${core}/scp/bash-capulin.sh
# capulin:
#  tar -xf bash-scripts.tar
echo ""
echo "tar --exclude='.*' -czf bash-scripts.tar bash-scripts"
      tar --exclude='.*' -czf bash-scripts.tar bash-scripts

echo ""
echo "scp bash-scripts.tar dantopa@cp-loginy:/lustre/cpscratch1/dantopa/repos/gitlab/."
      scp bash-scripts.tar dantopa@cp-loginy:/lustre/cpscratch1/dantopa/repos/gitlab/.

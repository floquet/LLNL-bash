#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# launch from yaml-library superdirectory
# . ${core}/scp/yaml-capulin.sh
# capulin:
#  tar -xf yaml-library.tar
echo ""
echo "tar --exclude='.*' -czf yaml-library.tar yaml-library"
      tar --exclude='.*' -czf yaml-library.tar yaml-library

echo ""
echo "scp yaml-library.tar dantopa@cp-loginy:/lustre/cpscratch1/dantopa/repos/github/."
      scp yaml-library.tar dantopa@cp-loginy:/lustre/cpscratch1/dantopa/repos/github/.

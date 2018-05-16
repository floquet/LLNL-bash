#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}normal=$(tput sgr0)"

set compare=${HOST:0:2}
echo "compare = "${compare}
if [[ $compare} == "nu" ]] ; then ${hostname}="null_space"; else echo 0; fi

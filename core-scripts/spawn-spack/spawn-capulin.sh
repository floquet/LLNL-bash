#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

myTPLS="libhio openmpi pmix ucx"
myClone="/lustre/cpscratch1/dantopa/repos/github/yaml-library/clone-zone/capulin"

function replace(){
    myDir="capulin-arm.${1}"
    echo ""
    echo "replacing directory ${myDir}"
    echo "rm -rf ${myDir}"
          rm -rf ${myDir}
    echo "cp -a spack-develop/ ${myDir}"
          cp -a spack-develop/ ${myDir}
    echo "cp ${myClone}/mirrors.yaml     ${myDir}/etc/spack/defaults/."
          cp ${myClone}/mirrors.yaml     ${myDir}/etc/spack/defaults/.
    echo "cp ${myClone}/packages.yaml    ${myDir}/etc/spack/defaults/."
          cp ${myClone}/packages.yaml    ${myDir}/etc/spack/defaults/.
    echo "cp ${myClone}/tcl-modules.yaml ${myDir}/etc/spack/defaults/modules.yaml"
          cp ${myClone}/tcl-modules.yaml ${myDir}/etc/spack/defaults/modules.yaml
}

echo "cd /lustre/cpscratch1/dantopa/repos/spack/libraries"
      cd /lustre/cpscratch1/dantopa/repos/spack/libraries

echo "unzip spack-develop.zip > files.txt"
      unzip spack-develop.zip > files.txt

echo ""; echo "begin loop"
for t in ${myTPLS}; do
    replace ${t}
done

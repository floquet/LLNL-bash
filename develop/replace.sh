#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/deployment_guide/s1-proc-topfiles#s2-proc-buddyinfo
# ome of the more useful virtual files in the top-level of the /proc/ directory

# if [ -f  /proc/cpuinfo ] tested in info.sh

function proc_probes(){
    # ${1}: "buddyinfo"
    # ${2}: "used primarily for diagnosing memory fragmentation issues"
    safe=$(echo "${1}" | tr / -)
    echo "\${1}    = ${1}"
    echo "\${safe} = ${safe}"
}
proc_probes "partitions"  "partition block allocation information"
proc_probes "scsi/scsi"   "list of every recognized SCSI device"

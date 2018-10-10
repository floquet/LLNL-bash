#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export    u_Tlaltecuhtli="/Volumes/Tlaltecuhtli/"
export u_Huitzilopochtli="/Volumes/Huitzilopochtli/"

alias    goTlaltecuhtli="cd ${u_Tlaltecuhtli};    pwd"
alias goHuitzilopochtli="cd ${u_Huitzilopochtli}; pwd"

#alias contents_usb_drives='echo "ALIAS public_key"'

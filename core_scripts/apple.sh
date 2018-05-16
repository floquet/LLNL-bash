#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}normal=$(tput sgr0)"

alias another_mathematica='open -n /Volumes/Macintosh HD/Application/Mathematica.app'  # launch second kernel

export my_log=${id}"/apple_profiler.txt"

echo "mac profile" > ${my_log}
date >> ${my_log}

echo "" >> ${my_log}
echo "system_profiler SPSoftwareDataType" >> ${my_log}
system_profiler SPSoftwareDataType >> $my_log

echo "" >> ${my_log}
echo "sysctl -a" >> ${my_log}
sysctl -a  >> ${my_log}

#WARNING: The locate database (/var/db/locate.database) does not exist.
#To create the database, run the following command:

#  sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist

# http://osxdaily.com/2011/11/02/enable-and-use-the-locate-command-in-the-mac-os-x-terminal/
# Alternatively you can also run the following command and build the database:

# sudo /usr/libexec/locate.updatedb

alias contents_apple='echo "ALIAS another_mathematica"; echo "write system_profile and sysctl to \${my_log} = ${my_log}"'

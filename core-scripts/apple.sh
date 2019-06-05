#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

alias another_mathematica='open -n /Volumes/Macintosh\ HD/Applications/Wolfram/Mathematica\ 11.3.0.0.app'  # launch second kernel
defaults write com.apple.screencapture location Desktop/tidy/screenshots/

export my_log="${id}/apple_profiler.txt"

echo "mac profile"                        >  ${my_log}
date                                      >> ${my_log}
echo ""                                   >> ${my_log}
echo "system_profiler SPSoftwareDataType" >> ${my_log}
system_profiler SPSoftwareDataType        >> ${my_log}
echo ""                                   >> ${my_log}
echo "sysctl -a"                          >> ${my_log}
sysctl -a                                 >> ${my_log}

# WARNING: The locate database (/var/db/locate.database) does not exist.
# To create the database, run the following command:

#  sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist

# http://osxdaily.com/2011/11/02/enable-and-use-the-locate-command-in-the-mac-os-x-terminal/
# Alternatively you can also run the following command and build the database:

# sudo /usr/libexec/locate.updatedb

alias show_hidden="echo 'defaults write com.apple.finder AppleShowAllFiles YES'; echo 'restart finder'; defaults write com.apple.finder AppleShowAllFiles YES"
alias contents_apple='echo "ALIAS another_mathematica"; echo "write system_profile and sysctl to \${my_log} = ${my_log}"'

#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

alias show_gcc='port select --list gcc'
alias show_select='echo "sudo port select --set gcc mp-gccX"'

alias show_gcc_versions='port select --list gcc; echo "sudo port select --set gcc mp-gcc7"'

alias update_mp='sudo port selfupdate; sudo port upgrade outdated'
alias update_port='sudo port rev-update'

alias services_octave='sudo launchctl load -w /Library/LaunchDaemons/org.freedesktop.dbus-system.plist; launchctl load -w /Library/LaunchAgents/org.freedesktop.dbus-session.plist'

alias mysync='sudo port -d sync'

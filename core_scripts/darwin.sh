#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}normal=$(tput sgr0)"

# https://discussions.apple.com/thread/7581737?start=0&tstart=0
# vshift+command+period toggles hidden files

# http://ianlunn.co.uk/articles/quickly-showhide-hidden-files-mac-os-x-mavericks/
alias macfiles_show='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias macfiles_hide='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias macfiles_remind='echo "to see invisible files: shift-command-."'

alias another_mathematica='open -n /Volumes/Macintosh HD/Application/Mathematica.app'

alias grab-power8="echo 'salloc -N1 -p power8+'; salloc -N1 -p power8+; q"
alias grab-power9="echo 'salloc -N1 -p power9'; salloc -N1 -p power9; q"
alias grab-knl-flat="echo 'salloc -N1 -p knl-quad_flat'; salloc -N1 -p knl-quad_flat; q"
alias grab-knl-cache="echo 'salloc -N1 -p knl-quad_cache'; salloc -N1 -p knl-quad_cache; q"

alias contents_darwin='echo "ALIAS grab-knl-flat, grab-knl_quad, grab-power8, grab-power9, macfiles_show, macfiles_hide, macfiles_remind, another_mathematica"'

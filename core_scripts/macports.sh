#! /bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}normal=$(tput sgr0)"

#sudo port select --set mpi mpich-gcc7-fortran
#sudo port select --set python python36
#sudo port select --set python3 python36
#sudo port select --set gcc mp-gcc8
# port select --set py-sympy py36-sympy
# sudo port select --set pip pip27
# sudo port select --set mpi mpich-mp-fortran
#     Add the following line to your .bash_profile if you plan to use the PETSC makefile rules in /opt/local/lib/petsc/conf:
#     	export PETSC_DIR=/opt/local/lib/petsc

#   dbus has the following notes:
#     ############################################################################
#     # Startup items have been generated that will aid in
#     # starting dbus with launchd. They are disabled
#     # by default. Execute the following commands to start them,
#     # and to cause them to launch at startup:
#     #
#     # sudo launchctl load -w /Library/LaunchDaemons/org.freedesktop.dbus-system.plist
#     # launchctl load -w /Library/LaunchAgents/org.freedesktop.dbus-session.plist
#     ############################################################################
#   hdf5 has the following notes:
#     Mac users may need to set the environment variable "HDF5_USE_FILE_LOCKING" to the five-character string "FALSE" when
#     accessing network mounted files.  This is an application run-time setting, not a configure or build setting.
#     Otherwise errors such as "unable to open file" or "HDF5 error" may be  encountered.

# unless octave is run with --no-gui-libs, graphics_toolkit("fltk") will cause a crash

#  petsc has the following notes:
#    Add the following line to your .bash_profile if you plan to use the PETSC makefile rules in
#    /opt/local/lib/petsc/conf:
#     	export PETSC_DIR=/opt/local/lib/petsc

#  gdb has the following notes:
#    You will need to codesign /opt/local/bin/ggdb

#sudo po    See https://sourceware.org/gdb/wiki/BuildingOnDarwin#Giving_gdb_permission_to_control_other_processes

#    Add the following line to your .bash_profile if you plan to use the PETSC makefile rules in /opt/local/lib/petsc/conf:
#     	export PETSC_DIR=/opt/local/lib/petsc


alias update_mp='sudo port selfupdate; sudo port upgrade outdated'
alias update_port='sudo port rev-update'

alias services_octave='sudo launchctl load -w /Library/LaunchDaemons/org.freedesktop.dbus-system.plist; launchctl load -w /Library/LaunchAgents/org.freedesktop.dbus-session.plist'

alias mysync='sudo port -d sync'

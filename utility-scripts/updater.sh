#!/bin/bash
printf '%s\n' "+++  $(pwd)/${BASH_SOURCE[0]} $(date)"

rsync --dry-run --update -raz --progress . /Users/l127914/Documents/repos/github/LLNL-bash/core-scripts

rsync --update -raz --progress . /Users/l127914/Documents/repos/github/LLNL-bash/core-scripts

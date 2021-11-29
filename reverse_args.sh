#!/bin/bash
#
# Scenario that takes arguments, reverses each one of them and prints it
#
# Arguments:
#   Any number of random arguments

args_count=$#

for arg in "$@"; do {
  chars_count=${#arg}

  for (( i=$chars_count-1; i>=0; i-- )); do
    rev="$rev${arg:$i:1}"
  done
    echo -n "${rev}"
    if (( args_count != 1 )); then
      echo -n " "
    else
      echo ""
    fi
    rev=""
    (( args_count-- ))
}
done
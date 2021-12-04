#!/bin/bash
#
# Scenario that takes arguments, reverses each one of them and prints them in one row.
#
# Arguments:
#   Any number of random arguments

args_count=$#

if (( args_count == 0 )); then
  echo "Please, pass some arguments."
  exit
fi

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
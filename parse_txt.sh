#!/bin/bash
#
# Takes text file of special format as an argument and prints filenames from 1st column with owner's
# user ID of appropriate file, separated from name by semicolon or 'not exists'
# if file does not exist
#
# Arguments:
#   text_file
#
# Example of text_file:
#   f5;server1
#   /var/www/html/index.html;server2
#   /var/www/html/f1;server1
#
# Example output:
#   f5;not exists
#   /var/www/html/index.html;0
#   /var/www/html/f1;1000

if [[ ! $1 ]]; then
  echo "No text file specified! Pass text file pathname as an argument."
  exit
fi

IFS=$';'$'\n' read -d '' -r -a filenames < $1
i=0

for filename in "${filenames[@]}"; do
  (( i++ ))
  if (( i%2 == 0 )); then
    continue
  fi

  if [[ -f "${filename}" ]]; then
    echo "${filename};$(stat -c '%u' ${filename})"
  else
    echo "${filename};not exists"
  fi
done
#!/bin/bash
#
# Displays n-member of Fibonacci sequence (0 1 1 2 3 5 8 13 21 ...)
#
# Arguments:
#   Any positive integer number

function fib() {
  n=$1
  prev=0
  next=1

  for (( i=0; i<n; i++ )); do
    temp=${next}
    next=$((prev+next))
    prev=${temp}
  done

  echo "${prev}"
}

if [[ ! $1 =~ ^[0-9]+$ ]]; then
  echo "Please, pass any positive integer as argument."
  exit
fi

fib $1
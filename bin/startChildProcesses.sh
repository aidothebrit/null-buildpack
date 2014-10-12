#!/bin/bash

function startChildProcesses
{
    for cmd in "$@"; do {
      $cmd & pid=$!
      echo "Process \"$cmd\" started with pid $pid";
      PID_LIST+=" $pid";
    } done

    PID_ARRAY=($PID_LIST)
}

startChildProcesses "$@"
echo 'you have 5 minutes to debug this before this process exits.'
sleep 300

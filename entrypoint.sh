#!/bin/sh -l

 

echo "Hello $1"

if [ "$1" = true ]
  pylint; test_result=$?
  if ((test_result != 0)); then
    echo '%s\n' "Test case x failed" >&2  # write error message to stderr
    exit $test_result                     # or exit 1
  fi
fi

# time=$(date)
# echo ::set-output name=time::$time

echo ::log-command ::"Pylint ok"
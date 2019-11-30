#!/bin/sh -l

echo "Hello $1"

if [ "$1" = true ] ; then
  pylint; test_result=$?

  if ["$test_result" != 0] ; then
    echo ::error :: "Pylint error"
    exit $test_result
  fi
fi

# time=$(date)
# echo ::set-output name=time::$time

echo ::log-command ::"Pylint ok"
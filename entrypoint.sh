#!/bin/sh -l

echo "Hello $2"

if [ "$2" = true ] ; then

    pylint $1
    exit_code=$?
    echo "*******"
    echo $exit_code
    echo "*******"
    if [ "$exit_code" = "0" ]; then
        echo ::log-command ::"Pylint ok"
    else
        echo ::error :: "Pylint error"
        exit $exit_code
    fi

fi

# time=$(date)
# echo ::set-output name=time::$time


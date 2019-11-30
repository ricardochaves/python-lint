#!/bin/sh -l

if [ "$2" = true ] ; then

    pylint $1
    exit_code=$?

    if [ "$exit_code" = "0" ]; then
        echo ::log-command ::"Pylint ok"
    else
        echo ::error :: "Pylint error"
        exit $exit_code
    fi

fi

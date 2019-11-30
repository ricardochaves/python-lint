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


if [ "$3" = true ] ; then

    pycodestyle $1
    exit_code=$?

    if [ "$exit_code" = "0" ]; then
        echo ::log-command ::"pycodestyle ok"
    else
        echo ::error :: "pycodestyle error"
        exit $exit_code
    fi

fi

if [ "$4" = true ] ; then

    flake8 $1
    exit_code=$?

    if [ "$exit_code" = "0" ]; then
        echo ::log-command ::"Flake8 ok"
    else
        echo ::error :: "Flake8 error"
        exit $exit_code
    fi

fi

if [ "$5" = true ] ; then

    black --check $1
    exit_code=$?

    if [ "$exit_code" = "0" ]; then
        echo ::log-command ::"Black ok"
    else
        echo ::error :: "Black error"
        exit $exit_code
    fi

fi



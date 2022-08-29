#!/bin/sh
# Author : Annie Elsegood 5/12/2019
# Purpose: Go back a number of steps on your current branch using mixed

if [ $# -eq 0 ]; then
	echo "error: unknown input (empty)"
    echo "usage: goBack <type> <steps>"
	exit 1
fi

git goBack mixed $1

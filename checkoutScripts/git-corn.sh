#!/bin/sh
# Author : Annie Elsegood 28/10/2019
# Purpose: Checkout a branch that is not already local

if [ $# -eq 0 ]; then
	echo "error: unknown input (empty)"
	echo "usage: git corn <branch_name>"
	exit 1
fi

echo "Check Out Recursive New"

git kleen
git checkout -b $1 --recurse-submodules
git kleen # Required because sometimes a folder gets removed
git subdate

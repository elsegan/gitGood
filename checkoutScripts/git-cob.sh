#!/bin/sh
# Author : Andrew Elsegood (CC-DA/ENG1-AU) 28/10/2019
# Purpose: Checkout a branch that is already local

if [ $# -eq 0 ]; then
	echo "error: unknown input (empty)"
	echo "usage: git cob <branch_name>"
	exit 1
fi

echo "Check Out Branch"

git kleen
git checkout $1 --recurse-submodules
git kleen
git subdate

#!/bin/sh
# Author : Annie Elsegood 28/10/2019
# Purpose: Clone a repository at the origin of a specific branch and recurse its submodules

if [ $# -eq 0 ]; then
	echo "error: unknown input (empty)"
	echo "usage: git clobr <branch_name> <ssh-address>"
	exit 1
fi

if [ $# -eq 1 ]; then
	echo "error: unknown input (empty)"
	echo "usage: git clobr <branch_name> <ssh-address>"
	exit 1
fi

echo "CLOne Branch Recursive"

git clone --branch $1 $2 --recurse-submodules 

#!/bin/sh
# Author : Annie Elsegood 28/10/2019
# Purpose: Create a new branch and ensure that it is tracked on the server

if [ $# -eq 0 ]; then
	echo "error: unknown input (empty)"
	echo "usage: git noob <branch_name>"
	exit 1
fi

echo "New Ordinary Origin Branch"

git checkout -b $1
git push --set-upstream origin $1

#!/bin/sh
# Author : Annie Elsegood 28/10/2019
# Purpose: Perform a clean on the repo and its submodules

echo "Keep LEan Every Node"

git reset --hard
git submodule foreach --recursive git reset --hard
git clean -dxff
git submodule foreach --recursive git clean -dxff

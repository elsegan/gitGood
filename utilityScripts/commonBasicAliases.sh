#!/bin/sh
# Author : Andrew Elsegood (CC-DA/ENG1-AU)
# Purpose: Create some common shortenings of commands globally
#          It will forcefully override all the existing elements

echo "checkout  --> co"
git config --global --replace-all alias.co checkout

echo "commit    --> c"
git config --global --replace-all alias.c commit

echo "clone     --> cl"
git config --global --replace-all alias.cl clone

echo "commit -m --> cm"
git config --global --replace-all alias.cm "commit -m"

echo "submodule --> sm"
git config --global --replace-all alias.sm submodule

echo "status    --> st"
git config --global --replace-all alias.st status

echo "fetch     --> f"
git config --global --replace-all alias.f fetch

echo "push      --> ps"
git config --global --replace-all alias.ps push

echo "push      --> pl"
git config --global --replace-all alias.pl pull

echo "add       --> a"
git config --global --replace-all alias.a add

echo "add --all --> aa"
git config --global --replace-all alias.aa "add --all"

echo "merge     --> m"
git config --global --replace-all alias.m merge

#!/bin/sh
# Author : Andrew Elsegood (CC-DA/ENG1-AU) 28/10/2019
# Purpose: Since it is a common command, map it to a shorter alias

echo "SUBmodule upDATE"

git submodule update --init --force --recursive

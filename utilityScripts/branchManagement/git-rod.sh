#!/bin/sh
# Author : Annie Elsegood 19/8/2022
# Purpose: Rebase a branch onto develop after doing a hard clean


echo "Rebase Onto Develop"

echo "THIS WILL BE DOING A HARD CLEAN OF YOUR CURRENT HEAD"
echo " "
echo "ARE YOU ABSOLUTELY SURE YOU WANT TO DO THIS?"
echo "Type either 1 or 2 to make the selection:"
select yn in "Yes" "No"; do
    case $yn in 
        Yes )
            echo "WeepWoop, You have chosen to Rebase Onto Develop"
            break;;
        No )
            echo "You decided not to Rebase Onto Develop" 
            exit;;
    esac
done

git kleen
git co develop
git pl
git co -
git rebase develop

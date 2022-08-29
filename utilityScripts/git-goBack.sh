#!/bin/sh
# Author : Annie Elsegood 5/12/2019
# Purpose: Go back a number of steps on your current branch,
#           using the specified type of resetting

if [ $# -lt 2 ]; then
	echo "error: unknown input (empty)"
    echo "usage: goBack <type> <steps>"
	exit 1
fi

if   [ $1 = hard  ]; then
    echo -e "\nThis will remove all local changes\n"
elif [ $1 = soft  ]; then
    echo -e "\nThis will uncommit changes\n"
elif [ $1 = mixed ]; then
    echo -e "\nThis will uncommit and unstage changes\n"
else
    echo "The input for type needs to be soft, hard, mixed"
    exit 1
fi

if [ $2 -lt 0 ]; then
    echo "The input for steps needs to be positive"
    exit 1
fi

echo "WARNING, THIS SHOULD NOT BE USED TO TRY TO CHANGE PUSHED DATA"
echo "YOU SHOULD NOT UNDO CHANGES THIS WAY AFTER COMMITTING"
echo "Are you making changes that are only local?"

select yn in "Yes" "No"; do
    case $yn in 
        Yes )
            git reset "--$1" "HEAD~$2"
            break;;
        No ) exit;;
    esac
done

#!/bin/sh
# Author : Andrew Elsegood (CC-DA/ENG1-AU)
# Purpose: Take the base folder containing git-<name>.sh
#           and add them as aliases for global git
#          It will forcefully override all the existing elements

gitScriptDirectory=${PWD%/*}
aliasDirectory="/c/gitGood/Global"

echo -e "\n<----------------------------------------------->"
echo -e "Creating global aliases for all elements in:"
echo -e "  --> $gitScriptDirectory"
echo ">-----------------------------------------------<"

if [ ! -d $aliasDirectory ]
then
    mkdir $aliasDirectory
fi

resultFind=$(find $gitScriptDirectory -maxdepth 8 -name "*git-*")

for file in $resultFind
do
	aliasToAdd=`echo $file | awk -F"[-.]" '{print $2}'`
    newPath=$aliasDirectory/$(basename $file)
    cp $file $newPath 
    git config --global --replace-all "alias.$aliasToAdd" "!sh $newPath"
    echo "Created alias for $aliasToAdd"
done

echo "Finished creating global aliases"

echo -e "\n<------------------------->"
echo "  Creating common aliases"
echo ">-------------------------<"
./commonBasicAliases.sh
echo -e "\nFinished creating common aliases"

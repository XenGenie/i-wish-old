#!/bin/bash

echo "Please Choose a Suite: Carbon, Nitrogen, Oxygen, Copper, Quartz, Golden-Goose-Egg, Emerald"
read -p "Enter Suite to download : " answer
# (2) handle the input we were given
 
# array=(Hydrogen Carbon Nitrogen Oxygen Copper Quartz Golden-Goose-Egg Emerald)
array=(Hydrogen $answer)

echo "Array size: ${#array[*]}"

echo "Array items:"

cd ../

for item in ${array[*]}
do

    printf "Adding   %s\n" $item
    git rm x/$item -rf
    git submodule add https://github.com/XenGenie/$item x/$item 

    printf "Init Modules   %s\n" $item
    cd x/

    cd $item/

    git pull
    ./gitsub.sh
    cd ../../
done

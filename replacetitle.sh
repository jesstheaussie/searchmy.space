#!/bin/bash
for file in *; 
do
    if [[ -f $file ]]; 
    then
        newtitle=$(grep og:title $file|sed -e 's/<meta property="og:title" content="//' -e 's|" />||' $file);
        sed -i 's/Search-Results/\$newtitle/g'  "$file"
        echo $newtitle $file
    fi;
done
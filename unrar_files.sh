#!/bin/bash


files_zip=($(ls | grep -i ef))

i=1
for file in "${files_zip[@]}"
do
        echo Extracting $file, Please wait.
        echo "#######################################"
        mkdir extract_$i
        unrar e $file ./extract_$i/
        echo Extractin done.
        echo "#######################################"
        i=$((i+1))
done

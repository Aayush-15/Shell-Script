#! /usr/bin/bash
echo "------Shell Script to generate combinations of 3 numbers" 
echo "Enter First no: "    
read a
echo "Enter Second no: "
read b
echo "Enter Third no: "
read c
for x in $a $b $c
do
    for y in $a $b $c
    do
        for z in $a $b $c
        do
            echo $x $y $z                     
        done
    done
done       

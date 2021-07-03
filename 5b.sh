#Aayush Kansara(19BCE002)
#! /usr/bin/bash

if [ $# -lt 1 -o $# -gt 2 ]
then
        echo your argument should be in given format: [numberofline] filename
        exit
fi
 
if [ $# -eq 1 ]
then
        c=10
        file=$1
else
        c=$1
        file=$2
fi
 
exec < $file
#total->total number of lines in the file
total=$(cat $file | wc -l)

i=`expr $total - $c`
#i-> Total - Number of lines to print from back
j=0
#in this while loop moving file pointer to the ith line from last
while [ $j -ne $i ]
do
       read line
       j=`expr $j + 1`
done
#in this while loop iterating from ith line till end of file
while [ $j -ne $total ]
do
        read line
        echo $line
        j=`expr $j + 1`
done

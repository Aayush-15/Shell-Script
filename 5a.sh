#Aayush Kansara(19BCE002)
#! /usr/bin/bash
#passing Number of lines and file name as command line argument
#for making syntax similar to head command
if [ $# -lt 1 -o $# -gt 2 ]
then
		#if command line syntax is not proper
        echo invalid arguments
        echo use proper arguments :==> [numberofline] filename
        exit
fi
 
if [ $# -eq 1 ]
then
        count=10
        filename=$1
else
        count=$1
        filename=$2
fi
 
exec < $filename
i=1
while [ $i -le $count ]
do
read l
echo $l
i=`expr $i + 1`
 
done

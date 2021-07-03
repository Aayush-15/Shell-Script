#Aayush Kansara(19BCE002)
#! /usr/bin/bash
if [ $# -ge 1 ]
then
i=1
x=0
while [ $i -le $# ]
do
eval fil=\$$i
if [ -f $fil ]
then
cat $fil >> finalfile
i=`expr $i + 1`
else
echo "\n Error!$i file does not exist"
x=`expr $x + 1`
break
fi
done
if [ $x -eq 0 ]
then
cat finalfile
fi
else
echo ”Please enter filename to concatenate”
fi
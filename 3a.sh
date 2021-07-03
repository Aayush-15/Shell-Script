#! /usr/bin/bash
i='y'
while [ $i = 'y' ]
do
echo "enter the file 1 name :"
read f1
echo "enter the file 2 name :"
read f2
if  cmp $f1 $f2 
then
echo "both files have same data"
else
echo "both files have different data"
fi
echo "do you want to continue :"
read i
if [ $i != 'y' ]
then
exit
fi
done

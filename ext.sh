#! /usr/bin/bash
echo "Shell Script"
echo "1. Display all lines "
echo "2. Display first 5 lines"
echo "3. Display first n lines"
echo "Enter Your Choice: "   
read choice
echo "Enter your filename"
read filename
count=`wc -l $filename`                      
echo $count     
n=0
while  IFS= read -r line;     
do
if [ $n -le $count ]
then
echo $line
n=`expr $n + 1`               
else
break
fi      
done < $filename

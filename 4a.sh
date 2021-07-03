#! /usr/bin/bash
echo "Enter new line: "
read data
i=0
while [ "$data" != end ]
do
echo "$data" >> test.txt
i=$((i+1))
read data
done
echo $i" lines appended"

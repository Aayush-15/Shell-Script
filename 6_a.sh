#Aayush Kansara(19BCE002)
#! /usr/bin/bash
echo "Enter 1 if you want to print by Ending"
echo "Enter 2 if you want to print by Starting"
read c 
i=0
case $c in
'1')
read n
while [ $i -lt $n ]
do
	echo `expr 2 \* $i`
	i=`expr $i + 2`
done
;;

'2')
read end 
while [ $i -le $end ]
do
	echo $i
	i=`expr $i + 2`
done
;;
esac

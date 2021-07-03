#1.Display the current directory
#2.List Files
#3.Create Directory
#4.Delete Directory
#5.Change Directory
#6.Copy a file
#7.Rename a file
#8.Delete a file
#9.Edit a file
#10.Exit
#! /usr/bin/bash
while :
do
echo "----------------------"
echo "Enter 1 for display current dictionary"
echo "Enter 2 for list files"
echo "Enter 3 for create directory"
echo "Enter 4 for delete directory"
echo "Enter 5 for change directory"
echo "Enter 6 for copy file"
echo "Enter 7 for rename file"
echo "Enter 8 for delete file"
echo "Enter 9 for edit file"
echo "Enter 10 for exit"
read n
case $n in
'1')
echo "your Current Directory is "
pwd
;;
'2')
echo "list of Files and Directorys"

ls
;;
'3')
echo "enter the path where you want to make directory along with directory
name : "
read s
mkdir $s
;;
'4')
echo "enter the path along with the name of directory or file : "
read s
rm -r $s
;;
'5')
echo "enter the path where you want to go : "
read s
cd $s
;;
'6')
echo "enter the file name you want to copy :"
read s
echo "enter the destination with file name where you want to copy : "
read s1
cp $s $s1

;;
'7')
echo "file name you want to rename : "
read s
echo "enter the new name : "
read s1
mv $s $s1
;;
'8')
echo "enter the path along with filename which you want to delete : "
read s
rm -v $s
;;
'9')
echo "enter the path along with file name you want to edit : "
read s
vi $s
;;
'10')
echo "End Of Program"
break
esac
done
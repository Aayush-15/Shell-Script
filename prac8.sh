#! /usr/bin/bash
if [ ! -f dbms ]
then
touch dbms
fi
while [ 1 ]
do
echo "*****************************************************************"
echo " The database management system operations :  "
echo " 1.For inserting data into the file "
echo " 2.View all record of file "
echo " 3.For searching the data from the file "
echo " 4.For modifying the data into the file "
echo " 5.For Delete the record "
echo " 6.For Exit "
echo " Enter your choice : "
echo "*****************************************************************"
read choice

case $choice in
        #Entering Data into The file
        #checks if primary key is not repeated twice
        1)echo " Enter the data you want to enter in the file "
          echo " Enter the roll no "
          read rno
          echo " Enter the name "
          read name
          echo " Enter the branch "
          read branch
          similar=`grep -c "$rno" dbms`
           #-c, --count               print only a count of selected lines per FILE
          if [ $similar -eq 1 ]
          then
          echo " The entered roll no. violates the primary key constraint on roll no "
          else
          echo " $rno|$name|$branch " | cat >> dbms
          echo " The data has been added "
          fi
          ;;
          #printing Records Of the Database
        2)echo " The content of file is:"

          cat dbms

         ;;
         #searching by any word and it will display all info about that tuple
        3)echo " Enter the word you want to search from the file "

          read word
          #grep -c -i
          #-i, --ignore-case         ignore case distinctions in patterns and data
          #-c, --count               print only a count of selected lines per FILE
          search=` grep -c -i "$word" dbms `
          if [ $search -eq 0 ]
          then
          echo " no such roll no. exist in the file "
          else
          grep -i "$word" dbms
          fi
          ;;
          #modify the content
        4)echo " Enter The Roll No which wii be modified : "

          read rno

          search=` grep -c -i "$word" dbms `

          if [ $search -eq 0 ]

          then

          echo " no such roll no. exist in the file "
            # -v, --invert-match        select non-matching lines
           #it will select all those lines which are not to be deleted 
           #and copy all the content except matching lines and mv command will replace the new file with the previous one
           #and the modified content will be stored at the new location
          else

          grep -v "$rno" dbms > temp

          mv temp dbms

          echo " Enter the roll no "

          read rno

          echo " Enter the name "

          read name

          echo " Enter the branch "

          read branch

          similar=`grep -c "$rno" dbms`

          if [ $similar -eq 1 ]

          then

          echo " The entered roll no. violates the primary key constraint on roll no "

          else

          echo " $rno|$name|$branch " | cat >> dbms

          echo " The data has been modified "

          fi

          fi

          ;;

        5)echo " Enter The Roll No which wii be deleted : "

          read rno

          search=` grep -c -i "$word" dbms `

          if [ $search -eq 0 ]
          then
          echo " no such roll no. exist in the file "
          else
           # -v, --invert-match        select non-matching lines
           #it will select all those lines which are not to be deleted 
           #and copy all the content except matching lines and mv command will replace the new file with the previous one
          grep -v "$rno" dbms > temp

          mv temp dbms

          echo " The data has been deleted "

          fi

          ;;

        6)exit;

          ;;

        *)echo " Invalid entry"

          ;;

esac

 

done


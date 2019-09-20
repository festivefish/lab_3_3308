#!/bin/bash
# Author: Matthew Jonas
# Date: 9/20/19

#Problem 1 Code:
#Make sure to document how you are solving each problem!

#print output and get filename and regex
#echo "Enter a file name: "
#read filename1
#echo "Enter a regular expression: "
#read regex1

#use grep to search the given file with the regex
#grep $regex1 $filename1

#get sets of numbers 0-9 with the proper dashes for phone
echo "Number of phone numbers:"
egrep -c "^[0-9]{3}\-[0-9]{3}\-[0-9]{4}"  regex_practice.txt
#egrep "^[0-9]{3}\-[0-9]{3}\-[0-9]{4}" regex_practice.txt

#number of emails using @ char as delineator
echo "Number of email addresses:"
egrep -c "@" regex_practice.txt

#number of 303 phone numbers, same as phone but with static start
echo "Number of 303 phone numbers"
egrep -c "^303\-[0-9]{3}\-[0-9]{4}" regex_practice.txt

egrep "@geocities.com$" regex_practice.txt >> email_results.txt

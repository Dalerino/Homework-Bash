#!/bin/bash

function 1st_function() {
  useradd tim
  useradd brad
  useradd ann
 
  mkdir kaizen
  mkdir daler

  touch hello.txt  
  touch world.txt
}

function 2nd_function() {
  yum install -y wget httpd tree git
}


echo "Please pick a function name below: "
echo "1. Create user, folders, and files"
echo "2. Install packages"

read -p "Please enter the number of the function you would like to execute: " choice

if [ $choice -eq 1 ]
then
  echo "We have created users, folders, and files."

elif [ $choice -eq 2 ]
then
  echo "We have installed wget httpd tree, and git packages."

else
  echo "Invalid function name. Pick 1st_function or 2nd_function."
fi


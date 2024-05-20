#!/bin/bash

echo "Please input 2 numbers: "

read -p "Please input the 1st number here: " num1
read -p "Please input the 2nd number here: " num2

echo "The sum of $num1 + $num2 = $(($num1+$num2))"
echo "The difference of $num1 - $num2 = $(($num1-$num2))"
echo "The product of $num1 * $num2 = $(($num1*$num2))"
echo "The quotient of $num1 / $num2 = $(($num1/$num2))"


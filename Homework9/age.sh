#!/bin/bash

current_year=2024
future_year=2030

read -n 4 -p "Enter your year of birth: " year
echo

echo "In 2024, you are $(($current_year-$year)) years old."
echo "In 2020, you were $((2020-$year)) years old."
echo "In 2030, you will be $(($future_year-$year)) years old."

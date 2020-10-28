#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

read -p "Enter Number 1, Number 2, Number 3: " firstnum secondnum thirdnum
sum=$((firstnum + secondnum + thirdnum))
prduct=$((firstnum * secondnum * thirdnum))

cat <<EOF
$firstnum plus $secondnum plus $thirdnum is $sum
$firstnum mutiplied by $secondnum mutiplied by $thirdnum is $prduct

EOF

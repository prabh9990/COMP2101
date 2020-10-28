#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias

sides=6
bias=1

roll_dice1=$((RANDOM % sides + bias))
roll_dice2=$((RANDOM % sides + bias))

# Task 2:
#  generate the sum of the dice
#  generate the average of the dice

sum=$((roll_dice1+roll_dice2))

avg=$((sum/2))

#  display a summary of what was rolled, and what the results of your arithmetic were

echo "roll of die 1: $roll_dice1"
echo "roll of die 2: $roll_dice2"
echo "The sum is $sum"
echo "The average is $avg"

# Tell the user we have started processing
echo "Rolling..."
# roll the dice and save the results
die1=$(( RANDOM % 6 + 1))
die2=$(( RANDOM % 6 + 1 ))
# display the results
echo "Rolled $die1, $die2"

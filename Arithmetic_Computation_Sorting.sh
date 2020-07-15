#!/bin/bash -x

#Taking input
echo "Enter the value of a:"
read a
echo "Enter the value of b:"
read b
echo "Enter the value of c:"
read c

#compute a+b*c
op1=$(($a+$b*$c))

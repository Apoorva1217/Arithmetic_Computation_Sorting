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

#compute a*b+c
op2=$(($a*$b+$c))

#compute c+a/b
op3=$(($c+$a/$b))

#compute a%b+c
op4=$(($a%$b+$c))

#Store result in dictionary
declare -A dict
dict[1]=$op1
dict[2]=$op2
dict[3]=$op3
dict[4]=$op4

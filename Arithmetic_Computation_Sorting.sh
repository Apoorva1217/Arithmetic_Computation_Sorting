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

#Read the values from the Dictionary into the array
arr[0]=${dict[1]}
arr[1]=${dict[2]}
arr[2]=${dict[3]}
arr[3]=${dict[4]}

#sort the result in descending order
temp=0
for((i=0;i<4;i++))
do
        for((j=0;j<4-i-1;j++))
        do
                if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
                then
                        temp=${arr[j]}
                        arr[$j]=${arr[$((j+1))]}
                        arr[$((j+1))]=$temp
                fi
        done
done
echo "Descending order is:"

for((i=0;i<4;i++))
do
        echo  ${arr[i]}
done

#sort the result in ascending order
for((i=0;i<4;i++))
do
        for((j=0;j<4-i-1;j++))
        do
                if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
                then
                        temp=${arr[j]}
                        arr[$j]=${arr[$((j+1))]}
                        arr[$((j+1))]=$temp
                fi
        done
done
echo "Ascending order is:"

for((i=0;i<4;i++))
do
        echo ${arr[i]}
done

#!/bin/bash
variable='1,2,3,4,5,6,7,8,9,10,-'

while true {
do
rand=$(( ( RANDOM % 10 ) + 1 ))
isexists=$(echo $variable | grep "${rand}," | wc -l)
if [[ $isexists == "1" ]]
then
echo "randome variable is $rand"
variable=$( echo "$variable " | sed "s/${rand},//g" )
if [ $variable == "-" ]
then
break
fi
fi
done

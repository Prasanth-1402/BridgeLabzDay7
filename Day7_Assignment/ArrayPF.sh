#!/bin/bash
read -p "Enter a Number to find Prime Factors :" number


function PrimeFactorsOf(){
input=$1
declare -a ArrayofPF
for(( FirstCounter=2;$FirstCounter<=$(( input/2 ));FirstCounter++ ))
do
	count=0
	Factorvalue=$(( input%FirstCounter ))
	if [ $Factorvalue -eq 0 ]
	then
		for(( SecondCounter=2; SecondCounter<=$(( FirstCounter/2 ));SecondCounter++ ))
		do
  			PrimeFactorvalue=$(( FirstCounter%SecondCounter ))
  		 	if [ $PrimeFactorvalue -eq 0 ]
  		 	then
      		count=$(( count+1 ))
	   	 	fi
		done
		if [ $count -eq 0 ]
		then
	   	   ArrayofPF+=($FirstCounter)
		fi
	fi
done
echo Array = [ ${ArrayofPF[@]} ]
}
	
PrimeFactorsOf $number

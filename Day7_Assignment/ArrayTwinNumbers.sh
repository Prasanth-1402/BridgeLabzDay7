#!/bin/bash 
read -p "Enter the Start Point: " start
read -p "Enter the End Point : " end



function FindTwins(){
START=$1
END=$2
value=0
if [[ $START -le 100 && $END -le 101 ]]
then
	while (( $START <= $END ))
	do
		if [[ $(( $START % 11 )) == 0 ]] 
		then
			echo $START
		fi
		START=$((START+1))
	done
else
	while (( $START <= $END ))
	do
		value=$START
		digit=$(( value%10 ))
		value=$(( value/10 ))
		SecondDigit=$(( value% 10 ))
		if [[ digit -eq SecondDigit  ]]
		then
			echo $START
		else
			value=$(( value/10 ))
			InnerDigit=$(( value%10 ))
			if (( $InnerDigit==$SecondDigit ))
			then
				echo $START
			fi
		fi
		START=$((START+1))
	done
fi
}	


FindTwins $start $end

#!/bin/bash 
count=0
declare -a RandomValueArray
while(( count<10 ))
do 
	num=$(( 100+RANDOM%900 ))
	RandomValueArray[count]=$num
	count=$(( count+1 ))
done  
echo  THe Array at the Beginning is : [ ${RandomValueArray[*]} ]



function nonSortedSecondMax(){
	inputArray=($@)
	local large=0
	local secondLarge=1
	for(( counter=0;counter<10;counter++ ))
	do
		if [ ${inputArray[counter]} -ge $large ]
		then
			secondLarge=$large
			large=${inputArray[counter]}
		fi
		if [ ${inputArray[counter]} != $large ] 
		then
			if [  ${inputArray[counter]} -ge $secondLarge ]
			then
				secondLarge=${inputArray[counter]}
			fi
		fi
	done
	echo THE SECOND LARGEST VALUE IN THE ARRAY FROM NON SORTED ARRAY IS : $secondLarge
}





function nonSortedSecondMin(){
   inputArray=($@)
   local small=999
   local secondsmall=999
   for(( counter=0;counter<10;counter++ ))
   do
      if [ ${inputArray[counter]} -le $small ]
      then
         secondsmall=$small
         small=${inputArray[counter]}
      fi
      if [ ${inputArray[counter]} != $small ]
      then
         if [  ${inputArray[counter]} -le $secondsmall ]
         then
            secondsmall=${inputArray[counter]}
         fi
      fi
   done
   echo	AND THE SECOND SMALLER VALUE FROM NON SORTED ARRAY IS : $secondsmall
}




RandomValueSortedArray=$(echo ${RandomValueArray[@]} | awk 'BEGIN{RS=" ";} {print $1}' | sort)

echo THE SORTED ARRAY IS : ${RandomValueSortedArray[@]}


nonSortedSecondMax ${RandomValueArray[@]}
nonSortedSecondMin ${RandomValueArray[@]}


function SortedMin(){
	input=($@)
	echo THE SECOND SMALLEST VALUE FROM SORTED ARRAY IS : ${input[1]}
}

function SortedMax(){
	input=($@)
	echo THE SECOND LARGEST VALUE FROM SORTED ARRAY IS : ${input[8]}
}


SortedMax ${RandomValueSortedArray[@]}
SortedMin ${RandomValueSortedArray[@]}

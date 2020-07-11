#1/bin/bash 
read -p "Enter the Size of the Array : " ArraySize



function ArraySumof3IntZero(){
size=$1
declare -a Array
for (( counter=1;counter<=$size;counter++ ))
do
	read -p "Enter the Value for the index position $counter : " ArrayValue
	Array+=($ArrayValue)
done
echo THE INPUT ARRAY IS : [ ${Array[*]} ]


outerLimit=$(($size-2))
innerLimit=$(($size-1))


for (( counter1=0;	counter1<=$outerLimit;	counter1++ ));
do 
	for (( counter2=$(($counter1+1));	counter2<=$innerLimit;	counter2++ ));
	do
		for (( counter3=$(($counter2+1));	counter3<$size;	counter3++ ));
		do
			firstTwoValueSum=$(( ${Array[counter1]}+${Array[counter2]} ))
		
		
			if (( $(( $firstTwoValueSum+$((${Array[counter3]})) ))==0 ))
			then

					echo Sum of ${Array[counter1]} , ${Array[counter2]} ,  ${Array[counter3]}    gives 0
			fi
		done
	done
done
}


ArraySumof3IntZero $ArraySize

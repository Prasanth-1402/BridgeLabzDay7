#!/bin/bash -x
isPartTime=1
isFullTime=2
EmpRatePerHr=200
MaxWorkDays=25
WorkingDays=0

function getWorkingHours()
{
	case $1 in 
	$isFullTime)
		workingHrsPerDay=8
		;;
	$isPartTime)
		workingHrsPerDay=4
		;;
	*)
		workingHrsperDay=0
		;;
	esac
	echo $workingHrsPerDay
}

while(( $WorkingDays<$MaxWorkDays ))
do 
	wrkHr=$( $getWorkingHours $isFullTime)
	dailyPay=$(echo $( $wrkHr*$EmpRateHr ))
	payArray[WorkingDays++]=$dailyPay++	
done
echo $PayArray[*]

#!/bin/bash -x
isPartTime=1
isFullTime=2
EmpRatePerHr=200
WorkingDays=25

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
	esac
	echo $workingHrsPerDay
}

wrkHr="$( getWorkingHours $(( RANDOM%3 ))  )"
echo $wrkHr
pay=$(( $(( $(( wrkHr * EmpRatePerHr )) * WorkingDays )) ))
echo $pay

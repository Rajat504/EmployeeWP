#!/bin/sh
echo "WELCOME TO EMPLOYEE WAGE PROGRAM IN MASTER BRANCH"
#user_case 1
checkAttendance()
{
Attendance=$(($Random%2))
if
(($Attendance<1))
then
echo "Employee is Present"
else
echo "Employee is Absent"
fi
checkAttendance
#UserCase2
FullDayWages()
{
Wages_per_hour=20
FullDay_Working=8
TotalWagesPerDay=$(($Wages_per_hour*$FullDay_Working))
echo "TotalWagesPerDay=$TotalWagesPerDay"
}
FullDayWages
#UserCase 3
HalfDayWages(){
Wages_Per_Hour=20
Part_Time_Hour=4
TotalWagesPerDay=$(($Wages_Per_Hour*$Part_Time_Hour))
echo "Total_Wages_Per_Day=$TotalWagesPerDay"
}
HalfDayWages
#UserCase 4
echo "1. calculate FullDayWages"
echo "2. calculate HalfDayWages"
read cases
case $cases in
	1)
		FullDayWages
		;;
	2)
		HalfDayWages
		;;
	*)
		echo "Kindly enter a valid option"
		;;
esac


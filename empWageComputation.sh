
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


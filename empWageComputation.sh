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


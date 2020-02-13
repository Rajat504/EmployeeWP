checkAttendance()
{
attendance=$(($Random%2))
if(($Attendance<1))
then
return 1
else
return 0
fi
}
fullDayWage()
{
Wages_per_hour=20
FullDay_Working=8
TotalWagesPerDay=$(($Wages_per_hour*$FullDay_Working))
return $fullDayWage
HalfDayWages(){
Wages_Per_Hour=20
Part_Time_Hour=4
TotalWagesPerDay=$(($Wages_Per_Hour*$Part_Time_Hour))
return $halfDayWages
}
MonthlyWage
{
count=0
for((i=0;i<20;i++))
do
checkAttendance
r=$?
if(($r==1))
then
count=$((count+1))
fi
done
echo "employee is present $countdays"
echo -e "1.monthly wage of fulltime employee"
    	"2.monthly wage of parttime employee"
read cases
case $cases in
       1)
		fullDayWage
                fulltimeWage=$?
		echo"monthly wage fulltimewage employee=$(($fulltimewage*$count))"
     		;;
	2)
  		halfdayWage
		halftimeWage=$?
		echo"monthly wage Halftimewage employee=$(($halftimewage*$count))"
		;;
        *)
		echo"enter a valid option"
		;;
esac
return $count
}
MonthlyWage



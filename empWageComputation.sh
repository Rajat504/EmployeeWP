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
echo "TotalWagesPerDay=$TotalWagesPerDay"
}
FullDayWages
#UserCase 3
return $fullDayWage
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
return $halfDayWages
}
MonthlyWage
{
count=0
#UC7
checkAttendance(){
	Attendance=$(($RANDOM%2))
	if(($Attendance<1))
	then
		return 1
	else
		return 0
	fi
}
<<<<<<< HEAD

MonthlyWages()
{
UC6
for((i=0;i<20;i++))
do
checkAttendance
r=$?
if(($r==1))
=======
if((r==0))
 UC6
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
echo "Conditional monthly payment of 100hrs||20 days"
echo -e "1.FullDayWages\n2.HalfDayWages"
echo "enter one option"
read option
case $option in
                1)
  			checkAttendance 
			FullDayWages=$((8*$count))
		   	 if(($FullDayWages<100||$count<20))
			 then
			 	monthlywages=$(($FullDayWages*20))
			 else
			 	monthlywages=$((100*20))
			fi
				echo "Monthly payment of FullDayWage is Rs"$monthlywages
			 ;;
    		2)
			checkAttendance
			HalfDayWages=$((4*$count))
   			if(($HalfDayWages<100||$count<20))
			then
				monthlywages=$(($HalfDayWages*20))
			else
				monthlywages=$((100*20))
			fi
				echo "Monthly payment of HalfDayWages is Rs"$monthlywages
			;;
esac
}
MonthlyWages
=======
WorkingHour()
{
count=0
        for((i=0; i<20; i++))
	do
		checkAttendance
		res=$?
		if(($res==0))
			then
			count=$(($count+1))
		fi
	done
	echo "Total Working Hour Of an Employe"
	echo -e "1.Full Time employee \n2.Part Time Employee"
	echo "Enter a option"
	read  option
		if(($option==1))
			then
			TotalWorkHour=$((8*$count))
		elif(($option==2))
			then
			TotalWorkHour=$((4*$count))
		else
			echo "Enter a Valid option."
		fi
		return $TotalWorkHour
}
WorkingHour
echo "total working hour of an employee is $?"

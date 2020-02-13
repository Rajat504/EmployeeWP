#UC6
checkAttendance(){
	Attendance=$(($RANDOM%2))
	if(($Attendance<1))
	then
		return 1
	else
		return 0
	fi
}

MonthlyWages()
{
for((i=0;i<20;i++))
do
checkAttendance
r=$?
if((r==0))
then
count=$((count+1))
fi
done
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

#UC9
checkAttendance()
        {
	Attendance=$(($RANDOM%2))
	if(($Attendance<1))
	then
		return 1
	else
		return 0
	fi
        }

DailyAndMonthlyTotalWages()
{
	echo "Daily, Monthly and Total Wages Of an Employee In a Month"
	echo -e "1.Full Time Employee \n2.Part Time Employee"
	echo "Enter an Option"
	read option
	case $option in
	1)
		i=0
		while((i<20))
		do
			checkAttendance
			res=$?
			if(($res==0))
			then
				wages=160
				array[$i]=$wages
			else
				array[$i]=0
			fi
			i=$((i+1))
		done
		;;
	2)
		i=0
		while((i<20))
		do
			checkAttendance
			res=$?
			if(($res==0))
			then
				wages=80
				array[$i]=$wages
			else
				array[$i]=0
			fi
			i=$((i+1))
		done
		;;
	        esac
		echo "Daily Wages: "
		for((i=0; i<20; i++))
		do
			if(($((array[i]))==0 ))
			then
				echo -n "Day $((i+1)) :  Absent "
			else
				echo -n "Day $((i+1)) :  Present "
			fi
			echo $((array[$i])) ""
			sum=$(($sum+array[$i]))

		done
			echo
			echo "Sum of Total Wages is Rs" $sum
}
DailyAndMonthlyTotalWages

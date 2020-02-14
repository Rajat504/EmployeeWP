#UC8
checkAttendance(){
	Attendance=$(($RANDOM%2))
	if(($Attendance<1))
	then
		return 1
	else
		return 0
	fi
}
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

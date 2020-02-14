#UC8
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

DailyWages()
{
echo "daily and total wages of an employee in a month"
echo -e "1.FullTimeEmployee\n2.HalfTimeEmployee"
echo "enter an option"
read option
case $option in
			1)i=0
			  while((i<20))
       			  do
			  	checkAttendance
			  		r=$?
		          		if(($r==0))
			  		then
			  			Wages=160
						array[$i]=$Wages
			  		else
			  			array[$i]=0
			  		fi
                          		i=$((i+1))
			  done
			  ;;
			2)i=0
			  while((i<20))
			  do
		          	checkAttendance
			  	r=$?
		          	if(($r==0))
			  	then
			  		Wages=80
					array[$i]=$Wages
			        else
			                array[$i]=0
                                fi
			        i=$(($i+1))
			done
			;;
			esac
			for((i=0;i<20;i++))
			do
			echo -n $((array[$i])) ""
			sum=$(($sum+array[$i]))
			done
			echo
			echo "sum of total wages is Rs"$sum
}
DailyWages

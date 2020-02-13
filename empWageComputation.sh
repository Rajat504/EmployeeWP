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

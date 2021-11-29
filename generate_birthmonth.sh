function getMonth () {
case $1 in
0)
echo "Jan";
;;
1)
 echo "Feb";
;;
2)
echo "Mar";
;;
3)
echo "Apr";
;;
4)
 echo "May";
;;
5)
echo "Jun";
 ;;
 6)
 echo "Jul";
 ;;
 7)
 echo "Aug";
 ;;
8)
 echo "Sep";
 ;;
 9)
echo "Oct";
 ;;
 10)
 echo "Nov";
 ;;
11)
 echo "Dec";
 ;;
 esac
 }
declare -a birthday;
declare -a years;
for (( i=0; i<50; i++ ))
 do
year=$((RANDOM%2));
month=$((RANDOM%12));
birthday[$i]=$month;
 if [ $year -eq 1 ]
 then
 years[$i]=92;
else
 years[$i]=93;
fi
done

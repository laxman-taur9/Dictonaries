#1) Write a program in the following steps
#a. Roll a die and find the number between 1 to 6
 #b. Repeat the Die roll and find the result each time
 #c. Store the result in a dictionary
 #d. Repeat till any one of the number has reached 10 times
 #e. Find the number that reached maximum times and the one that was for minimum times
#!/bin/bash
#Constants
IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HOUR=150
TOTAL_WORKING_DAYS=5
MAX_HOURS_IN_MONTH=50
#Variables
totalEmpHrs=0
totalWorkingDays=0
totalSalary=0
dailyWage=0
declare -A empWageDict
function getWorkingHours() {
 empCheck=$((RANDOM%3))
 case $empCheck in
 $IS_FULL_TIME) workingHrs=8 ;;
 $IS_PART_TIME) workingHrs=4 ;;
 *) workingHrs=0
 esac
}
while [[ $totalEmpHrs -lt $MAX_HOURS_IN_MONTH
 && $totalWorkingDays -lt $TOTAL_WORKING_DAYS ]]
do
 ((totalWorkingDays++))
 getWorkingHours
dailyWage=$((workingHrs*EMP_RATE_PER_HOUR))
empWageDict[$totalWorkingDays]=$dailyWage
 totalEmpHrs=$((totalEmpHrs+workingHrs))
done
totalSalary=$((totalEmpHrs*EMP_RATE_PER_HOUR))
empWageDict[totalSalary]=$totalSalary
for key in ${!empWageDict[@]}
do
 echo $key " : " ${empWageDict[$key]}
done
#echo "Total Working Days: " $totalWorkingDays
#echo "Total Working Hours: " $totalEmpHrs
#echo "Monthly Salary is: " ${empWageDict[totalSalary]}

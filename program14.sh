echo "Enter a year:"
read y

if [ $((y%4)) -eq 0 ] && [ $((y%100)) -ne 0 ] || [ $((y%400)) -eq 0 ]
then
echo "Leap year"
else
echo "Not a leap year"
fi

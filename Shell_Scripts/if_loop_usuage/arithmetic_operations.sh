echo "Please select any one of the number to perform arithmetic operations:"
read var
if [ $var == 1 ];
then
 echo please enter the 1st digit:
 read x
 echo please enter the 2nd digit:
 read y
 echo The addition of given numbers are:`expr $x + $y`
elif [ $var == 2 ];
then
 echo please enter the 1st digit:
 read x
 echo please enter the 2nd digit:
 read y
 echo The Subtraction of given numbers are:`expr $x - $y`
elif [ $var == 3 ];
then
 echo please enter the 1st digit:
 read x
 echo please enter the 2nd digit:
 read y
 echo The Multiplication of given numbers are:`expr $x \* $y`
elif [ $var == 4 ];
then
 echo please enter the 1st digit:
 read x
 echo please enter the 2nd digit:
 read y
 echo The Subtraction of given numbers are:`expr $x / $y`
elif [ $var == 5 ];
then
 echo please enter the 1st digit:
 read x
 echo please enter the 2nd digit:
 read y
 echo The Division of given numbers are:`expr $x % $y`
else
 echo "The entered number is not a valid arithmetic operation"
fi



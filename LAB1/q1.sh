if [ $# = 0 ]
then
	echo 'Enter First Number: '	
	read var1
	echo 'Ecter Second Number: '
	read var2
else 
	var1=$1
	var2=$2
fi

echo 'Addition: ' `expr $var1 + $var2`
echo 'Subtraction: ' `expr $var1 - $var2`
echo 'Multiplication: ' `expr $var1 \* $var2`
if [ $var2 -ne 0 ]
then
	echo 'Division: ' `expr $var1 / $var2`
	echo 'MOD: ' `expr $var1 % $var2`

else
	echo 'Division by zero not possible'
fi

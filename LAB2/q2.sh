if [ $# = 1 ]
then
	x=`pidof $1`
	echo "Pid: "$x
	if [ $? != 0 ]
	then
		echo “$1 is not running”
		exit 2
	fi 
	echo `cat /proc/$x/status | grep "PPid"`
	echo `cat /proc/$x/status | grep "Name"`
	echo `cat /proc/$x/status | grep "State"`
else 
	echo 'Invalid number of arguments'
fi

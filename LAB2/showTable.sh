
if [ $# = 0 ]
then
	echo 'No arguments Passed'
elif [ $# = 1 ]
then
	x=`expr $1 + 1 2> /dev/null`
	if [ $? != 0 ]
	then
		echo “$1 is not numeric”
		exit 2
	fi	
	tblno=$1
	range=10
	for ctr in `seq 1 10`
	do
	echo "$tblno x $ctr = `expr $tblno \* $ctr`"
	done	
	
elif [ $# = 3 ]
then
	x=`expr $1 + 1 2> /dev/null`
	if [ $? != 0 ]
	then
		echo “$1 is not numeric”
		exit 2
	fi	
	x=`expr $3 + 1 2> /dev/null`
	if [ $? != 0 ]
	then
		echo “$3 is not numeric”
		exit 2
	fi	
	if [ $2 = '-s' ]
	then
		tblno=$1
		range=10
		start=$3
	elif [ $2 = '-e' ]
	then
		tblno=$1
		range=$3
		start=1	
	fi	
		for ctr in `seq $start $range`
		do
		echo "$tblno x $ctr = `expr $tblno \* $ctr`"
		done	
	
elif [ $# = 5 -o $# = 6 ]
then
	if [ $3 -gt $5 ]
 	then 
		echo 'Starting and ending limits are not valid'
		exit 2
	fi
	x=`expr $1 + 1 2> /dev/null`
	if [ $? != 0 ]
	then
		echo “$1 is not numeric”
		exit 2
	fi
	x=`expr $3 + 1 2> /dev/null`
	if [ $? != 0 ]
	then
		echo “$3 is not numeric”
		exit 2
	fi
	x=`expr $5 + 1 2> /dev/null`
	if [ $? != 0 ]
	then
		echo “$5 is not numeric”
		exit 2
	fi
	
	if [ $6 = '-r' -a ]
	then
		tblno=$1
		start=$5
		end=$3
		while [ $start -gt $end ]
		do
			echo "$tblno x $start = `expr $tblno \* $start`"
			start=`expr $start - 1`			
		done
		exit 2							
	fi
	if [ $2 = '-s' -a $4 = '-e' ]
	then
		tblno=$1
		range=$5
		start=$3
		for ctr in `seq $start $range`
		do
		echo "$tblno x $ctr = `expr $tblno \* $ctr`"
		done

				
			
	else 
		echo 'Out of range numbers'	
	fi

else
	echo 'Invalid number of arguments passed'
fi

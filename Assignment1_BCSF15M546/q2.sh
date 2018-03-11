if [ $# = 1 ]
then

	if [ -s $1 ]
	then
		count=`wc -l $1`
		`touch evenfile`
		`touch oddfile`
		line=1
		for lo in `more -1 $1`
		do
			i=`expr $line % 2`
			if [ $i -eq 0 ]
			then
				echo $lo 1>>evenfile
				
			else
				echo $lo 1>>oddfile
			fi
			line=`expr $line + 1`
		done	
	else
		echo "File empty or doesnt exist" 
	fi
else 
	echo "No arguments provided"
fi

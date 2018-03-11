if [ $# = 1 ]
then

	if [ -s $1 ]
	then
		`awk '!a[$0]++' $1 | tee $1 1>/dev/null`
	else
		echo "File empty or doesnt exist" 
	fi
else 
	echo "No arguments provided"
fi

showAllOwners()
{
	check=$1
	fileinfo=`ls -o | grep -w "$check"`
	if [ $? != 0 ]
	then
		echo “$1 has no files or folders”
		exit 2
	fi
	
	count=`ls -o | grep -w "$check" | wc -l`
	inf=($fileinfo)
	n=7
	o=2
	t=0
	while [ $count -gt 0 ]
	do
		typ=(${inf[t]})
		echo ${typ[0]}
		if [ ${typ[0]} = 'd' ]
		then		
			ft='Directory'
		else 
			ft='File'
		fi
		echo -e "Name: " ${inf[n]} "\v\r" "FileType: " $ft  "| " "Owner: " ${inf[o]} "\v\v"  
		
		count=`expr $count - 1`
		n=`expr $n + 8`
		o=`expr $o + 8`
		t=`expr $t + 8`
					
	done
	
	
}

#main script starts here
if [ $# = 1 ]
then

	showAllOwners $1
else 
	echo "Invalid Number of arguments"
fi

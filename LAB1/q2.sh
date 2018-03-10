if [ $1 = '-c' ]
then 	
	if [ $# = 5 ]
	then
		f1=$2
		o1=$3
		f2=$4
		o2=$5
		fi1=`ls -l $f1`
		inf1=($fi1)
		echo 'OWNER:' ${inf1[2]}
		echo 'GROUP: '${inf1[3]}
		echo 'PERMISSION: '${inf1[0]}
		echo 'FILENAME: '${inf1[8]}

		fi2=`ls -l $f2`
		inf2=($fi2)
		echo 'OWNER:' ${inf2[2]}
		echo 'GROUP: '${inf2[3]}
		echo 'PERMISSION: '${inf2[0]}
		echo 'FILENAME: '${inf2[8]}
		
		if [ ${inf1[2]} != ${inf2[2]} ]
		then
			diff $f1 $f2
			fil1=`cat $f1`
			fil2=`cat $f2`
			if [ $fil1 -ne $fil2 ]
			then	echo "Cheating:0"
			else	echo "Cheating:1"
			fi
		else 
			echo 'Cheating:1'
		fi
fi
elif [ $# = 2 ]
	then
		filename=$1
		user=$2
		fileinfo=`ls -l $filename`
		inf=($fileinfo)
		echo 'OWNER:' ${inf[2]}
		echo 'GROUP: '${inf[3]}
		echo 'PERMISSION: '${inf[0]}
		echo 'FILENAME: '${inf[8]}
		if [ ${inf[2]} = $user ]		
		then 
			echo "CHEATING : 0"
		else
			echo "CHEATING : 1"
		fi
	else
		echo 'Invalid number of arguemts'
	
	fi

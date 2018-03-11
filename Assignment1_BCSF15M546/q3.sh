Is_lower()
{
	a=$1
	echo "${a,,}"
	
}

Is_root()
{
	if [ `id -u` = 0 ]
	then
		echo "Root user"
	else 
		echo "Non root"
	fi
}

Is_user_exists()
{
	com=`id -u $1 1>/dev/null 2>&1`
	if [ $? -gt 0 ]
	then
		echo "$1 doesnt exists"
	else 
		echo "$1 exists"
	fi
}

#main script starts here
Is_lower ANSAB
Is_root
Is_user_exists temp
Is_user_exists ansa

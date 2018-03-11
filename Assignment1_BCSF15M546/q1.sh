echo `mkdir open`
for file in `ls`
do
if [[ "$file" =~ "." ]]
then
	ext=${file#*.}
	if [ -d $ext ]
	then
		echo `mv $file ./$ext`
	else
		echo `mkdir ./$ext`
		echo `mv $file ./$ext`
	fi
else
	if [ -f $file ]
	then
		echo `mv $file ./open`
	fi
fi
done

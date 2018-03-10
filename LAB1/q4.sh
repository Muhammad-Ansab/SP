var1=`cat file1`
ARR=($var1)
echo ${ARR[*]}
echo ${#ARR[*]}
echo ${#ARR[2]}

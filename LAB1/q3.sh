UNIX=("Debian" "Red hat" "Ubuntu" "Suse" "Fedora")
echo 'UNIX: ' ${UNIX[@]}
echo ${#UNIX[@]}
echo ${#UNIX[2]}
echo ${UNIX[@]:3:2}
UNIX=(${UNIX[@]/'Ubuntu'/'SCO Unix'})
echo 'UNIX: ' ${UNIX[@]}
UNIX=(${UNIX[@]} "AIX" "HP-UX" )
echo 'UNIX: ' ${UNIX[@]}
unset UNIX[2]
echo 'UNIX: ' ${UNIX[@]}
LINUX=(${UNIX[@]})
echo 'LINUX: ' ${LINUX[@]}
BASH=(${UNIX[@]} ${UNIX[@]} )
echo 'BASH: ' ${BASH[@]}
unset UNIX[@]
unset LINUX[@]
echo 'UNIX: ' ${UNIX[@]}
echo 'LINUX: ' ${LINUX[@]}

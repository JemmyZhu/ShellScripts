#!/bin/sh

yes_or_no() {
	echo "Is your name $* ?"
	while true 
	do 
		echo -n "Enter yes or no: "
		read x
		case "$x" in
			[Yy][Ee][Ss] | [Yy] ) 	return 0;;
			[Nn][Oo] | [Nn] ) 		return 1;;
			* )						echo "Answer yes or no"
		esac
	done
}


# Main part
echo "Original parameters are $*"
if yes_or_no "$1"
	then echo "Hi $1, nice name"
else echo "Never mind"
fi 

exit 0

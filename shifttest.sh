#!/bin/sh

# calling notice: run together with more than 10 parameters
# test for parameters and shift cmd
show_ten_param() {
	index=0
	while :
	do 
	index=`expr $index + 1`
	# printf "%d" $index
	if [ $index -gt 10 ] || [ $index -gt $# ]; then
	break 1
	fi
	eval temp='$'$index
	echo the $index parameter ":" $temp
	done
	return 0
}

show_ten_param $*
echo =====================

if [ $# -gt 10 ]; then
shift `expr $# - 10`
show_ten_param $*
fi

exit 0

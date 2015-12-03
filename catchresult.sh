#!/bin/sh

# test for catch func result
say_sth() {
	echo "hha"
}

# result=$(say_sth) will also works
results=`say_sth`
echo "results are $results"

# test for func return int result
say_num() {
	echo a num
# when no parameter is set for return cmd, it uses the last cmd's state for default
	return #100
}
say_num
echo $?

exit 0

#!/bin/sh
remove_smallest_1(){
	echo "${1%$2*}"
}
remove_smallest_1 deleted d
word="`echo \"${2}\" | sed -e\"s|=.*$||\" -e\"s|^.*opt ||\"`"
remove_smallest_2(){
	echo "${1%"$2"*}"
}
remove_smallest_2 deleted d
echo "broke"

#!/bin/bash
# A script to iterate a number.



i=0
echo $i
#i=$((i+1))
echo $i 

repeater() {
	echo "Y/N"
	read answer

	if [ "$answer"  = "Y" ];

	then
		i=$((i+1))
		echo $i
	else
		echo "False"
	
fi
repeater
}

repeater

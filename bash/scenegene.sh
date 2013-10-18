#!/bin/bash
# This is a script to make scenes.

scene()
{
	file=$1
	while read line
	do
		echo "$line"
	
	read -p "Press [ENTER] to continue"
	done < $file
}

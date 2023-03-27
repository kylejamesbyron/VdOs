#!/bin/bash

#A script to copy an iso to a drive.

echo "What image do you want to use?"

read image

echo "$image"

echo "Where would you like it to go?"

read location

echo "$location"

echo "Ready to dd $image to $location.  (Y/n)?"

read response

if [[ $response = Y ]]; then
	echo "sudo dd if=$image of=$location bs=4M status=progress"
	sudo dd if= ~/Downloads/linuxmint-19.2-cinnamon-32bit.iso of=/dev/sdc bs=4M status=progress



fi

echo "DONE"
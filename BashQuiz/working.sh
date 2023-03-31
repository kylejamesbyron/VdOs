#!/bin/bash

# A program for administering the CompTIA A+ quiz

#function for the quiz

quiz() {
	#starting
	# Randomly pick question.

	questionNumber=$(shuf -i1-10 -n1)

	clear

	echo "Question $questionNumber"

	#sourcing file.
	source CTIAquestions/$questionNumber

	echo "\"$question"\"

	echo "-$Aanswer"
	echo "-$Banswer"
	echo "-$Canswer"
	echo "-$Danswer"

	echo "ANSWER: "
	read answer

	if [ "$answer" = "$correct" ];
	then
		echo "Correct!";
	else
		echo "Incorrect!"

	fi
	#Call quiz back.
	quiz

}

#First calling of quiz
quiz

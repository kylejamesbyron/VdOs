#!/bin/bash

# A program for administering the CompTIA A+ quiz

# Functions for the database

DATABASE_FILE=studyRecords.csv
 
function db_clear() {
  rm -f "$DATABASE_FILE"
}
 
function db_set() {
  echo "$1,$2,$3" >> "$DATABASE_FILE"
}
 
function db_get() {
  grep "^$1," "$DATABASE_FILE" | sed -e "s/^$1,//" | tail -n 1
}
 
function db_remove() {
  db_set $1 ""
}

# Date
dateFormat=$(date +%F)

#function for the quiz

quiz() {
	#starting
	# Randomly pick question.

	questionNumber=$(shuf -i1-10 -n1)

	clear
	echo "Correct:  $points"
	echo "Out of:  $total"
	echo "QUESTION $questionNumber"

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
# Iterate Points
		points=$((points+1))
		total=$((total+1))
	else
		echo "Incorrect!"
		total=$((total+1))
	fi
	
	echo "NEXT for next Question."
	echo "EXIT to exit"
	read end
	if [ "$end" = "NEXT" ];
	then
	#Call quiz back.
		quiz
	elif [[ "$end" = "EXIT" ]]; then
			db_set $dateFormat $points $total
	fi
}

#setup points and totals
point=0
total=0

#First calling of quiz
quiz

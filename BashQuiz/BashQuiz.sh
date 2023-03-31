#!/bin/bash

# A program for administering the CompTIA A+ quiz

# Functions for the database

DATABASE_FILE=$lastName.$firstName.csv
 
function db_clear() {
  rm -f "$DATABASE_FILE"
}
 
function db_set() {
  echo "$1,$2" >> "$DATABASE_FILE"
}
 
function db_get() {
  grep "^$1," "$DATABASE_FILE" | sed -e "s/^$1,//" | tail -n 1
}
 
function db_remove() {
  db_set $1 ""
}

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

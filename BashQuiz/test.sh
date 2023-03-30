#!/bin/bash

# A program for administering the CompTIA A+ quiz

#starting
## I would like to add a function for making random here.

#deciding what number ro stsrt with.
echo "What question would you like to start with?"
read questionNumber

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



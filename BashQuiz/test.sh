#!/bin/bash
# Testing
echo "What question would you like to start with?"
read questionNumber

echo "Question $questionNumber"

source CTIAquestions/$questionNumber

echo $question

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



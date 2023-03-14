#!/bin/bash
# This is a script to make scenes.

echo "Test test test"
MyVar="Mark Isom"
echo "$MyVar"

mkdir test

cd test

touch test.csv

echo "This is a test." > test.csv

echo "Who am I talking too"
read MyName

echo $MyName > test.csv

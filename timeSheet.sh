#!/bin/bash
# A script to generate a simple timesheet.

# Login

echo "Please enter the last four of your social security:"
read lastFour
touch $lastFour.csv

# Functions:

# Database setup:

DATABASE_FILE=$lastFour.csv
 
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

# TESTING

db_set name mark isom

echo $(db_get name)
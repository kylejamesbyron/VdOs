#!/bin/bash
# TOML Question Formatter


#Define filename and directory
echo "Question Number? "
read questionNumber

qdir=CTIAquestions/$questionNumber

#Ask to input questions
echo "Question:"
read question
echo "Answer:"
read correct
echo "A:"
read Aanswer
echo "B:"
read Banswer
echo "C:"
read Canswer
echo "D:"
read Danswer

#write to file
echo "" >> $qdir
echo "question=$question" >> $qdir
echo "correct=$correct" >> $qdir
echo "Aanswer=$Aanswer" >> $qdir
echo "Banswer=$Banswer" >> $qdir
echo "Canswer=$Canswer" >> $qdir
echo "Danswer=$Danswer" >> $qdir



# Example of file
#question="A technician needs to run a diagnostic DVD on a laptop running Windows 8.1. After setting the boot order in the UEFI BIOS to the internal DVD-RW drive, the laptop still boots into Windows. Which of the following settings needs to be adjusted in order for the laptop to boot from the DVD RW drive?" 
#correct="Secure boot"
#Aanswer="Secure boot"
#Banswer="TPM"
#Canswer="Virtualization"
#Danswer="UEFI BIOS password"

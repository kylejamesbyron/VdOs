#!/bin/bash

echo "Question:"
read Question
echo "Answer:"
read A
echo "Alternate 1:"
read B
echo "Alternate 2:"
read C
echo "Alternate 3:"
read D

Q="$Question"


echo "[[questions]]" >> test.toml
echo question = "$Q" >> test.toml
echo "answer = $A" >> test.toml
echo "alternatives = [ "$B", "$C", "$D",]" >> test.toml

# Example
# [[questions]]
# question = "A technician needs to run a diagnostic DVD on a laptop running Windows 8.1. After setting the boot order in the UEFI BIOS to the internal DVD-RW drive, the laptop still boots into Windows. Which of the following settings needs to be adjusted in order for the laptop to boot from the DVD RW drive?" 
# answer = "Secure boot"
# alternatives = ["TPM", "Virtualization", "UEFI BIOS password",]

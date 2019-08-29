#!/usr/bin/env bash
# File: guessinggame.sh
# 08-22-2019 Joseph BLas Created this.

function answer {
	echo "Guess how many files in current directory"
	read guess
}

typeset -i num=0
file_counter=$(ls -1 | wc -l)

while [[ $guess -ne $file_counter ]]
 	do
	 num=num+1
		if [[ -z $guess ]]; then
				answer
		elif [[ $guess -lt $file_counter ]]; then
				echo "Higher..."
				answer
		elif [[ $guess -gt $file_counter ]]; then
				echo "Lower..."
				answer
	fi
done
echo "Correct!" 
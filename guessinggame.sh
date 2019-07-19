#!/usr/bin/env bash
totalFile=$(ls -l | egrep ^- | wc -l)
echo $totalFile
guess=10000
echo "How many Files are in the current directory"
function GuessTheNumber() {
	read guess
        if [[ $guess -gt $totalFile ]]
        then
                echo -e "$guess Higher than actual number \n Try to Guess again"
        elif [[ $guess -lt $totalFile ]]
        then
                echo -e  "$guess Lower than actual number \n Try to Guess again"
        else
                echo "Congratulation,you got the right answer"
        fi
}
while [[ $guess -ne $totalFile ]]
do
        GuessTheNumber
done


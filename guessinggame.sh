#!/bin/bash
clear

echo "---------------------------------------------------"
echo "GUESS THE NUMBER OF FILES IN THIS REPOSITORY :)"
echo "---------------------------------------------------"
#Files Count 
files=$(ls | wc -l)

#Function to fetch the guessed value
function ask {
echo "Enter your guess:"
read guess
}


#Function for application Logic
function guessnum {

	
	while [[ "$guess" -ne "$files" ]]
	do
 		if [[ "$files" -gt "$guess" ]]
		then 
			echo -e "The number you guessed is low\n"
			ask

		else
			echo -e "The number you guessed is high\n"
			ask
		fi
	done 
	
}

ask

if [[ "$guess" -eq "$files" ]]
then
	echo "You guessed it right on your first try! Awesome!!"
else
	guessnum
echo -e "Congrats, you guessed it right!\n"
fi

echo -e "Thanks for playing!\n\n" 

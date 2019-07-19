readme:
	touch README.md
	echo "## Guessing game" > README.md
	echo "- Date:" >> README.md
	date '+%D %X' >> README.md
	echo "- Number of line" >> README.md
	wc -l guessinggame.sh | egrep -o '[0-9][0-9]' >> README.md
	

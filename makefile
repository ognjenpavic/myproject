README.md:
	
	touch README.md
	printf "This is guessinggame project.\n  " > README.md
	printf "I created this file on: " >> README.md
	date >> README.md
	printf "This script has this number of lines: " >> README.md
	wc -l guessinggame.sh | cut -d' ' -f1 >> README.md

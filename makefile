README.md: guessinggame.sh
	#guessingFileNumber
	echo "The date and time at which make was run:" date >> README.md
	echo "This journal contains the following number of entries:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

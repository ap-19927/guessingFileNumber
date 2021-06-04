README.md: guessinggame.sh
	echo "Project title: guessingFileNumber" > README.md
	echo " " >> README.md
	echo "The date and time at which make was run:" date >> README.md
	echo " " >>README.md
	echo "The number of lines of code contained in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

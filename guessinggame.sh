#!/usr/bin/env bash
# File: guessinggame.sh

num_lin=$(ls -A | wc -l) #stores number of lines in current directory, ls -A lists each file on a separate line, piped to wc -l, which counts the number of lines.

echo "Please enter the number of files in the current directory: "
read response
echo "You entered $response."

while [[ $response -ne $num_lin ]]
do
    if [[ $response -gt $num_lin ]]
    then
        echo "Your answer is greater than the number of files in the current directory."
        echo ""
        echo "Please enter the number of files in the current directory: "
        read response
        echo "You entered $response."
    fi
    if [[ $response -lt $num_lin ]]
    then
        echo "Your answer is less than the number of files in the current directory."
        echo ""
        echo "Please enter the number of files in the current directory: "
        read response
        echo "You entered $response."
    fi
done
echo ""
echo "Congratulations. The number of files in the current directory is $response."

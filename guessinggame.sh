#!/usr/bin/env bash
# File: guessinggame.sh

function no_files {
    local num_lin=$(ls -A | wc -l) #stores number of lines in current directory, ls -A lists each file on a separate line, piped to wc -l, which counts the number of lines.
    echo $num_lin
}


files=$(no_files)

echo "Please enter the number of files in the current directory: "
read response
echo "You entered $response."

while [[ $response -ne $files ]]
do
    if [[ $response -gt $files ]]
    then
        echo "Your answer is greater than the number of files in the current directory."
        echo ""
        echo "Please enter the number of files in the current directory: "
        read response
        echo "You entered $response."
    fi
    if [[ $response -lt $files ]]
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

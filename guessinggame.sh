#!/usr/bin/env bash
#File: guessingame.sh

numfiles=0

function guess()
{
    FILE_CNT=`ls | wc -l`
    read -p "How many files are in the current directory > " INPUT
    if [ -z $INPUT ]
    then
        return
    fi

    if [ $INPUT -eq $FILE_CNT ]
    then
        echo "Congratulations,your answer is correct. "
        numfiles=1
    elif [ $INPUT -lt $FILE_CNT ]
    then
        echo "Your answer is too low. "
    else
        echo "Your answer is too high. "
    fi
}

while [ $numfiles -ne 1 ]
do
    guess
done


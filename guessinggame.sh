#!/usr/bin/bash

is_guessed=0
number_of_files=$(ls -p | grep -v / | wc -l)

function step {
  echo "Put a number: "
  read response
  if [[ $response -gt $number_of_files ]] 
  then
    echo "Your value is too much. Try again"
  elif [[ $response -lt $number_of_files ]]
  then
    echo "Your vaalue is too low. Try again"
  elif [[ $response -eq $number_of_files ]]
  then
    is_guessed=1
    echo "You're right! Congratulations!"
  else
    echo "You promted wrong value"
  fi
}

echo "Hello! This is a guessing game. You should guess how many files the current directory contains."

while [[ $is_guessed -eq 0 ]]
do
  step
done

#!/bin/bash

echo "Enter the word"
read word

# Remove any leading or trailing whitespace from the input
word=$(echo "$word" | xargs)

length=${#word}
reversed=""
i=$((length - 1))  # Get the last index

while [ $i -ge 0 ]
do
    reversed="${reversed}${word:$i:1}"  # Append each character from the end
    i=$((i - 1))  # Decrement the index
done

# Compare the original word with the reversed string
if [ "$word" == "$reversed" ]; then
    echo "The word '$word' is a palindrome."
else
    echo "The word '$word' is not a palindrome."
fi


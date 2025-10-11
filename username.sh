#!/bin/bash
# username.sh — validate each line of a file containing usernames.

echo "Please enter a username that contains: only lower case letters, digits, and underscore characters. It should start with a lowercase letter and be longer than three characters but no more than twelve."


while read -r USERNAME; do
  if echo "$USERNAME" | grep -Eq "^[a-z][a-z0-9_]{2,11}$"; then
    echo "$USERNAME → Valid Username. Thank you!"
    exit
  else
    echo "$USERNAME → Invalid Username. Please input again."
  fi
done
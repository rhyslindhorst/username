# README for Username Validation Script

## Author Information
- **Name:** Rhys Lindhorst
- **Course:** CPSC 298 Computer Science Colloquium
- **Assignment:** Username Validation
- **Date:** 10/11/2025

## Program Description
This script give the peramiters a username should follow before asking the username to input their own. The script then takes the inputed username from the user and tests and compares that input to the peramiters. The script then prints whether the given username is valid, meaning it passes the peramiters, or the given username is invalid, meaning it did not pass the peramiters.
## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)
## Usage
To run the script interactively:
```bash
./username.sh
```

To test with the provided input file:
```bash
./username.sh < username-input
```
## How the Script Works
The script uses a while loop to continuously ask the user to input a username until valid. The script uses the grep command to test if the given username matches the regular expression given by peramiters. I used -E for extended regular expressions and -q to match the pattern instead of redirecting output to /dev/null.
## Regular Expression Pattern
The validation uses the following regular expression pattern:
```
^[a-z][a-z0-9_]{2,11}$
```
This pattern ensures that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The total length is between 3 and 12 characters
## Testing Results
To test this script I used two valid usernames: rhyslind12, and sub12way_. I additionally used two invalid usernames: rl, and 12345sixseven. I redirected the standard input to the username-input file and ran the code with the exit commented out for testing.
## Challenges and Solutions
[Optional: Describe any challenges you encountered while creating this script and how you solved them. This could include debugging issues, understanding regular expressions, or Git workflow problems.]
## Resources
For this task, I had help from my father, ChatGPT.
## License
This project is part of coursework for Chapman University and is intended for educational purposes.

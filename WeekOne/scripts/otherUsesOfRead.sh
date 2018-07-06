#!/bin/bash

# The -p flag is used to set a prompt for the user's input
read -p "Username: " USERNAME

# The -s flag is used to take the input silently. Run this program to see this concept
read -sp "Password: " PASSWORD

echo "The provided username: $USERNAME"
echo "The provided password: $PASSWORD"

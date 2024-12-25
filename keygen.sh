#!/bin/bash

# Prompt the user for a key name
read -p "Enter a name for the computer for which we will create a key: " computer 

# Use the provided name to generate the SSH key
ssh-keygen -t rsa -b 4096 -C "$computer" 

# Confirm the key was created
if [[ $? -eq 0 ]]; then
    echo "SSH key '$key_name' has been created successfully."
else
    echo "Failed to create SSH key."
fi


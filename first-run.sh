#!/bin/bash

# Load environment variables from .env
source ".env"

# Validate the environment variables
if [[ -z "$PROXY_USER" || -z "$PROXY_PASS" || -z "$PROXY_URL" ]]; then
    echo "Error: Missing proxy configuration in .env file."
    exit 1
fi

# Define the file path for .netrc
NETRC_FILE="$HOME/.netrc"

# Check if the .netrc file exists, if not, create it
if [ ! -f "$NETRC_FILE" ]; then
    touch "$NETRC_FILE"
    echo "Created .netrc file"
fi

# Set the correct permissions for the .netrc file
chmod 600 "$NETRC_FILE"
echo "Set permissions for .netrc file"

# Add the proxy details to the .netrc file if not already present
if ! grep -q "machine $PROXY_URL" "$NETRC_FILE"; then
    echo "machine $PROXY_URL" >> "$NETRC_FILE"
    echo "login $PROXY_USER" >> "$NETRC_FILE"
    echo "password $PROXY_PASS" >> "$NETRC_FILE"
    echo "Added proxy details to .netrc file"
else
    echo "Proxy details already present in .netrc file"
fi

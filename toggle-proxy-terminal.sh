#!/bin/bash

# Load environment variables from .env
source ".env"

# Validate the environment variables
if [[ -z "$PROXY_USER" || -z "$PROXY_PASS" || -z "$PROXY_URL" || -z "$PROXY_PORT" ]]; then
    echo "Error: Missing proxy configuration in .env file."
    exit 1
fi

# Define .bashrc and proxy marker
BASHRC="$HOME/.bashrc"
PROXY_MARKER="# Proxy configuration"

# Define proxy strings using the values from .env
PROXY_STRING="export http_proxy=\"http://$PROXY_USER:$PROXY_PASS@$PROXY_URL:$PROXY_PORT\""
PROXY_STRING_HTTPS="export https_proxy=\"http://$PROXY_USER:$PROXY_PASS@$PROXY_URL:$PROXY_PORT\""
PROXY_STRING_FTP="export ftp_proxy=\"http://$PROXY_USER:$PROXY_PASS@$PROXY_URL:$PROXY_PORT\""
PROXY_STRING_SOCKS="export socks_proxy=\"socks5://$PROXY_USER:$PROXY_PASS@$PROXY_URL:$PROXY_PORT\""
PROXY_STRING_NO="export no_proxy=\"localhost,127.0.0.1,::1\""

# Function to enable the proxy
enable_proxy() {
    echo "Enabling proxy..."

    # Remove existing proxy lines if any
    sed -i '/# Proxy configuration/,+6d' "$BASHRC"

    # Append proxy config
    {
        echo "$PROXY_MARKER"
        echo "$PROXY_STRING"
        echo "$PROXY_STRING_HTTPS"
        echo "$PROXY_STRING_FTP"
        echo "$PROXY_STRING_SOCKS"
        echo "$PROXY_STRING_NO"
    } >> "$BASHRC"

    source "$BASHRC"
    echo "✅ Proxy enabled."
}

# Function to disable the proxy
disable_proxy() {
    echo "Disabling proxy..."

    # Remove the proxy block
    sed -i '/# Proxy configuration/,+6d' "$BASHRC"

    source "$BASHRC"
    echo "❎ Proxy disabled."
}

# Function to toggle the proxy based on its current state
toggle_proxy() {
    if grep -q "$PROXY_MARKER" "$BASHRC"; then
        disable_proxy
    else
        enable_proxy
    fi
}

# Main logic: toggle proxy if not specified
toggle_proxy

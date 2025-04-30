#!/bin/bash

# Make sure all scripts are executable
chmod +x toggle_proxy.sh
chmod +x toggle-proxy-terminal.sh
chmod +x first-run.sh

# Run toggle_proxy.sh
echo "Running toggle_proxy.sh..."
./toggle_proxy.sh

# Check if toggle_proxy.sh ran successfully
if [ $? -eq 0 ]; then
    echo "toggle_proxy.sh ran successfully."
else
    echo "toggle_proxy.sh failed."
    exit 1
fi

# Run toggle-proxy.-terminal.sh
echo "Running toggle-proxy.-terminal.sh..."
./toggle-proxy-terminal.sh

# Check if toggle-proxy.-terminal.sh ran successfully
if [ $? -eq 0 ]; then
    echo "toggle-proxy-terminal.sh ran successfully."
else
    echo "toggle-proxy-terminal.sh failed."
    exit 1
fi

# Run first-run.sh
echo "Running first-run.sh..."
./first-run.sh

# Check if first-run.sh ran successfully
if [ $? -eq 0 ]; then
    echo "first-run.sh ran successfully."
else
    echo "first-run.sh failed."
    exit 1
fi

echo "All scripts ran successfully."

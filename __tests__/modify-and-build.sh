#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Copy the __tests__/nodesampleapp to nodeapp
cp -r __tests__/nodesampleapp nodeapp

# Navigate to the nodeapp directory
cd nodeapp

ls

# Modify the app (example: replace a placeholder in a config file)
current_utc_time=$(date -u +"%Y-%m-%d %H:%M:%S %Z")
sed -i "s/<<<node-place-holder>>>/$current_utc_time/g" server.js

# Build the app (example: using npm for a Node.js app)
npm install
npm run build --if-present

echo "Modification and build completed successfully."
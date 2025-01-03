#!/bin/bash

# Navigate to the script's directory
cd "$(dirname "$0")"/..
echo "Cleanup started."
# Find and remove node_modules directories, dist directories.
find . -type d -name "node_modules" -exec rm -rf {} + \
    -o -type d -name "dist" -exec rm -rf {} +

# Remove core cache
rm -rf ./packages/core/cache

echo "Cleanup completed."
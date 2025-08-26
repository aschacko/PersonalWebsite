#!/bin/bash

# Exit if no commit message is provided
if [ -z "$1" ]; then
  echo "❌ Please provide a commit message."
  echo "Usage: ./deploy.sh \"Your commit message\""
  exit 1
fi

# Stage all changes
git add .

# Commit with the given message
git commit -m "$1"

# Push to GitHub
git push origin main --force

# Wait briefly for GitHub Pages to catch up
sleep 2



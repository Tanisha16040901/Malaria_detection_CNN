#!/bin/bash
cd "/Users/tanishaharlalka/ml_research/Malaria_detection_CNN" || exit 1

echo "Clearing any stale git lock..."
rm -f .git/index.lock

echo "Staging changes..."
git add -A

echo "Committing..."
git commit -m "Remove leftover test file"

echo "Pushing to GitHub..."
git push

echo ""
echo "Done. Press Enter to close this window."
read

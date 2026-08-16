#!/bin/bash
cd "/Users/tanishaharlalka/ml_research/Malaria_detection_CNN" || exit 1

echo "Clearing any stale git lock..."
rm -f .git/index.lock

echo "Staging README.md..."
git add README.md

echo "Committing..."
git commit -m "Update README with final results"

echo "Pushing to GitHub..."
git push

echo ""
echo "Done. Press Enter to close this window."
read

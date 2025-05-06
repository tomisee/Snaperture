#!/usr/bin/env fish

if test (count $argv) -eq 0
    echo "X Commit message required."
    echo "Usage: ./deploy.fish \"Your commit message\""
    exit 1
end

echo "📂 Staging changes..."
git add -A

echo "📝 Committing with message: $argv"
git commit -m "$argv"

echo "🚀 Pushing to GitHub..."
git push

echo "✅ Done."

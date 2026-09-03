#!/bin/bash
set -e

# Path definitions
STAGING_DIR="../HGST-staging"
POSTS_DIR="./content/posts"

echo "1. Clearing old exported posts (preserving _index.md)..."
find "$POSTS_DIR" -maxdepth 1 -name '*.md' ! -name '_index.md' -delete

echo "2. Converting Obsidian syntax to standard Markdown..."
obsidian-export "$STAGING_DIR" "$POSTS_DIR"

echo "3. Staging changes in Git..."
git add .

echo "4. Committing and pushing to GitHub..."
read -p "Enter commit message: " msg
git commit -m "${msg:-Publishing update}"
git push origin main

echo "Done! GitHub Actions is building your live site."
#!/bin/bash
set -e

echo "Installing dependencies..."
npm ci

echo "Building project for Netlify..."
npm run build

echo "Build complete! Files in dist:"
ls -la dist/

echo "Checking if assets were generated..."
if [ ! -d "dist/assets" ]; then
  echo "ERROR: No assets directory found!"
  exit 1
fi

echo "✅ Build successful!"

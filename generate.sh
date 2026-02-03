#!/bin/bash

# Dashboard Generator
# Usage: ./generate.sh <course-name>

if [ -z "$1" ]; then
  echo "Usage: ./generate.sh <course-name>"
  echo "Example: ./generate.sh hist-101"
  exit 1
fi

COURSE_NAME=$1
TARGET_DIR="$HOME/workspaces/$COURSE_NAME-dashboard"
TEMPLATE_DIR="$(dirname "$0")"

if [ -d "$TARGET_DIR" ]; then
  echo "Error: Directory $TARGET_DIR already exists"
  exit 1
fi

echo "Creating dashboard for: $COURSE_NAME"
echo "Location: $TARGET_DIR"

# Create directory structure
mkdir -p "$TARGET_DIR"/{prep,photos,print}

# Copy template files
cp "$TEMPLATE_DIR/index.html" "$TARGET_DIR/"
cp "$TEMPLATE_DIR/config.json" "$TARGET_DIR/"

# Initialize git
cd "$TARGET_DIR"
git init
git add .
git commit -m "Initial dashboard from template"

echo ""
echo "Dashboard created at: $TARGET_DIR"
echo ""
echo "Next steps:"
echo "  1. cd $TARGET_DIR"
echo "  2. Edit config.json with your course details"
echo "  3. Add student photos to photos/"
echo "  4. Create prep/execsummary-N.json files"
echo "  5. gh repo create $COURSE_NAME-dashboard --public --source=. --push"
echo ""

#!/bin/bash
# Install HeroUI Pro skill to the local agent skills directory
# Usage: ./install.sh [skills_dir]

SKILLS_DIR="${1:-$HOME/.agents/skills}"
SKILL_NAME="design-promax"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing $SKILL_NAME to $SKILLS_DIR/$SKILL_NAME..."

# Create skills dir if it doesn't exist
mkdir -p "$SKILLS_DIR"

# Remove existing if present
if [ -d "$SKILLS_DIR/$SKILL_NAME" ]; then
  echo "Removing existing installation..."
  rm -rf "$SKILLS_DIR/$SKILL_NAME"
fi

# Copy skill
cp -r "$SCRIPT_DIR" "$SKILLS_DIR/$SKILL_NAME"

# Remove .git if copied
rm -rf "$SKILLS_DIR/$SKILL_NAME/.git"

echo "✅ $SKILL_NAME installed to $SKILLS_DIR/$SKILL_NAME"
echo ""
echo "The skill will now be available to your coding agent."
echo "Try asking: 'Build me a pricing page with HeroUI'"
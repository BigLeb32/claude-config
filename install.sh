#!/bin/bash
# Install Claude Code plugins
# Run this after cloning the repo into ~/.claude

set -e

CLAUDE_DIR="$HOME/.claude"

echo "Installing Claude Code plugins..."

# Ensure we're in ~/.claude
if [ "$(pwd)" != "$CLAUDE_DIR" ]; then
    cd "$CLAUDE_DIR"
fi

# Create plugins directory
mkdir -p "$CLAUDE_DIR/plugins"

# Install third-party plugins
MARKETPLACE_PATH="$CLAUDE_DIR/plugins/claude-skills-marketplace"
if [ ! -d "$MARKETPLACE_PATH" ]; then
    echo "Installing claude-skills-marketplace..."
    git clone https://github.com/mhattingpete/claude-skills-marketplace.git "$MARKETPLACE_PATH"
    echo "✓ claude-skills-marketplace installed"
else
    echo "✓ claude-skills-marketplace already installed"
fi

echo ""
echo "Done! Restart Claude Code to apply changes."

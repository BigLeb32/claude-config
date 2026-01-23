# Install Claude Code plugins (Windows)
# Run this after cloning the repo into ~/.claude

$ErrorActionPreference = "Stop"

$ClaudeDir = "$env:USERPROFILE\.claude"

Write-Host "Installing Claude Code plugins..."

# Ensure we're in ~/.claude
Set-Location $ClaudeDir

# Create plugins directory
New-Item -ItemType Directory -Force -Path "$ClaudeDir\plugins" | Out-Null

# Install third-party plugins
$MarketplacePath = "$ClaudeDir\plugins\claude-skills-marketplace"
if (-not (Test-Path $MarketplacePath)) {
    Write-Host "Installing claude-skills-marketplace..."
    git clone https://github.com/mhattingpete/claude-skills-marketplace.git $MarketplacePath
    Write-Host "[OK] claude-skills-marketplace installed" -ForegroundColor Green
} else {
    Write-Host "[OK] claude-skills-marketplace already installed" -ForegroundColor Green
}

Write-Host ""
Write-Host "Done! Restart Claude Code to apply changes." -ForegroundColor Cyan

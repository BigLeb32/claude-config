# Claude Code Settings

Cross-platform Claude Code configuration (Linux, macOS, Windows).

## Quick Start

### New machine
```bash
git clone git@github.com:BigLeb32/claude-config.git ~/.claude
cd ~/.claude && ./install.sh  # or install.ps1 on Windows
```

### Sync changes
```bash
cd ~/.claude
git add -A && git commit -m "update" && git push
```

## What's included

- **settings.json** — plugins + permissions + settings
- **skills/** — custom skills (/interview, etc.)
- **install scripts** — clone third-party plugins

## Security

The `.gitignore` uses a whitelist approach — only explicitly allowed files are tracked.
Credentials, history, cache, and other sensitive data are never committed.

# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

This repository syncs Claude Code settings across Linux, macOS, and Windows machines.
The `~/.claude` directory IS the git repository.

## Structure

- `settings.json` — plugins, permissions, global settings
- `skills/` — custom skills (SKILL.md files)
- `install.sh` / `install.ps1` — installs third-party plugins

## Important

- **No absolute paths** — use `~/.claude/` or `name@source` format for plugins
- **No credentials** — never commit tokens, keys, or secrets
- **No OS-specific settings** — avoid bash commands in statusLine, etc.
- **Whitelist .gitignore** — only tracked files are committed, everything else is ignored

## Third-Party Plugins

Third-party plugins (like claude-skills-marketplace) cannot be referenced universally.
They must be cloned locally via `install.sh` or `install.ps1`.

## Workflow

### First install on a new machine
```bash
# Clone directly into ~/.claude
git clone git@github.com:BigLeb32/claude-config.git ~/.claude
cd ~/.claude && ./install.sh
```

### Sync changes
```bash
cd ~/.claude
git add -A && git commit -m "update" && git push
```

### Pull updates on another machine
```bash
cd ~/.claude && git pull
```

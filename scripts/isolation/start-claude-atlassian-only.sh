#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MCP_CFG="$ROOT_DIR/claude-mcp-atlassian-only.json"

# Starts Claude Code with strict MCP config so ONLY mcp-atlassian is loaded.
exec claude --strict-mcp-config --mcp-config "$MCP_CFG" "$@"

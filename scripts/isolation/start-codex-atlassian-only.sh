#!/usr/bin/env bash
set -euo pipefail

# Starts Codex with ONLY mcp-atlassian configured for this session.
exec codex \
  -c 'mcp_servers={"mcp-atlassian"={command="bash",args=["-lc","mkdir -p /Volumes/Data/_ai/mcp-data/mcp-atlassian && cd /Volumes/Data/_ai/mcp-data/mcp-atlassian && set -a && [ -f .env ] && source .env && set +a && exec /Volumes/Data/_ai/mcp-working-cache/mcp-venv-cache/mcp-atlassian/bin/mcp-atlassian"],startup_timeout_sec=120}}' \
  "$@"
